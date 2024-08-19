<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrtIssuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ort_issues', function (Blueprint $table) {
            $table->id();
            $table->string('programme');
             $table->string('activity');
             $table->string('directorate_id');
             $table->string('fin_year');
             $table->string('date_due');
             $table->string('status');
             $table->string('budget');
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
        Schema::dropIfExists('ort_issues');
    }
}
