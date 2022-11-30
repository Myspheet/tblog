@extends('app')

@section('content')

    <!--post-default-->
    <section class="section pt-55 ">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 mb-20">
                    <!--Post-single-->
                    <div class="post-single">
                        <div class="post-single-image">
                            <img src="{{ asset($post->featured_image)}}" alt="{{ $post->featured_image_caption }}">
                        </div>
                        <div class="post-single-content">
                            <a href="{{ route('topics', $post->topic[0]->slug) }}" class="categorie">{{ $post->topic[0]->name }}</a>
                            <h4>{{$post->title}} </h4>
                            <div class="post-single-info">
                                <ul class="list-inline">
                                    <li><a href="{{ route('about') }}"><img src="{{ $post->user->avatar }}" alt=""></a></li>
                                    <li><a href="{{ route('about') }}">{{$post->user->name}}</a> </li>
                                    <li class="dot"></li>
                                    <li>{{ $post->created_at->diffForHumans() }}</li>
                                    <li class="dot"></li>
                                    <li>{{ $post->readTime }}</li>
                                </ul>
                            </div>
                        </div>

                        <div class="post-single-body">
                            {!! $post->body !!}
                        </div>

                        <div class="post-single-footer">
                            <div class="tags">
                                <ul class="list-inline">
                                    @foreach($post->tags as $tag)
                                        <li>
                                            <a href="{{ route('tags', $tag->slug) }}"> {{ $tag->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div> <!--/-->

                    <!--next & previous-posts-->
                    {{-- <div class="row">
                        <div class="col-md-6">
                            <div class="widget">
                                <div class="widget-next-post">
                                    <div class="small-post">
                                        <div class="image">
                                            <a href="post-default.html">
                                            <img src="assets/img/latest/1.jpg" alt="...">
                                            </a>
                                        </div>
                                        <div class="content">
                                            <div>
                                                <a class="link" href="post-default.html"><i class="arrow_left"></i>Preview post</a>
                                            </div>
                                            <a href="post-default.html">7 Healty Dinner Recipes for a Date Night at Home</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="widget">
                                <div class="widget-previous-post">
                                    <div class="small-post">
                                        <div class="image">
                                            <a href="post-default.html">
                                               <img src="assets/img/blog/2.jpg" alt="...">
                                            </a>
                                        </div>
                                        <div class="content">
                                            <div>
                                                <a class="link" href="post-default.html">
                                                    <span> Next post</span>
                                                    <span class="arrow_right"></span>
                                                </a>
                                            </div>
                                            <a href="post-default.html">How to Choose Outfits for Work for woman and men</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <!--/-->

                    <!--widget-comments-->
                    {{-- <div class="widget mb-50">
                        <div class="title">
                            <h5>3 Comments</h5>
                        </div>
                        <ul class="widget-comments">
                            <li class="comment-item">
                                <img src="assets/img/user/1.jpg" alt="">
                                <div class="content">
                                    <ul class="info list-inline">
                                        <li>Mohammed Ali</li>
                                        <li class="dot"></li>
                                        <li> January 15, 2021</li>
                                    </ul>
                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus at doloremque adipisci eum placeat
                                        quod non fugiat aliquid sit similique!
                                    </p>
                                    <div><a href="#" class="link"> <i class="arrow_back"></i> Reply</a></div>
                                </div>
                            </li>
                            <li class="comment-item">
                                <img src="assets/img/author/1.jpg" alt="">
                                <div class="content">
                                    <ul class="info list-inline">
                                        <li>Simon Albert</li>
                                        <li class="dot"></li>
                                        <li> January 15, 2021</li>
                                    </ul>

                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus at doloremque adipisci eum placeat quod non
                                        fugiat aliquid sit similique!
                                    </p>
                                    <div>
                                        <a href="#" class="link">
                                            <i class="arrow_back"></i> Reply</a>
                                    </div>
                                </div>
                            </li>
                            <li class="comment-item">
                                <img src="assets/img/user/2.jpg" alt="">
                                <div class="content">

                                    <ul class="info list-inline">
                                        <li>Adam bobly</li>
                                        <li class="dot"></li>
                                        <li> January 15, 2021</li>
                                    </ul>

                                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus at doloremque adipisci eum placeat
                                        quod non fugiat aliquid sit similique!
                                    </p>

                                    <div>
                                        <a href="#" class="link">
                                            <i class="arrow_back"></i> Reply</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                       <!--Leave-comments-->
                        <div class="title">
                            <h5>Leave a Reply</h5>
                        </div>
                        <form class="widget-form" action="#" method="POST" id="main_contact_form">
                            <p>Your email adress will not be published ,Requied fileds are marked*.</p>
                            <div class="alert alert-success contact_msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea name="message" id="message" cols="30" rows="5" class="form-control" placeholder="Message*" required="required"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Name*" required="required">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email*" required="required">
                                    </div>
                                </div>
                                <div class="col-12 mb-20">
                                    <div class="form-group">
                                        <input type="text" name="website" id="website" class="form-control" placeholder="website">
                                    </div>
                                    <label>
                                        <input name="name" type="checkbox" value="1" required="required">
                                       <span>save my name , email and website in this browser for the next time I comment.</span>
                                    </label>
                                </div>
                                <div class="col-12">
                                    <button type="submit" name="submit" class="btn-custom">
                                        Post Comment
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div> --}}
                </div>
                <div class="col-lg-4 max-width">
                    <!--widget-author-->
                    <div class="widget">
                        <div class="widget-author">
                            <a href="author.html" class="image">
                                <img src="{{$post->user->avatar}}" alt="">
                            </a>
                            <h6>
                                <span>Hi, I'm {{ $post->user->name }}</span>
                            </h6>
                            <p> {{ $post->user->summary }} </p>

                            <div class="social-media">
                                <ul class="list-inline">
                                    <li>
                                        <a href="#" class="color-facebook">
                                            <i class="fab fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="color-instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="color-twitter">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="color-youtube">
                                            <i class="fab fa-youtube"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="color-pinterest">
                                            <i class="fab fa-pinterest"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--/-->

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
            </div>
        </div>
    </section><!--/-->

@endsection
