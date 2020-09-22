<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Foods;

class MealType extends Model
{
    protected $fillable = ['type', 'note'];


    public function foods()
    {
        return $this->hasMany(Foods::class);
    }
}
