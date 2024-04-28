<?php

namespace App\Http\Requests\Api;

use App\Models\Subject;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class QuestionRequest extends FormRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {

        $subjectId = request('subject_id') ?? '';

        $isClassRoomSubject = Subject::where('id',$subjectId)
        ->where('classroom_id','<>',null)
        ->exists();

        if(!$isClassRoomSubject)
        {
            
            return [
                
                'subject_id' => 'required',
    
            ];
            
        }
        else
        {
            
            return [
                
                'subject_id' => 'required',
                'chapter_id' => 'required',
    
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
            
        ],400));

    }


    /**
     * Summary of messages
     * @return array
     */
    public function messages(): array
    {
        return [
            'subject_id.required' => 'Subject ID parameter is required',
            'chapter_id.required' => 'Chapter ID parameter is required'
        ];
    }

}
