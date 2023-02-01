<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        if (is_null(User::where('username', 'maniruzzman')->first())) {
            $user = new User();
            $user->id = 1;
            $user->first_name = "Maniruzzaman";
            $user->last_name = "Akash";
            $user->username = "maniruzzman";
            $user->phone_no = "+8801951233084";
            $user->email = "manirujjamanakash@gmail.com";
            $user->password = Hash::make('123456');
            $user->save();

            // Assign role
            $user->assignRole('User');
        }
    }
}
