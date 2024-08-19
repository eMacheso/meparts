<?php

namespace App\Imports;

use App\Models\User as ModelsUser;
use App\Models\User;
use Illuminate\Foundation\Auth\User as AuthUser;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new User([
            'firstname' =>$row[0],
            'lastname'=>$row[1],
            'email'=>$row[2],
            'password'=>Hash::make($row[3]),
        ]);
    }
}
