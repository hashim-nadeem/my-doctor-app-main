<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class QuestionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $questions = $this->questions ?? [];
        $formattedQuestions = [];

        if ($questions) {
            foreach ($questions as $question) {
                $formattedQuestion = [
                    'question_id' => $question->id,
                    'title' => $question->title,
                    'correct_key' => $question->correct_key,
                    'options' => $question->questionKeys->pluck('option')->toArray(),
                ];

                $formattedQuestions[] = $formattedQuestion;
            }
        }

        return [

            'classroom' => $this->classroom->name ?? '',
            'subject' => $this->subject->name ?? '',
            'questions' =>  $formattedQuestions ?? [],

        ];
    }
}
