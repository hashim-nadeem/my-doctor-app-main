<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Campus extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $fillable = [

        'district_id',
        'name'

    ];

    public function district()
    {

        return $this->belongsTo(District::class);
    }

    public function sessions()
    {
        return $this->belongsToMany(Session::class, 'campus_session', 'campus_id', 'session_id');
    }
}
