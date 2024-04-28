<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;

class ResetPasswordController extends Controller
{
    
    public function __invoke(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'token' => 'required|string|exists:password_reset_tokens',
            'password' => 'required|string|min:6|confirmed',
        ]);

        if($validator->fails())
        {
            
            $response = [
                'status' => false,
                'message' => $validator->errors()
            ];

            return response()->json($response,400);

        }

        // find the code
        $passwordReset = DB::table('password_reset_tokens')->where('token', $request->token)->first();

        // check if it does not expired: the time is one hour
        if ($passwordReset->created_at > now()->addHour()) {
           
            DB::table('password_reset_tokens')->where('email', $request->email)->delete();

            return response(['message' => 'Token has expired'], 422);
            
        }

        // find user's email 
        $user = User::firstWhere('email', $passwordReset->email);

        // update user password
        $user->update($request->only('password'));

        // delete current code 
        DB::table('password_reset_tokens')->where('email', $request->email)->delete();

        return response(['message' =>'Password has been successfully reset'], 200);

    }

}
