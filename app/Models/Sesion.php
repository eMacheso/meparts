<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sesion extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'sesions';

    public function meetings()
    {
        return $this->hasMany(Meeting::class);
    }

    public function questions(){
        return $this->hasManyThrough(Question::class, Meeting::class);
    }
}
