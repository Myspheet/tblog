<div class="widget ">
    <div class="section-title">
        <h5>Popular Posts</h5>
    </div>
    <ul class="widget-latest-posts">
        @php
            $position = 1;
        @endphp
        @foreach($latestPosts as $post)
            <li class="last-post">
                <div class="image">
                    <a href="{{ route('post', $post->slug) }}">
                        <img src="{{$post->featured_image}}" alt="...">
                    </a>
                </div>
                <div class="nb">{{ $position }}</div>
                <div class="content">
                    <p><a href="{{ route('post', $post->slug) }}">{{$post->title}}</a></p>
                    <small><span class="icon_clock_alt"></span> {{$post->readTime}}</small>
                </div>
            </li>
            @php
                $position++ ;
            @endphp
        @endforeach
    </ul>
</div>
