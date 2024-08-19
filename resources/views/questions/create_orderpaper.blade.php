@extends('layouts.master')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">The Orderpaper Record</h5>
                    <small>fill in the following fields to create a new record</small>
                    <p class="card-text">
                        <form action=" {{ route('orderpaper.store') }} " method="post" enctype="multipart/form-data" >
                            @csrf
                                <div class="row">
                                    <div class="col-md-12">
                                      <div class="form-group">
                                          <label for="">Document</label>
                                          <input name="orderpaper" type="file" class="form-control" >
                                          </div>
                                    </div>
                                </div>
                               
                                
                         {{-- </div> --}}
                         <button type="submit" class="btn btn-primary "> Upload<i class="fa fa-upload" aria-hidden="true"></i></button>
                    </form>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
