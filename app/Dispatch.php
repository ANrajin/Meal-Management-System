<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\DispatchDetails;

class Dispatch extends Model
{
    protected $fillable = ['date', 'out_by', 'budget'];

    public function details()
    {
        return $this->hasMany(DispatchDetails::class);
    }
}
