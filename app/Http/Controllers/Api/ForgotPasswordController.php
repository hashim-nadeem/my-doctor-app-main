<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\ResetPasswordMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Validator;

class ForgotPasswordController extends Controller
{
    
    public function __invoke(Request $request)
    {
        
        $validator = Validator::make($request->all(),[
            'email' => ['required', 'string', 'email', 'max:255', 'exists:users']
        ]);

        if($validator->fails())
        {
            
            $response = [
                'status' => false,
                'message' => $validator->errors()
            ];

            return response()->json($response,400);

        }

        // Delete all old code that user send before.
        DB::table('password_reset_tokens')->where('email', $request->email)->delete();

        // generate token
        $resetPasswordToken = str_pad(random_int(1,9999), 4, '0', STR_PAD_LEFT);

        DB::table('password_reset_tokens')->insert([
            'email' => $request->email,
            'token' => $resetPasswordToken,
            'created_at' => now(),
        ]);
        
        $arr = [
            'token' => $resetPasswordToken
        ];

        $isSend = Mail::to($request->email)->send(new ResetPasswordMail($arr));


        if(!$isSend)
        {

            $response = [

                'status' => false,
                'message' => 'Connection error try again...'

            ];

            return response()->json($response,400);

        }
        else
        {

            $response = [

                'status' => true,
                'message' => 'Reset password token has sent on your mail'

            ];

            return response()->json($response,200);

        }

    }


}
