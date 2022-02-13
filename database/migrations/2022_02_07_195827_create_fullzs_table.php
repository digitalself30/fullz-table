<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFullzsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fullzs', function (Blueprint $table) {
            $table->id();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('street')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('zip')->nullable();
            $table->string('ssn')->nullable();
            $table->date('dob')->nullable();
            $table->string('dl')->nullable();
            $table->string('dl_state')->nullable();
            $table->date('dl_issue')->nullable();
            $table->date('dl_expiry')->nullable();
            $table->decimal('price',8,2)->nullable();
            $table->string('status')->default(1)->comment('1->active, 2->in-active');
            $table->string('type')->comment('1->Fullz SSN, 2->FullzSS+NDL');
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
        Schema::dropIfExists('fullzs');
    }
}
