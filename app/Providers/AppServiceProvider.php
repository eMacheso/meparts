<?php

namespace App\Providers;

use App\Models\Constituency;
use Illuminate\Support\Facades\View;
// use Illuminate\View\View;
use App\Models\Sesion;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \Illuminate\Support\Facades\Schema::defaultStringLength(191);
        View::composer('partials.sidebar', function ($view) {
            $current_session = Sesion::orderBy('sesion_number', 'desc')->limit(1)->get('sesion_number');
            return $view->with('current_session', $current_session[0]->sesion_number);
        });

        $constituencies  = Constituency::get();

        // view()->share('current_session ',$current_session);
        View::share('constituencies ',$constituencies);

    }
}
