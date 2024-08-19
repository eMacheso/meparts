@extends('layouts.master')

@section('title')

@endsection
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Create a new session</h5>
                        <p class="card-text">

                            <form action=" {{route('session.store')}} " method="post">
                                @if ($errors)
                                @foreach ($errors->all() as $error)
                                        <div class="alert alert-danger">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                               @endif
                                @csrf
                                <div class="form-group">
                                    <label for="session">Session number</label>
                                    <input type="number" required name="sesion_number" class="form-control"  >
                                </div>
                                <input type="submit" class="btn btn-sm btn-primary" value="create" >
                            </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
