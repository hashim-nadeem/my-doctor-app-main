<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('father_name')->nullable();
            $table->string('phone_no');
            $table->string('email')->unique();
            $table->string('password');
            $table->bigInteger('province_id')->nullable();
            $table->bigInteger('district_id')->nullable();
            $table->bigInteger('campus_id')->nullable();
            $table->bigInteger('session_id')->nullable();
            $table->bigInteger('classroom_id')->nullable();
            $table->float('matric_marks')->nullable();
            $table->float('fsc_marks')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->enum('type',['admin','student'])->default('admin');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
