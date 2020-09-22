<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MealType;

class Foods extends Model
{
    protected $fillable = ['item_name', 'meal_types_id', 'created_at'];


    public function category()
    {
        return $this->belongsTo(MealType::class, 'meal_types_id');
    }
}
