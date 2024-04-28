<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\ClassroomRequest;
use App\Http\Resources\ClassroomResource;
use App\Models\Classroom;

class ClassRoomController extends Controller
{
    
    public function index(ClassroomRequest $request)
    {
        
        try {
            
            $sessionId = $request->sessionId ?? '';
            
            $classrooms = Classroom::when($sessionId , function ($query) use ($sessionId){
                return $query->where('session_id',$sessionId);
            })->get();
            
            return ClassroomResource::collection($classrooms)->additional(['success' => true]);

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response, 400);

        }        

    }

}
