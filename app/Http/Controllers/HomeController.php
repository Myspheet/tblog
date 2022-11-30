<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Canvas\Models\Post;

class HomeController extends Controller
{
    //
    public function index()
    {
        $publishedPosts = Post::published()->take(10)->get();
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $topPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
        ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
        ->orderByDesc('PostCount')->groupBy('canvas_posts.id')->take($count)->get();
        return view('pages.home', ['posts' => $publishedPosts, 'topPosts' => $topPosts]);
    }

    public function about() {
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('PostCount') ->groupBy('canvas_posts.id')->take($count)->get();

        return view('pages.about', ['latestPosts' => $latestPosts]);
    }

    public function contact() {
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('PostCount') ->groupBy('canvas_posts.id')->take($count)->get();

        return view('pages.contact', ['latestPosts' => $latestPosts]);
    }

    public function submitContactForm(Request $request) {

        return redirect(route('contact'))->with(['message' => 'Success']);
    }
}
