<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->string('parent_id');
            $table->string('name');
            $table->string('description');
            $table->string('short_description');
            $table->string('month');
            $table->string('online_price');
            $table->string('offline_price');
            $table->string('discount');
            $table->string('image');
            $table->string('meta_title');
            $table->string('meta_description');
            $table->string('meta_keyword');
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
        Schema::dropIfExists('courses');
    }
}
