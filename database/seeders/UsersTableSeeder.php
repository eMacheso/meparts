<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        //Minister 

        DB::table('users')->insert([
            'firstname' => 'Minister',
            'lastname' => 'Minister',
            'email' => 'minister@edu.com',
            'role'=>'Other',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Chikondano',
            'lastname' => 'Mussa',
            'email' => 'secretary@edu.gov.mw ',
            'role'=>'admin',
            'email_verified_at' => now(),
            'password' => Hash::make('@Secretary123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        

        //Admin 
        DB::table('users')->insert([
            'firstname' => 'Astonie',
            'lastname' => 'Mukiwa',
            'email' => 'amukiwa@must.ac.mw',
            'role'=>'admin',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        //Directors 
        DB::table('users')->insert([
            'firstname' => 'Astonie',
            'lastname' => 'Mukiwa',
            'email' => 'amukywah@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        DB::table('users')->insert([
            'firstname' => 'Chomora',
            'lastname' => 'Mikeka',
            'email' => 'chomora@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        DB::table('users')->insert([
            'firstname' => 'Chikondano',
            'lastname' => 'Kadzamira Mussa',
            'email' => 'chikodbkd@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Kettie',
            'lastname' => 'Mughogho  Chiweza',
            'email' => 'katemugh@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Godfrey',
            'lastname' => 'Kafere',
            'email' => 'kafereray@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'James',
            'lastname' => 'Manyetera',
            'email' => 'manyeteraj@yahoo.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Joshua',
            'lastname' => 'Valeta',
            'email' => 'jvaleta32@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Levis',
            'lastname' => 'Eneya ',
            'email' => 'levis.eneya@education.gov.mw',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Francis',
            'lastname' => 'Zhuwao',
            'email' => 'wadidinkhumphedza@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Florida',
            'lastname' => 'Banda',
            'email' => 'fkbanda@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Anna',
            'lastname' => 'Kamende',
            'email' => 'annakamende@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Noel',
            'lastname' => 'Mwango',
            'email' => 'noelmwango1000@gmail.com',
            'role'=>'director',
             'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Precious',
            'lastname' => 'Mtotha',
            'email' => 'preciousmtotha@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Cecily',
            'lastname' => 'kampanje',
            'email' => 'cfkampanje@yahoo.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Roslyn',
            'lastname' => 'Mwenye',
            'email' => 'mwenyeroslyn@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Lindiwe',
            'lastname' => 'Chide',
            'email' => 'lichide@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Misheck',
            'lastname' => 'Munthali',
            'email' => 'mwayangwe.yagontha@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('users')->insert([
            'firstname' => 'Maureen',
            'lastname' => 'Maguza-Tembo',
            'email' => 'mcmtembo@gmail.com',
            'role'=>'director',
            'email_verified_at' => now(),
            'password' => Hash::make('@Passme123!'),
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}
