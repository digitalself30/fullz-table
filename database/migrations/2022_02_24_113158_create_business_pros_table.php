<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBusinessProsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('business_pros', function (Blueprint $table) {
            $table->id();
            $table->string('company_name')->nullable();
            $table->string('ein')->nullable();
            $table->date('creation_date')->nullable();
            $table->string('owner')->nullable();
            $table->string('state')->nullable();
            $table->string('city')->nullable();
            $table->string('article_of_organization')->nullable();
            $table->string('annual_report')->nullable();
            $table->string('Price')->nullable();
            $table->string('file_path')->nullable();
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
        Schema::dropIfExists('business_pros');
    }
}
