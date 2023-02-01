<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExtraActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('extra_activities', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->enum('type', ['programming_skill', 'social', 'others'])->default('others');
            $table->text('description')->nullable();
            $table->string('online_link')->nullable();
            $table->string('image')->nullable();
            $table->string('online_link_text')->nullable();
            $table->unsignedInteger('order_priority')
                ->default(1)
                ->comment('Priority, how the data will be displayed');

            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');
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
        Schema::dropIfExists('extra_activities');
    }
}
