<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Contracts\Auth\CanResetPassword;

class User extends Authenticatable implements CanResetPassword
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'father_name',
        'phone_no',
        'email',
        'password',
        'province_id',
        'district_id',
        'campus_id',
        'session_id',
        'classroom_id',
        'matric_marks',
        'fsc_marks',
        'type'

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function province()
    {

        return $this->belongsTo(Province::class, 'province_id', 'id')->select('id', 'name');
    }

    public function district()
    {

        return $this->belongsTo(District::class)->select('id', 'name');
    }

    public function campus()
    {

        return $this->belongsTo(Campus::class)->select('id', 'name');
    }

    public function session()
    {

        return $this->belongsTo(Session::class)->select('id', 'name');
    }

    public function classroom()
    {

        return $this->belongsTo(Classroom::class)->select('id', 'name');
    }

    public function results()
    {
        return $this->hasOne(Result::class, 'user_id', 'id');
    }
}
