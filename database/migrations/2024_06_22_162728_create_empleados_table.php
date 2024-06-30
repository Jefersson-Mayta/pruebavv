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
        Schema::create('empleados', function (Blueprint $table) {
            $table->id();
            $table->string ('nombre',50);
            $table->string ('apellido-p',50);
            $table->string ('apellido-m',50);
            $table->integer ('sueldo');
            $table->string ('cargo',50);
            $table->integer ('carnet');
            $table->integer ('edad');
            $table->char ('sexo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('empleados');
    }
};
