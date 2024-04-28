<?php

namespace App\Http\Controllers;

use App\Http\Requests\SubjectRequest;
use App\Models\Classroom;
use App\Models\Subject;
use Illuminate\Http\Request;
use DataTables;
class SubjectController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Subject::with('subjectClassroom')->get();

            return Datatables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('subject.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('subject.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this subject?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'Subject';
        $pageTitle = 'Subject';
        $activeMenu = 'subject';
        return view('subject.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create Subject';
        $pageTitle = 'Create Subject';
        $activeMenu = 'create_subject';

        $classrooms = Classroom::get();

        return view('subject.create', compact('activeMenu','pageHead','pageTitle','classrooms'));

    }

    public function store(SubjectRequest $request)
    {
        
         // Validate the incoming request data
         $validatedData = $request->validated();

         // Check if a session with the same name already exists
         $existingSession = Subject::where('name', $validatedData['name'])->first();
 
         if ($existingSession) {
             // If a session with the same name already exists, return with error message
             return redirect()->back()->with('error', 'A subject with the same name already exists.');
         }
 
         // Create a new session instance
         $subject = new Subject();
         $subject->name = $validatedData['name'];
         $subject->save();
 
         // Attach campuses to the session
         $subject->classrooms()->attach($validatedData['classroom_id']);
 
         // Redirect with success message
         return redirect()->route('subject.index')->with('success', 'Subject created successfully.');

    }

    
    public function edit(Subject $subject)
    {

        $pageHead = 'Edit Subject';
        $pageTitle = 'Edit Subject';
        $activeMenu = 'subject';

        $classrooms = Classroom::get();

        return view('subject.edit', compact('activeMenu','pageHead','pageTitle','subject','classrooms'));

    }

    public function update(SubjectRequest $request, Subject $subject)
    {
        
         // Validate the incoming request data
         $validatedData = $request->validated();

         // Update session name
         $subject->name = $validatedData['name'];
         $subject->save();
 
         // Sync campuses for the session
         $subject->classrooms()->sync($validatedData['classroom_id']);

        return redirect()->route('subject.index')->with('success', 'Subject updated successfully.');
        
    }

    public function show(Subject $subject)
    {

        abort(404);

    }

    public function destroy(Subject $subject)
    {

        $subject->delete();

        return redirect()->route('subject.index')->with('success', 'Subject deleted successfully.');
       
    }


}

