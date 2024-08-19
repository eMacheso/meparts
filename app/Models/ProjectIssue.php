<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectIssue extends Model
{
    use HasFactory;
    protected $guarded = [];
    function directorate(){
        return $this -> belongsTo(Directorate::class, 'directorate_id');
    }
}
