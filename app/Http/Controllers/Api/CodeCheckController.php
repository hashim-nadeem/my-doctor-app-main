<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;

class CodeCheckController extends Controller
{
    
    public function __invoke(Request $request)
    {
        
        $validator = Validator::make($request->all(),[
            'token' => 'required|string|exists:password_reset_tokens',
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

        return response([
            'token' => $passwordReset->token,
            'message' => 'Token is valid'
        ], 200);

    }

}
