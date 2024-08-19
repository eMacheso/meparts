<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Constituency extends Model
{
    protected $table = 'constituencies';
    protected $guarded = [];
    public $timestamps = false;
    
    use HasFactory;

    public function questions()
    {
        return $this->hasMany(Question::class);
    }

}
