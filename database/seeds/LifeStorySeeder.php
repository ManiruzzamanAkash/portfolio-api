<?php

use App\Models\LifeStory;
use Illuminate\Database\Seeder;

class LifeStorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        if (is_null(LifeStory::find(1))) {
            $lifeStory = new LifeStory();
            $lifeStory->id = 1;
            $lifeStory->institution = 'Patuakhali Science and Technology University';
            $lifeStory->position = 'Student';
            $lifeStory->department = 'Computer Science and Engineering';
            $lifeStory->short_description = 'Graduated and completed my Bachelor of Science degree';
            $lifeStory->long_description = "I've completed my Bachelor of Science degree from this repoted university of Bangladesh.";
            $lifeStory->start_date = '2015-01-01';
            $lifeStory->end_date = '2018-11-30';
            $lifeStory->is_current = false;
            $lifeStory->order_priority = 1;
            $lifeStory->user_id = 1;
            $lifeStory->save();
        }
        if (is_null(LifeStory::find(2))) {
            $lifeStory = new LifeStory();
            $lifeStory->id = 2;
            $lifeStory->institution = 'Freelance';
            $lifeStory->position = 'Web Developer';
            $lifeStory->department = null;
            $lifeStory->short_description = 'My Freelancing career start from this year with Web Programming Technology';
            $lifeStory->long_description = "My Freelancing career start from this year with Web Programming Technology.";
            $lifeStory->start_date = '2017-05-01';
            $lifeStory->end_date = '2018-11-30';
            $lifeStory->is_current = false;
            $lifeStory->order_priority = 2;
            $lifeStory->user_id = 1;
            $lifeStory->save();
        }
        if (is_null(LifeStory::find(3))) {
            $lifeStory = new LifeStory();
            $lifeStory->id = 3;
            $lifeStory->institution = 'Agami Soft Ltd.';
            $lifeStory->position = 'Web Developer';
            $lifeStory->department = null;
            $lifeStory->short_description = 'My First Job Career as a full stack web developer with PHP, Vue JS';
            $lifeStory->long_description = "My First Job Career as a full stack web developer with PHP, Vue JS.";
            $lifeStory->start_date = '2018-12-01';
            $lifeStory->end_date = '2019-05-03';
            $lifeStory->is_current = false;
            $lifeStory->order_priority = 3;
            $lifeStory->user_id = 1;
            $lifeStory->save();
        }
        if (is_null(LifeStory::find(4))) {
            $lifeStory = new LifeStory();
            $lifeStory->id = 4;
            $lifeStory->institution = 'Akij Group Ltd.';
            $lifeStory->position = 'Software Engineer';
            $lifeStory->department = 'Information Technology';
            $lifeStory->short_description = 'My Web career enhance with a new web trend, Laravel, Vue JS, React JS';
            $lifeStory->long_description = "My Web career enhance with a new web trend, Laravel, Vue JS, React JS. I'm now a full time React, React Native Developer.";
            $lifeStory->start_date = '2019-05-04';
            $lifeStory->end_date = null;
            $lifeStory->is_current = true;
            $lifeStory->order_priority = 4;
            $lifeStory->user_id = 1;
            $lifeStory->save();
        }
    }
}
