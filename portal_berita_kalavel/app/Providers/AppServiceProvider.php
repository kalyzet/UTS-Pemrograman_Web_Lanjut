<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Carbon\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Atur locale aplikasi ke bahasa Indonesia
        config(['app.locale' => 'id']);

        // Set locale untuk Carbon (library tanggal Laravel)
        Carbon::setLocale('id');

        // Set locale untuk fungsi tanggal bawaan PHP
        setlocale(LC_TIME, 'id_ID.UTF-8', 'Indonesian_Indonesia.1252');
    }
}
