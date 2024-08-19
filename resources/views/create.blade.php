@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>New Record </h3>
                <p class="text-subtitle text-muted">Fill in the following form with the appropriete records and  click submit 
                </p>
            </div>
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=" {{url('/')}} ">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">New Record</li>
                    </ol>
                </nav>
            </div> --}}
        </div>
    </div>
    <section class="section">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title"></h4>
                    </div>
                    <div class="card-body">
                        <form action=" {{ route('submitquestion',1) }} " method="POST" >
                            @csrf 

                            <div class="form-group">
                              <label for="">MP Name</label>
                              <input type="text" name="member_name" id="" class="form-control" placeholder="" required aria-describedby="helpId">
                              {{-- <small id="helpId" class="text-muted">Help text</small> --}}
                            </div>
                            <div class="form-group">
                              <label for="">Constituency</label>
                              <select class="form-control" name="constituency" id="" required >
                                <option selected > Choose one</option>
                                @foreach($constituencies as $const)
                                <option value=" {{ $const->id }} "  > {{ $const->name }} </option>
                                @endforeach
                              </select>
                            </div>

                          <div class="form-group">
                              <label for="my-input">Question</label>

                              <textarea name="question" id="summernote" cols="30" rows="10" required ></textarea>
                          
                          </div>
                          {{-- <button id="top-right" class="btn btn-outline-primary btn-block btn-lg">Top
                            Right</button> --}}
                          <button type="submit"  class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
</div>

<script src="  {{asset('assets/vendors/jquery/jquery.min.js')}} "></script>
<script src=" {{asset('assets/vendors/summernote/summernote-lite.min.js')}} "></script>
<script>
    $('#summernote').summernote({
        tabsize: 2,
        height: 120,
    })
    $("#hint").summernote({
        height: 100,
        toolbar: false,
        placeholder: 'type with apple, orange, watermelon and lemon',
        hint: {
            words: ['apple', 'orange', 'watermelon', 'lemon'],
            match: /\b(\w{1,})$/,
            search: function (keyword, callback) {
                callback($.grep(this.words, function (item) {
                    return item.indexOf(keyword) === 0;
                }));
            }
        }
    });

</script>

@endsection