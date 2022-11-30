<div class="widget">
    <div class="section-title">
        <h5>Categories</h5>
    </div>
    <ul class="widget-categories">
        @foreach($latestTopic as $topic)
            <li>
                <a href="#" class="categorie">{{ $topic->name }}</a>
                <span class="ml-auto"> {{ $topic->posts->count() }} Posts</span>
            </li>
        @endforeach
    </ul>
</div>
