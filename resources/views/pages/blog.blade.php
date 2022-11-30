@extends('app')

@section('content')
<!--Categorie-->
<section class="categorie-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <div class="categorie-title">
                    <small>
                        <a href="{{ route('home') }}">Home</a>
                        <span class="arrow_carrot-right"></span> {{$title}}
                    </small>
                    <h3>Category : <span>{{ $title }}</span> </h3>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/-->

<!--mansory-layout-->
<section class="masonry-layout col2-layout mt-30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 mt--10 ">
                <!--cards-->
                <div class="card-columns">
                    @foreach ($posts as $post)
                    <!--Post-1-->
                    <div class="card">
                        <div class="post-card">
                            <div class="post-card-image">
                                <a href="{{ route('post', $post->slug) }}">
                                    <img src="{{ asset( $post->featured_image) }}" alt="">
                                </a>
                            </div>
                            <div class="post-card-content">
                                <a href="{{ route('topics', $post->topic[0]->slug) }}" class="categorie">{{ $post->topic[0]->name }}</a>
                                <h5><a href="{{ route('post', $post->slug) }}">{{ $post->title }}</a> </h5>
                                <p>{{ $post->summary }}
                                </p>
                                <div class="post-card-info">
                                    <ul class="list-inline">
                                        <li><a href="{{ route('about') }}"><img src="{{ $post->user->avatar }}" alt=""></a></li>
                                        <li>
                                            <a href="{{ route('about') }}">{{ $post->user->name }}</a>
                                        </li>
                                        <li class="dot"></li>
                                        <li>{{ $post->created_at->diffForHumans() }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--/-->
                    </div>
                    @endforeach
                </div>
            </div>

            <div class="col-lg-4 max-width">
                <!--widget-latest-posts-->
                @include('includes.latest')
                <!--/-->

                <!--widget-categories-->
                @include('includes.categories')
                <!--/-->

                <!--widget-tags-->
                @include('includes.tags')
                <!--/-->
            </div>

            {{ $posts->links() }}
        </div>
    </div>
</section>
<!--/-->
@endsection
