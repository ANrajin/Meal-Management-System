<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Foods;

class FoodRoaster extends Model
{
    protected $fillable = ['date', 'foods', 'column_number'];


    public function itemName()
    {
        return $this->belongsTo(Foods::class);
    }
}
