<?php

namespace App\Http\Requests\Api;

use App\Models\Subject;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class ResultSubmitRequest extends FormRequest
{
    public function rules(): array
    {
        $subjectId = request('subject_id') ?? '';

        $isClassRoomSubject = Subject::where('id', $subjectId)
            ->where('classroom_id', '<>', null)
            ->exists();

        if (!$isClassRoomSubject) {

            return [

                'subject_id' => 'required',
                'user_id' => 'required',
                'answers' => 'required',

            ];
        } else {

            return [

                'subject_id' => 'required',
                'chapter_id' => 'required',
                'user_id' => 'required',
                'answers' => 'required',

            ];
        }
    }

    /**
     * Summary of failedValidation
     * @param \App\Http\Requests\Api\Validator $validator
     * @throws \App\Http\Requests\Api\HttpResponseException
     * @return never
     */
    public function failedValidation(Validator $validator)
    {

        throw new HttpResponseException(response()->json([

            'success'   => false,

            'errors'   => $validator->errors()

        ], 400));
    }


    /**
     * Summary of messages
     * @return array
     */
    public function messages(): array
    {
        return [
            'subject_id.required' => 'Subject ID parameter is required',
            'chapter_id.required' => 'Chapter ID parameter is required',
            'user_id.required' => 'User ID parameter is required',
            'answers.required' => 'Answer Array is required',
        ];
    }
}
