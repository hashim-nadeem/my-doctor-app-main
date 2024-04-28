<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [

            'name' => $this->name,
            'father_name' => $this->father_name,
            'phone_no' => $this->phone_no,
            'email' => $this->email,
            'province' => $this->province ?? null,
            'district' => $this->district ?? null,
            'campus' => $this->campus ?? null,
            'session' => $this->session ?? null,
            'classroom' => $this->classroom ?? null,
            'matric_marks' => $this->matric_marks,
            'fsc_marks' => $this->fsc_marks,            
            
        ];

    }
}
