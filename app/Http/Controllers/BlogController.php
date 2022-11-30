<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Canvas\Models\Post;
use Canvas\Models\Topic;
use Canvas\Models\Tag;

class BlogController extends Controller
{
    //
    public function index()
    {
        $publishedPosts = Post::published()->paginate(10);
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('created_at')->groupBy('canvas_posts.id')->take($count)->get();
        $topicsCount = Topic::count() > 5 ? 5 : Topic::count();
        $latestTopics = Topic::take($topicsCount)->get();
        $tagsCount = Tag::count() > 10 ? 10 : Tag::count();
        $latestTags = Tag::get()->take($tagsCount);

        return view(
            'pages.blog',
            [
                'title' => 'All Posts',
                'posts' => $publishedPosts,
                'latestPosts' => $latestPosts,
                'latestTopic' => $latestTopics,
                'latestTags' => $latestTags
            ]
        );
    }

    public function show($slug)
    {
        $post = Post::with('user', 'tags', 'topic')->firstWhere('slug', $slug);
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('created_at')->groupBy('canvas_posts.id')->take($count)->get();
        $topicsCount = Topic::count() > 5 ? 5 : Topic::count();
        $latestTopics = Topic::take($topicsCount)->get();
        $tagsCount = Tag::count() > 10 ? 10 : Tag::count();
        $latestTags = Tag::get()->take($tagsCount);


        event(new \Canvas\Events\PostViewed($post));

        return view(
            'pages.single',
            [
                'post' => $post,
                'latestPosts' => $latestPosts,
                'latestTopic' => $latestTopics,
                'latestTags' => $latestTags
            ]
        );
    }

    public function topics($slug)
    {
        $topic = Topic::with('posts')->firstWhere('slug', $slug);
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('created_at')->groupBy('canvas_posts.id')->take($count)->get();
        $topicsCount = Topic::count() > 5 ? 5 : Topic::count();
        $latestTopics = Topic::take($topicsCount)->get();
        $tagsCount = Tag::count() > 10 ? 10 : Tag::count();
        $latestTags = Tag::get()->take($tagsCount);

        // creates custom pagination
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 8;
        $currentItems = $topic->posts->slice($perPage * ($currentPage - 1), $perPage);
        $page = new LengthAwarePaginator(
            $currentItems,
            count($topic->posts),
            $perPage,
            LengthAwarePaginator::resolveCurrentPage(),
            ['path' => LengthAwarePaginator::resolveCurrentPath('/topics/' . $slug)]
        );

        return view(
            'pages.blog',
            [
                'title' => $topic->name,
                'posts' => $page,
                'latestPosts' => $latestPosts,
                'latestTopic' => $latestTopics,
                'latestTags' => $latestTags
            ]
        );
    }

    public function tags($slug)
    {
        $tag = Tag::with('posts')->firstWhere('slug', $slug);
        $count = Post::published()->count() > 5 ? 5 : Post::published()->count();
        $latestPosts = Post::published()->leftJoin('canvas_views', 'canvas_posts.id', '=', 'canvas_views.post_id')
            ->selectRaw('canvas_posts.*, count(canvas_views.post_id) as PostCount')
            ->orderByDesc('created_at')->groupBy('canvas_posts.id')->take($count)->get();
        $topicsCount = Topic::count() > 5 ? 5 : Topic::count();
        $latestTopics = Topic::take($topicsCount)->get();
        $tagsCount = Tag::count() > 10 ? 10 : Tag::count();
        $latestTags = Tag::get()->take($tagsCount);

        // creates custom pagination
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 8;
        $currentItems = $tag->posts->slice($perPage * ($currentPage - 1), $perPage);
        $page = new LengthAwarePaginator(
            $currentItems,
            count($tag->posts),
            $perPage,
            LengthAwarePaginator::resolveCurrentPage(),
            ['path' => LengthAwarePaginator::resolveCurrentPath('/topics/' . $slug)]
        );

        return view(
            'pages.blog',
            [
                'title' => $tag->name,
                'posts' => $page,
                'latestPosts' => $latestPosts,
                'latestTopic' => $latestTopics,
                'latestTags' => $latestTags
            ]
        );
    }

    public function sitemap()
    {
        $posts = Post::published()->orderBy('id', 'desc')->get();

        return response()->view('sitemap', compact('posts'))
            ->header('Content-Type', 'text/xml');
    }
}
