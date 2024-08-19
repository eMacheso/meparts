<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ManagementDirectionOrt extends Model
{
    use HasFactory;
    function ortissues(){
        return $this -> hasMany(OrtIssue::class, 'id');
    }
}
