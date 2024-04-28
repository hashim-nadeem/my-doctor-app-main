<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SubjectResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [

            'id' => $this->id,
            'subject' => $this->name,
            'classroom' => $this->when($this->relationLoaded('classroom'),function(){
                return $this->classroom->name ?? '';
            })
        ];
    }

}
