<?php

namespace App\Models;
use App\Models\Question;
use App\Models\Sesion;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{
    use HasFactory;
    protected $guarded = [];
    // protected $fillables = [''];
    protected $dates = ['date'];

    public function session()
    {
        return $this->belongsTo(Sesion::class);
    }

    public function questions()
    {
        return $this->hasMany(Question::class);
    }
}
