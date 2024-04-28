<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\ChapterRequest;
use App\Http\Resources\ChapterResource;
use App\Models\Chapter;

class ChapterController extends Controller
{
    
    public function index(ChapterRequest $request)
    {

        try {
            
            $subjectId = $request->subject_id ?? '';
    
            $chapters = Chapter::where('subject_id',$subjectId)->get();
    
            return ChapterResource::collection($chapters)->additional(['success' => true]);

        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => 'Something wrong',

            ];

            return response()->json($response,400);

        }
        

    }

}
