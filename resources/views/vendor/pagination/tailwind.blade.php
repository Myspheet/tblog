@if ($paginator->hasPages())
    <div class="col-lg-12">
        <div class="pagination mt--10">
            <ul class="list-inline">
                {{-- Previous Page Link --}}
                @if ($paginator->onFirstPage())
                @else
                    <li>
                        <a href="{{ $paginator->previousPageUrl() }}">
                            <i class="arrow_carrot-2left"></i>
                        </a>
                    </li>
                @endif

                {{-- Pagination Elements --}}
                @foreach ($elements as $element)

                    {{-- Array Of Links --}}
                    @if (is_array($element))
                        @foreach ($element as $page => $url)
                            @if ($page == $paginator->currentPage())
                                <li class="active">
                                    <a>{{ $page }}</a>
                                </li>
                            @else
                                <li>
                                    <a href="{{ $url }}">{{ $page }}</a>
                                </li>
                            @endif
                        @endforeach
                    @endif
                @endforeach

                {{-- Next Page Link --}}
                @if ($paginator->hasMorePages())
                    <li>
                        <a href="{{ $paginator->nextPageUrl() }}">
                            <i class="arrow_carrot-2right"></i>
                        </a>
                    </li>
                @endif

            </ul>
        </div>
        <!--/-->
    </div>
@endif
