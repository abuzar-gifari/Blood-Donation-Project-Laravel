<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blood_donors', function (Blueprint $table) {
            $table->id();
            $table->text('username')->nullable();
            $table->text('password')->nullable();
            $table->text('fullname')->nullable();
            $table->text('dob')->nullable();
            $table->text('sex')->nullable();
            $table->text('bloodgroup')->nullable();
            $table->text('mobile')->nullable();
            $table->text('email')->nullable();
            $table->text('town')->nullable();
            $table->text('state')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blood_donors');
    }
};
