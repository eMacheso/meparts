<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Sesion;

class SesionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Sesion::create([
            'sesion_number'=>49,
        ]);

    }
}
