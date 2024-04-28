<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Session extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $fillable = [

        'name'

    ];

    public function campus()
    {

        return $this->belongsTo(Campus::class);
    }

    public function sessionUsers()
    {
        return $this->hasMany(User::class, 'session_id', 'id');
    }

    public function campuses()
    {
        return $this->belongsToMany(Campus::class, 'campus_session', 'session_id', 'campus_id');
    }

    public function classrooms()
    {
        return $this->belongsToMany(Classroom::class);
    }
}
