<div class="widget">
    <div class="section-title">
        <h5>Tags</h5>
    </div>
    <div class="widget-tags">
        <ul class="list-inline">
            @foreach($latestTags as $tag)
                <li>
                    <a href="{{ route('tags', $tag->slug) }}">{{ $tag->name }}</a>
                </li>
            @endforeach
        </ul>
    </div>
</div>
