@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="d-flex justify-content-between order-md-1 order-last">
                <div>
                    <h3>Notice Board</h3>
                    <p class="text-subtitle text-muted"> For Internal Communications Only </p>
                </div>
                <div class="">
                    <a href=" {{route('announcements.create')}} " class="btn btn-primary" >New Announcement</a>
                </div>
            </div>

        </div>
    </div>
    <section class="section">
        @foreach ($announcements as $announcement)
            <div class="card">
                <div class="card-body">
                    <h5>{{ $announcement->title }}</h5>
                    <div class="mr-3" > {{ $announcement->created_at->diffForHumans() }} </div>
                    <hr>
                    {!!  $announcement->announcement  !!}
                    <a href="docs/{{ $announcement->attachment }}" download> {{ $announcement->attachment }} </a>

                    @if ( auth()->user()->role == 'admin' )
                        <form action="{{ route('announcements.destroy',$announcement->id) }}" method="post">
                            @csrf
                            @method('DELETE')
                            <input type="submit" class="btn btn-danger mt-2 btn-sm"  value="remove">
                        </form>
                    @endif
                </div>
            </div>
        @endforeach

        {{ $announcements->links() }}

    </section>
</div>



@endsection

