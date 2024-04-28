<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Question extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [ 
        'subject_question_id',
        'title',
        'correct_key'
    ];

    public function questionKeys()
    {
        
        return $this->hasMany(QuestionKey::class)->select('id','option','question_id');

    }

}
