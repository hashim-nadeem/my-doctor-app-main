<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    public function getUserDetails(Request $request)
    {
        
        try {

            // Get the authenticated user
            $user = $request->user(); 

            // Load relationships which you need
            $user->load('province', 'district', 'campus', 'session', 'classroom');
        
            return new UserResource($user);
            

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);

        }
        
    }

}

