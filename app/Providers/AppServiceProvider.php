<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Canvas\Models\Topic;

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
        //
        // Using closure based composers...
        View::composer('app', function ($view) {
            $slugList = [
                'child-care',
                'individual-differences',
                'controversial-issues',
                'news-updates',
                'beauty',
                'stereotypes',
                'love'
            ];
            $categories = Topic::whereIn('slug', $slugList)->get();
            $view->with('categories', $categories);
        });
}
}
