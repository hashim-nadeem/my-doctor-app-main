<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\QuestionRequest;
use App\Http\Resources\QuestionResource;
use App\Models\SubjectQuestion;

class QuestionController extends Controller
{

    /**
     * Summary of index
     * @param \App\Http\Controllers\Api\SubjectRequest $request
     * @return mixed
     */
    public function index(QuestionRequest $request)
    {

        try {

            $subjectId = $request->subject_id ?? '';
            $chapterId = $request->chapter_id ?? '';

            $questions = SubjectQuestion::with('classroom', 'subject', 'chapter', 'questions.questionKeys')
                ->when($subjectId, function ($query) use ($subjectId) {
                    return $query->where('subject_id', $subjectId)->orWhere('classroom_id', null);
                })
                ->when($chapterId, function ($query) use ($chapterId) {
                    return $query->where('chapter_id', $chapterId);
                })
                ->first();

            $questionResource = new QuestionResource($questions);
            // dd($questionResource);
            return $questionResource->additional(['success' => true]);
        } catch (\Throwable $th) {

            $response = [

                'success' => false,
                'errors' => $th,

            ];

            return response()->json($response, 400);
        }
    }
}
