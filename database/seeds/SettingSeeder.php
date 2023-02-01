<?php

use App\Models\Settings;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $settings = Settings::first();
        if (is_null($settings)) {
            $s = new Settings();
            $s->name = config('app.name');
            $s->logo = 'http://127.0.0.1:8200/MyPortfolioAPI/public/images/logo.png';
            $s->profile_image = 'http://127.0.0.1:8200/MyPortfolioAPI/public/images/profile.png';
            $s->favicon = 'http://127.0.0.1:8200/MyPortfolioAPI/public/images/favicon.ico';
            $s->short_description = "Hi, I'm Maniruzzaman Akash";
            $s->description = "I'm a full stack web developer experiencing more than 3+ years with <code>PHP</code>, <code>Laravel</code>, <code>JavaScript</code>, <code>Vue Js</code>, <code>React Js</code>, <code>React Native</code> and many more..";
            $s->copyright_text = "&copy; 2020 all rights reserved - Maniruzzaman Akash";

            $s->welcome_message = "Welcome to my portfolio";
            $s->is_welcome_enable = true;

            $s->meta_description = 'Maniruzzaman Akash, Software Engineer with Laravel, Vue and React js';
            $s->meta_keywords = 'Maniruzzaman Akash, React Developer, Laravel Developer, Vue Developer';
            $s->meta_author = 'Maniruzzaman Akash';

            $s->contact_no_primary = '+8801951233084';
            $s->contact_no_secondary = '+8801314925185';
            $s->contact_no_all = '01711287849';

            $s->phone = null;
            $s->email = 'manirujjamanakash@gmail.com';
            $s->address = '87/ka Mohakhali, Dhaka, Banani, Dhaka-1213';

            $s->github_link = 'https://github.com/ManiruzzamanAkash';
            $s->facebook_link = 'https://www.facebook.com/maniruzzaman.akash';
            $s->youtube_link = 'https://www.youtube.com/channel/UCHNblf0ynrP1DvoIO-ikgGg';
            $s->twitter_link = 'https://twitter.com/ManiruzzamanAk';
            $s->linkedin_link = 'https://www.linkedin.com/in/maniruzzamanakash';
            $s->instagram_link = 'https://www.instagram.com/maniruzzamanakash';
            $s->save();
        }
    }
}
