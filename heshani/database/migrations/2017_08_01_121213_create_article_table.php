<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticleTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {

        if (!Schema::hasTable('article')) {
            Schema::create('article', function (Blueprint $table) {
                $table->increments('id');
                $table->integer('author_id')->unsigned();
                $table->string('title', 255);
                $table->string('url')->unique();
                $table->string('content');
                $table->rememberToken();
                $table->timestamps();

                $table->foreign('author_id')->references('id')->on('author');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('article');
    }

}
