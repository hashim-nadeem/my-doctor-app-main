<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubmitResult extends Model
{
    use HasFactory;
    protected $fillable = [

        'result_id',
        'question_id',
        'user_ans_key',
        'correct_key'
    ];
}
