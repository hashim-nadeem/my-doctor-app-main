<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classroom extends Model
{
    use HasFactory;
    
    use SoftDeletes;

    protected $fillable = [
        
        'name'

    ];

    public function session()
    {
        
        return $this->belongsTo(Session::class);

    }

    public function sessions()
    {
        return $this->belongsToMany(Session::class);
    }

    public function subjects()
    {
        return $this->belongsToMany(Subject::class);
    }
    
}
