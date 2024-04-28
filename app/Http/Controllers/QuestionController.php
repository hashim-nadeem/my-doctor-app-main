<?php

namespace App\Http\Controllers;

use App\Exports\QuestionsExport;
use App\Http\Requests\QuestionRequest;
use App\Imports\QuestionsImport;
use App\Models\Chapter;
use App\Models\Classroom;
use App\Models\Question;
use App\Models\Subject;
use App\Models\SubjectQuestion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\Facades\DataTables;
class QuestionController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = SubjectQuestion::with('classroom','subject','chapter')->get();

            return DataTables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('questions.show',$row->id) .'" class="btn btn-sm btn-warning btn-circle" data-toggle="tooltip" data-placement="bottom" title="View Details">
                                <i class="fa fa-eye"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('questions.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this record?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'Tests';
        $pageTitle = 'Tests';
        $activeMenu = 'question';

        return view('question.index', compact('activeMenu','pageHead','pageTitle'));


    }

    /**
     * Summary of downloadImportFormatFile
     * @return \Symfony\Component\HttpFoundation\BinaryFileResponse
     */
    public function downloadImportFormatFile()
    {

        return Excel::download(new QuestionsExport, 'mcqs_import_format.xlsx');
        
    }

    /**
     * Summary of import
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function import()
    {

        $pageHead = 'Import Test';
        $pageTitle = 'Import Test';
        $activeMenu = 'import_question';

        $oldClassRoomId = session()->getOldInput('classroom_id');
        $oldSubjectId = session()->getOldInput('subject_id');

        $classRooms = Classroom::get();
        $subjects = $oldClassRoomId != '' ? Subject::where('classroom_id',$oldClassRoomId)->orWhere('classroom_id',null)->get() : Subject::where('classroom_id',null)->get();
        $chapters = $oldSubjectId != '' ? Chapter::where('subject_id',$oldSubjectId)->get() : [];

        return view('question.import', compact('activeMenu','pageHead','pageTitle','classRooms','subjects','chapters'));

    }

    /**
     * Summary of store
     * @param \App\Http\Requests\QuestionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(QuestionRequest $request)
    {
         
        $isClassroom = $request->is_classroom;
        $classroomId = $request->classroom_id;
        $subjectId = $request->subject_id;
        $isChapterId = $request->is_chapter;
        $chapterId = $request->chapter_id;

        $subjectQuestion = SubjectQuestion::with('questions')->where('subject_id',$subjectId)
        ->when($isClassroom , function ($query) use ($classroomId){
            
            $query->where('classroom_id',$classroomId);
            
        })
        ->when($isChapterId , function ($query) use ($chapterId){
            
            $query->where('chapter_id',$chapterId);

        })
        ->first();

        $subjectQuestionArr = [
                
            'classroom_id' => $isClassroom != '' ? $classroomId : NULL,
            'subject_id' => $subjectId,
            'chapter_id' => $isChapterId != '' ? $chapterId : NULL,
            
        ];
        
        if(!$subjectQuestion)
        {

            
            $subjectQuestion = SubjectQuestion::create($subjectQuestionArr);
            
        }
        else
        {
            // delete old questions keys
            $subjectQuestion->questions->each(function ($question) {
                $question->questionKeys()->delete();
            });
            
            // delete old questions
            $subjectQuestion->questions()->delete();

        }

        // passing object to question import

        $import = new QuestionsImport($subjectQuestion);

        // import data

        Excel::import($import, $request->file('file'));

        $totalQuestions = Question::where('subject_question_id',$subjectQuestion->id)->count();

        if($totalQuestions === 0)
        {

            // delete subject question row when no question import / empty file

            $subjectQuestion->delete();

            // to store request in session and use it like validation old()->method

            $request->flash();
            
            return back()->with('error', 'Question import file should not be empty.');

        }
        else
        {
            

            return redirect()->route('questions.index')->with('success', 'Question imported successfully.');

        }

    }

    /**
     * Summary of show
     * @param \App\Models\Question $province
     * @return never
     */
    public function show($subjectQuestionId)
    {
        
        $subjectQuestion = SubjectQuestion::where('id',$subjectQuestionId)->with('classroom','subject','chapter','questions.questionKeys')->first();
                
        $pageHead = 'Test Details';
        $pageTitle = 'Test Details';
        $activeMenu = 'question';

        return view('question.show',compact('pageHead','pageTitle','activeMenu','subjectQuestion'));

    }

    /**
     * Summary of destroy
     * @param \App\Models\SubjectQuestion $subjectQuestion
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($subjectQuestionId)
    {

        $subjectQuestion = SubjectQuestion::find($subjectQuestionId);

        $subjectQuestion->delete();

        return redirect()->route('questions.index')->with('success', 'Question deleted successfully.');
        
    }

    public function getSubjects(Request $request)
    {

        $classroomId = $request->classroomId;
        
        $html = '<option value="">select</option>';

        if($classroomId)
        {

            $subjects = Subject::where('classroom_id',$classroomId)
            ->orWhere('classroom_id',null)
            ->get();
            
            if($subjects)
            {

                foreach($subjects as $subject)
                {
                    
                    $html .= '<option value="'. $subject->id .'" data-classRoom="'. $subject->classroom_id .'">'. $subject->name .'</option>';
                    
                }

            }
            else
            {
                
                $html .= '<option value="">No subject found</option>';

            }

            
        }
        
        $output = [
            'data' => $html
        ];

        return response()->json($output,200);

    }

    public function getChapters(Request $request)
    {

        $subjectId = $request->subjectId;

        $output['isChapter'] = false;
        $html = '';

        if($subjectId)
        {
    
            $subject = Subject::where('id',$subjectId)->first();
            

            if($subject->classroom_id != '')
            {
                
                $output['isChapter'] = true;
                
                $chapters = Chapter::where('subject_id',$subjectId)->get();

                $html = '<option value="">select</option>';
                if($chapters)
                {
        
                    foreach($chapters as $chapter)
                    {
                        
                        $html .= '<option value="'. $chapter->id .'">'. $chapter->name .'</option>';
                        
                    }
        
                }
                else
                {
                    
                    $html .= '<option value="">No chapter found</option>';
        
                }
                
            }
            
        }

        $output['data'] = $html;
        
        return response()->json($output,200);

    }


}

