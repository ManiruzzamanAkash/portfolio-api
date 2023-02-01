<?php

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $category = new Category();
        $category->id = 1;
        $category->name = "Web Design";
        $category->slug = "web-design";
        $category->parent_category_id = null;
        $category->save();

        $category2 = new Category();
        $category2->id = 2;
        $category2->name = "Web Development";
        $category2->slug = "web-development";
        $category2->parent_category_id = null;
        $category2->save();

        $category3 = new Category();
        $category3->id = 3;
        $category3->name = "App Development";
        $category3->slug = "app-development";
        $category3->parent_category_id = null;
        $category3->save();
    }
}
