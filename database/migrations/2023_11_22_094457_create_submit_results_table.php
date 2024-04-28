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
        Schema::create('submit_results', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('result_id')->nullable();
            $table->unsignedBigInteger('question_id')->nullable();
            $table->string('user_ans_key')->nullable();
            $table->string('correct_key')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('submit_results');
    }
};
