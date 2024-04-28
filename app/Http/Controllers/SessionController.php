<?php

namespace App\Http\Controllers;

use App\Http\Requests\SessionRequest;
use App\Models\Campus;
use App\Models\Result;
use App\Models\Session;
use App\Models\SubmitResult;
use DataTables;
use Illuminate\Http\Request;

class SessionController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {

            $data = Session::with('campuses')->get();
            return Datatables::of($data)

                ->addIndexColumn()

                ->addColumn('action', function ($row) {


                    $btn = '';

                    $btn .= '<span class="action-icons">';

                    $btn .= '<a href="' . route('session.edit', $row->id) . '" class="btn btn-sm btn-primary btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>';

                    $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="' . route('session.destroy', $row->id) . '" 
                            data-msg="Are you sure you want to delete this session?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>';


                    $btn .= '</span>';


                    return $btn;
                })

                ->rawColumns(['action'])
                ->make(true);
        }

        $pageHead = 'Session';
        $pageTitle = 'Session';
        $activeMenu = 'session';
        return view('session.index', compact('activeMenu', 'pageHead', 'pageTitle'));
    }

    public function create()
    {

        $pageHead = 'Create Session';
        $pageTitle = 'Create Session';
        $activeMenu = 'create_session';

        $campus = Campus::get();

        return view('session.create', compact('activeMenu', 'pageHead', 'pageTitle', 'campus'));
    }

    public function store(SessionRequest $request)
    {
        // Validate the incoming request data
        $validatedData = $request->validated();

        // Check if a session with the same name already exists
        $existingSession = Session::where('name', $validatedData['name'])->first();

        if ($existingSession) {
            // If a session with the same name already exists, return with error message
            return redirect()->back()->with('error', 'A session with the same name already exists.');
        }

        // Create a new session instance
        $session = new Session();
        $session->name = $validatedData['name'];
        $session->save();

        // Attach campuses to the session
        $session->campuses()->attach($validatedData['campus_id']);

        // Redirect with success message
        return redirect()->route('session.index')->with('success', 'Session created successfully.');
    }




    public function edit(Session $session)
    {

        $pageHead = 'Edit Session';
        $pageTitle = 'Edit Session';
        $activeMenu = 'session';

        $campus = Campus::get();

        return view('session.edit', compact('activeMenu', 'pageHead', 'pageTitle', 'session', 'campus'));
    }

    public function update(SessionRequest $request, Session $session)
    {
        // Validate the incoming request data
        $validatedData = $request->validated();

        // Update session name
        $session->name = $validatedData['name'];
        $session->save();

        // Sync campuses for the session
        $session->campuses()->sync($validatedData['campus_id']);

        // Redirect with success message
        return redirect()->route('session.index')->with('success', 'Session updated successfully.');
    }


    public function show(Session $session)
    {

        abort(404);
    }

    public function destroy(Session $session)
    {
        // Delete related records in the 'users' table
        $session->sessionUsers()->delete();

        // Retrieve user IDs related to the session
        $userIds = $session->sessionUsers()->pluck('id')->toArray();

        // Delete related records in the 'results' table
        Result::whereIn('user_id', $userIds)->delete();

        // Retrieve result IDs related to the users
        $resultIds = Result::whereIn('user_id', $userIds)->pluck('id')->toArray();

        // Delete related records in the 'submit_results' table
        SubmitResult::whereIn('result_id', $resultIds)->delete();

        // Finally, delete the session record itself
        $session->delete();

        return redirect()->route('session.index')->with('success', 'Session deleted successfully.');
    }
}
