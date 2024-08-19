<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class directorate extends Model
{
    use HasFactory;
    function issues(){
        return $this -> hasMany(Issue::class, 'directorate_id');
    }
    function ort_issues(){
        return $this -> hasMany(Issue::class, 'directorate_id');
    }
    function project_issues(){
        return $this -> hasMany(Issue::class, 'directorate_id');
    }
}
