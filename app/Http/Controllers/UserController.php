<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Models\Session;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables;

class UserController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {
            $session_id = $request->session_id;
            $data = User::whereNot('type', 'admin')->with('district')->when($session_id, function ($query) use ($session_id) {
                $query->where('session_id', $session_id);
            })->get();

            return DataTables::of($data)

                ->addIndexColumn()

                ->addColumn('action', function ($row) {

                    $btn = '';

                    $btn .= '<span class="action-icons">';

                    $btn .= '<a href="' . route('users.show', $row->id) . '" class="btn btn-sm btn-warning btn-circle" data-toggle="tooltip" data-placement="bottom" title="Edit">
                                <i class="fa fa-eye"></i>
                            </a>';

                    // $btn .= '<a href="javascript:void(0)" class="btn  btn-sm btn-danger btn-circle delete_row_" data-url="'. route('users.destroy',$row->id) .'" 
                    // data-msg="Are you sure you want to delete this user?" data-toggle="tooltip" data-placement="bottom" title="Delete">
                    //     <i class="fa fa-trash"></i>
                    // </a>';


                    $btn .= '</span>';


                    return $btn;
                })

                ->rawColumns(['action'])
                ->make(true);
        }

        $pageHead = 'Users';
        $pageTitle = 'Users';
        $activeMenu = 'users';
        $sessions = Session::all();
        return view('users.index', compact('activeMenu', 'pageHead', 'pageTitle', 'sessions'));
    }

    public function create()
    {

        abort(404);

        $pageHead = 'Create User';
        $pageTitle = 'Create User';
        $activeMenu = 'create_user';

        return view('users.create', compact('activeMenu', 'pageHead', 'pageTitle'));
    }

    public function store(UserRequest $request)
    {

        abort(404);

        $user = [

            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'password_txt' => $request->password,
            'contact_no' => $request->contact_no,
            'designation' => $request->designation,
            'type' => 'user'
        ];

        User::create($user);

        return redirect()->route('users.index')->with('success', 'User created successfully.');
    }


    public function edit(User $user)
    {

        abort(404);

        $pageHead = 'Edit User';
        $pageTitle = 'Edit User';
        $activeMenu = 'users';

        return view('users.edit', compact('activeMenu', 'pageHead', 'pageTitle', 'user'));
    }

    public function update(UserRequest $request, User $user)
    {

        abort(404);

        $user_update_arr = [

            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'password_txt' => $request->password,
            'contact_no' => $request->contact_no,
            'designation' => $request->designation,
        ];

        $user->update($user_update_arr);

        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }

    public function show(User $user)
    {

        $pageHead = 'View User';
        $pageTitle = 'View User';
        $activeMenu = 'users';

        return view('users.show', compact('activeMenu', 'pageHead', 'pageTitle', 'user'));
    }

    public function destroy(User $user)
    {

        abort(404);

        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully.');
    }
}
