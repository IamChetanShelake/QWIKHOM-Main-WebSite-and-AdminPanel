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
        Schema::create('progress_statistics', function (Blueprint $table) {
            $table->id();
            $table->string('logo'); // Icon class or image path
            $table->string('title');
            $table->decimal('value', 10, 2); // Number or percentage value
            $table->enum('type', ['number', 'percentage'])->default('number'); // Determines + or % display
            $table->integer('sort_order')->default(0);
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('progress_statistics');
    }
};
