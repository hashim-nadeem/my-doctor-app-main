<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Validator;
use Illuminate\Http\Request;
use App\Http\Requests\Api\RegistrationRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;

class AuthController extends Controller
{
    
    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function register(RegistrationRequest $request)
    {
        $user = User::create([
            'name' => $request->name,
            'father_name' => $request->father_name,
            'phone_no' => $request->phone_no,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'province_id' => $request->province_id,
            'district_id' => $request->district_id,
            'campus_id' => $request->campus_id,
            'session_id' => $request->sessionId,
            'classroom_id' => $request->classroom_id,
            'matric_marks' => $request->matric_marks,
            'fsc_marks' => $request->fsc_marks,
            'type' => 'student'
        ]);

        // Eager load the related objects
        $user->load('province', 'district', 'campus', 'session', 'classroom');

        $response = [

            'success' => true,
            'data' => [
                'token' => $user->createToken('MyApp')->plainTextToken,
                'user' => $user->makeHidden(['updated_at', 'created_at', 'password', 'remember_token', 'province_id', 'district_id', 'campus_id', 'session_id', 'classroom_id']),
            ],
            'message' => 'Registered successfully'
        ];

        return response()->json($response, 200);
    }
    public function login(Request $request)
    {

        $isAuth = Auth::attempt(['email' => $request->email,'password' => $request->password,'type' => 'student']);

        if($isAuth)
        {
        
            $user = Auth::user();

            // Eager load the related objects
            $user->load('province', 'district', 'campus', 'session', 'classroom');

            $response = [
                'success' => true,
                'data' => [
                    'token' => $user->createToken('MyApp')->plainTextToken,
                     'user' => $user->makeHidden(['updated_at', 'created_at', 'password', 'remember_token','province_id','district_id','campus_id','session_id','classroom_id']),
                ],
                'message' => 'Logged in successfully',
            ];

            return response()->json($response, 200);
            
        }
        else
        {

            
            $response = [

                'success' => false,
                'message' => 'Unauthorized'

            ];

            return response()->json($response,401);

        }

    }

    public function logout(Request $request) 
    {

		// Revoke the token that was used to authenticate the current request
		$request->user()->currentAccessToken()->delete();
		//$request->user->tokens()->delete(); // use this to revoke all tokens (logout from all devices)
        $response = [

            'status' => true,
            'message' => 'Logout successfully'

        ];

		return response()->json($response, 200);

        
	}

}
