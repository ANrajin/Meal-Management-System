<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentFoodMenu extends Model
{
    protected $fillable = ['user_id', 'student_id', 'date', 'food_id'];
}
