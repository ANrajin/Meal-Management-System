<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Dispatch;

class DispatchDetails extends Model
{
    protected $fillable = ['dispatchs_id', 'items_id', 'qty', 'price'];


    public function info()
    {
        return $this->belongsTo(Dispatch::class);
    }
}
