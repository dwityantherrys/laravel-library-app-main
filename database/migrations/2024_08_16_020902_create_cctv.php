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
        Schema::create('t_cctv', function (Blueprint $table) {
            $table->id('fc_id'); // Primary key with auto increment
            $table->char('fc_id_cctv', 10);
            $table->string('fv_divisi', 255);
            $table->string('fv_sys_type', 255);
            $table->string('fv_principle', 255);
            $table->string('fv_branch_Name', 255);
            $table->string('fv_anydesk', 255);
            $table->string('fv_teamviever', 255);
            $table->string('fv_ultraviewer', 255);
            $table->string('fv_link_add', 255);
            $table->string('fv_link_temp', 255);
            $table->char('fc_user_it', 8);
            $table->char('fc_password_it', 15);
            $table->char('fc_user_sysadm', 8);
            $table->char('fc_password_sysadm', 15);
            $table->string('fv_status_hdd_ext', 255);
            $table->char('fc_username', 8);
            $table->char('fc_serial', 20);
            $table->char('fc_user', 8);
            $table->char('fc_password', 15);
            $table->integer('fn_qty_cam');
            $table->char('fc_region', 30);
            $table->string('fv_error', 255);
            $table->string('fv_ket_error', 255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_cctv');
    }
};
