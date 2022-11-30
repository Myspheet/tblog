@extends('app')

@section('content')

    <!--carousel-hero-->
    <section class="section carousel-hero">
        <div class="owl-carousel">
            @foreach ($topPosts as $post )
                <div class="hero d-flex align-items-center " style="background-image: url('{{asset($post->featured_image)}}')">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                                <div class="hero-content">
                                    <a href="{{ route('topics', $post->topic[0]->name) }}" class="categorie">{{$post->topic[0]->name}}</a>
                                    <h2>
                                        <a href="{{ route('post', $post->slug) }}">{{ $post->title }} </a>
                                    </h2>

                                    <div class="post-card-info">
                                        <ul class="list-inline">
                                            <li>
                                                <a href="author.html">
                                                    <img src="assets/img/author/1.jpg" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="author.html">{{ $post->user->name }}</a>
                                            </li>
                                            <li class="dot"></li>
                                            <li>{{ $post->created_at->diffForHumans() }}</li>
                                            <li class="dot"></li>
                                            <li>{{ $post->readTime }}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
    <!--/-->

    <section class="section pt-20">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-lg-12 mt-10">
                    <div class="about-us">
                        {{-- <div class="about-us-image">
                            <img src="assets/img/about-us.jpg" alt="">
                        </div> --}}
                        <div class="description" style="text-align: center">
                            <h6>Welcome blog.</h6>
                            <p>
                                Hello, welcome to my blog!
                            </p>
                            <p>
                                I am Aanuoluwa, your talk-to-girl and online friend.
                            </p>
                            {{-- <div class="quote">
                                <div>
                                    <i class="icon_quotations_alt"></i>
                                </div>
                                <p>
                                    "My website’s kind of fun for me. I get to do drawings on that.
                                    It’s kind of fun.”
                                </p>
                                <small>Example User</small>
                            </div> --}}
                            <p>
                                I'm the kind of girl you'll wish to journey ahead of you as I'll share all my experiences without mincing words.                            
                            </p>
                            <p>
                                I've always wished we'll have people who will be willing to share their experiences and shed more light on issues that bother young people especially without prejudice or judgement and so I have decided, despite all procrastination to do this.
                            </p>
                            <p>
                                So as we get on this ride, do not hesitate to chatter with me, share your thoughts and opinions 
                                Pls, feel free to contact me. I'll reply as fast as possible because you matter to me.
                            </p>
                            <p>You're welcome once again!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--grid-layout-->
    <section class="mt-80">
        <div class="container-fluid">
            <div class="row">
                @foreach ($posts as $post)
                    <div class="col-lg-6 col-md-6">
                        <!--Post-1-->
                        <div class="post-card">
                            <div class="post-card-image">
                                <a href="{{ route('post', $post->slug) }}">
                                    <img src="{{asset($post->featured_image)}}" alt="">
                                </a>

                            </div>
                            <div class="post-card-content">
                                <a href="{{ route('topics', $post->topic[0]->name) }}" class="categorie">{{$post->topic[0]->name}}</a>
                                <h5>
                                    <a href="{{ route('post', $post->slug) }}">{{ $post->title }} </a>
                                </h5>
                                <p>{{ $post->summary }}
                                </p>
                                <div class="post-card-info">
                                    <ul class="list-inline">
                                        <li>
                                            <a href="{{ route('about') }}">
                                                <img src="assets/img/author/1.jpg" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a href="{{route('about')}}">{{ $post->user->name }}</a>
                                        </li>
                                        <li class="dot"></li>
                                        <li>{{ $post->created_at->diffForHumans() }}</li>
                                        <li class="dot"></li>
                                        <li>{{ $post->readTime }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--/-->
                    </div>
                @endforeach

            </div>
        </div>
    </section>
    <!--/-->

@endsection
