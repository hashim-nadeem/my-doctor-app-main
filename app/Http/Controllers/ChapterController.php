<?php

namespace App\Http\Controllers;

use App\Http\Requests\ChapterRequest;
use App\Models\Classroom;
use App\Models\Chapter;
use App\Models\Subject;
use Illuminate\Http\Request;
use DataTables;

class ChapterController extends Controller
{   

    public $classSubjects;

    // public function __construct()
    // {

    //     $this->classSubjects = Subject::classRoomSubjects()->get();

    // }

    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Chapter::with('subject')->get();

            return Datatables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('chapter.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('chapter.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this chapter?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'Chapter';
        $pageTitle = 'Chapter';
        $activeMenu = 'chapter';
        return view('chapter.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create Chapter';
        $pageTitle = 'Create Chapter';
        $activeMenu = 'create_chapter';

        $subjects = Subject::get();

        return view('chapter.create', compact('activeMenu','pageHead','pageTitle','subjects'));

    }

    public function store(ChapterRequest $request)
    {
        
        // Validate the incoming request data
        $validatedData = $request->validated();

        // Check if a session with the same name already exists
        $existingSession = Chapter::where('name', $validatedData['name'])->first();

        if ($existingSession) {
            // If a session with the same name already exists, return with error message
            return redirect()->back()->with('error', 'A chapter with the same name already exists.');
        }

        // Create a new session instance
        $chapter = new Chapter();
        $chapter->name = $validatedData['name'];
        $chapter->save();

        // Attach campuses to the session
        $chapter->subjects()->attach($validatedData['subject_id']);

        return redirect()->route('chapter.index')->with('success', 'Chapter created successfully.');

    }

    
    public function edit(Chapter $chapter)
    {

        $pageHead = 'Edit Chapter';
        $pageTitle = 'Edit Chapter';
        $activeMenu = 'chapter';

        $subjects = Subject::get();

        return view('chapter.edit', compact('activeMenu','pageHead','pageTitle','chapter','subjects'));

    }

    public function update(ChapterRequest $request, Chapter $chapter)
    {
        
         // Validate the incoming request data
         $validatedData = $request->validated();

         // Update session name
         $chapter->name = $validatedData['name'];
         $chapter->save();
 
         // Sync campuses for the session
         $chapter->subjects()->sync($validatedData['subject_id']);

        return redirect()->route('chapter.index')->with('success', 'Chapter updated successfully.');
        
    }

    public function show(Chapter $chapter)
    {

        abort(404);

    }

    public function destroy(Chapter $chapter)
    {

        $chapter->delete();

        return redirect()->route('chapter.index')->with('success', 'Chapter deleted successfully.');
       
    }


}

