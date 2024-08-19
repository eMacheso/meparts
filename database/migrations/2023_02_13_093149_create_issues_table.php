<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIssuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('issues', function (Blueprint $table) {
            //$table->id();
            $table->increments('id');
             $table->string('issue_name');
             $table->string('issue_description');
             $table->string('directorate_id');
             $table->string('date_assigned');
             $table->string('date_due');
             $table->string('status');
             $table->string('reason');
             $table->string('se_input');
             $table->string('dir_responce');
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
        Schema::dropIfExists('issues');
    }
}
