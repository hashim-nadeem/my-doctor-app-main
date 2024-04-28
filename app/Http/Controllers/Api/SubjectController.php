<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\SubjectRequest;
use App\Http\Resources\SubjectResource;
use App\Models\Subject;

class SubjectController extends Controller
{
    
    /**
     * Summary of index
     * @param \App\Http\Requests\Api\SubjectRequest $request
     * @return \Illuminate\Http\JsonResponse|\Illuminate\Http\Resources\Json\AnonymousResourceCollection|mixed
     */
    public function index(SubjectRequest $request)
    {

        try {
            
            $classroomId = $request->classroom_id ?? '';
    
            $subjects = Subject::with('classroom')->when($classroomId , function ($query) use ($classroomId){
                return $query->where('classroom_id',$classroomId)->orWhere('classroom_id',null);
            })->get();
    
            return SubjectResource::collection($subjects)->additional(['success' => true]);

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response,400);

        }
        

    }

}
