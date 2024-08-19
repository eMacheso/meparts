<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function constituecy()
    {
        return $this->belongsTo(Constituency::class);
    }

    public function meeting()
    {
        return $this->belongsTo(Meeting::class);
    }
}
