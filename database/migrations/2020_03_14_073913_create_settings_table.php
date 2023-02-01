<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('name')->default(config('app.name'));
            $table->string('logo')->default('logo.png');
            $table->string('profile_image')->default('profile.png');
            $table->string('favicon')->default('favicon.ico');

            $table->string('short_description')->nullable();
            $table->string('description')->nullable();
            $table->string('copyright_text')->nullable();

            // Welcome Message
            $table->text('welcome_message')->nullable();
            $table->boolean('is_welcome_enable')->default(1)->comment('True means welcome text will be visible, invisible otherwise');

            // Meta
            $table->string('meta_description')->nullable();
            $table->string('meta_keywords')->nullable();
            $table->string('meta_author')->nullable();

            // Contacts
            $table->string('contact_no_primary')->nullable();
            $table->string('contact_no_secondary')->nullable();
            $table->string('contact_no_all')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('address')->nullable();

            // Social Links
            $table->string('github_link')->nullable();
            $table->string('facebook_link')->nullable();
            $table->string('youtube_link')->nullable();
            $table->string('twitter_link')->nullable();
            $table->string('linkedin_link')->nullable();
            $table->string('instagram_link')->nullable();

            // Extra Data (if Needed)
            $table->string('custom_data1')->nullable();
            $table->string('custom_data2')->nullable();
            $table->string('custom_data3')->nullable();
            $table->string('custom_data4')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
