<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Student extends Model
{
    protected $fillable = ['std_id', 'student_name', 'phone', 'Address'];


    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
