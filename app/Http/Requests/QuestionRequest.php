<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class QuestionRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {   
        
        return [
            
            'classroom_id' => 'required_if:is_classroom,1',
            'subject_id' => 'required',
            'chapter_id' => 'required_if:is_chapter,1',
            'file' => 'required|mimes:xlsx'

        ];

    }

    /**
     * Summary of rules
     * @return array
     */
    public function messages(): array
    {
        return [
            
            'chapter_id.required_if' => 'The chapter field is required when subject has chapters'

        ];

    }

}
