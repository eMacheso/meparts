@extends('layouts.master')

@section('title')
Creating a Meeting
@endsection

@section('styles')

@endsection
@section('content')

    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Create a meeting for session {{ $sesion_number }}</h5>
                        <p class="card-text">

                            <form action=" {{route('meeting.store', $sesion_number)}} " method="post" enctype="multipart/form-data">
                                @if ($errors)
                                    @foreach ($errors->all() as $error)
                                        <div class="alert alert-danger">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                                @endif
                                @csrf
                                <div class="form-group">
                                    <label for="session">Meeting Number</label>
                                    <input type="number" required name="meeting_number" class="form-control" value="{{ old('meeting_number') }}" >
                                </div>
                                <div class="form-group">
                                    <label for="session">Date</label>
                                    <input type="date" required name="date" class="form-control"  value="{{ old('date') }}">
                                </div>
                                <div class="form-group">
                                    <label for="session">Order Paper</label>
                                    <input type="file" class="form-control" required name="paper" accept="application/pdf">
                                </div>
                                <input type="submit" class="btn btn-sm btn-success" value="create" >
                            </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
