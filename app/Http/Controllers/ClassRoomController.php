<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClassRoomRequest;
use App\Models\Session;
use App\Models\Classroom;
use Illuminate\Http\Request;
use DataTables;
class ClassRoomController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Classroom::with('session')->get();

            return Datatables::of($data)

                    ->addIndexColumn()

                    ->addColumn('action', function($row){

                        
                        $btn = '';

                        $btn .= '<span class="action-icons">';
                        
                            $btn .= '<a href="'. route('classroom.edit',$row->id) .'" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                            $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('classroom.destroy',$row->id) .'" 
                            data-msg="Are you sure you want to delete this classroom?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';
                        
                        
                        $btn .='</span>';
      

                        return $btn;

                    })

                    ->rawColumns(['action'])
                    ->make(true);

        }

        $pageHead = 'Class';
        $pageTitle = 'Class';
        $activeMenu = 'classroom';
        return view('classroom.index', compact('activeMenu','pageHead','pageTitle'));


    }

    public function create()
    {

        $pageHead = 'Create Class';
        $pageTitle = 'Create Class';
        $activeMenu = 'create_classroom';

        $sessions = Session::get();

        return view('classroom.create', compact('activeMenu','pageHead','pageTitle','sessions'));

    }

    public function store(ClassRoomRequest $request)
    {

         // Validate the incoming request data
         $validatedData = $request->validated();

         // Check if a session with the same name already exists
         $existingSession = Classroom::where('name', $validatedData['name'])->first();
 
         if ($existingSession) {
             // If a session with the same name already exists, return with error message
             return redirect()->back()->with('error', 'A class with the same name already exists.');
         }
 
         // Create a new session instance
         $classroom = new Classroom();
         $classroom->name = $validatedData['name'];
         $classroom->save();
 
         // Attach campuses to the session
         $classroom->sessions()->attach($validatedData['session_id']);
 
         // Redirect with success message
         return redirect()->route('classroom.index')->with('success', 'Class created successfully.');

    }

    
    public function edit(Classroom $classroom)
    {

        $pageHead = 'Edit Class';
        $pageTitle = 'Edit Class';
        $activeMenu = 'classroom';

        $sessions = Session::get();

        return view('classroom.edit', compact('activeMenu','pageHead','pageTitle','classroom','sessions'));

    }

    public function update(ClassRoomRequest $request, Classroom $classroom)
    {
        
        // Validate the incoming request data
        $validatedData = $request->validated();

        // Update session name
        $classroom->name = $validatedData['name'];
        $classroom->save();

        // Sync campuses for the session
        $classroom->sessions()->sync($validatedData['session_id']);

        return redirect()->route('classroom.index')->with('success', 'Classroom updated successfully.');
    }

    public function show(Classroom $classroom)
    {

        abort(404);

    }

    public function destroy(Classroom $classroom)
    {

        $classroom->delete();

        return redirect()->route('classroom.index')->with('success', 'Classroom deleted successfully.');
       
    }


}

