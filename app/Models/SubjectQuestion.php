<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SubjectQuestion extends Model
{
    use HasFactory;
    
    use SoftDeletes;

    protected $fillable = [
        
        'classroom_id',
        'subject_id',
        'chapter_id'

    ];

    public function classroom(){

        return $this->belongsTo(Classroom::class);

    }

    public function subject(){

        return $this->belongsTo(Subject::class);

    }

    public function chapter(){

        return $this->belongsTo(Chapter::class);

    }

    public function questions(){

        return $this->hasMany(Question::class)->select('id','title','correct_key','subject_question_id');

    }

    public function questionsCount(){

        return $this->questions()->count();

    }

}