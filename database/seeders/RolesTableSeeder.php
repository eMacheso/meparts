<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            'name' => 'admin',  'id'=>1,
            
        ]);
        DB::table('roles')->insert([
            'name' => 'director',  'id'=>2,     
        ]);
        DB::table('roles')->insert([
            'name' => 'other',         'id'=>3
        ]);
    }
}
