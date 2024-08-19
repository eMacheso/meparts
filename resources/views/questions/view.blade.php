@extends('layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col">
            <div class="d-flex justify-content-end">
                <div>
                    <a href=" {{ url()->previous() }} " class="btn btn-sm btn-dark mb-2">back</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
           <div class="card">
               <div class="card-body">
                   <h5 class="card-title">
                    <div class="d-flex justify-content-between">
                        <div>
                          Hon.   {{ $question->member_name }}
                        </div>
                        <div>
                                {{ $question->constituency }}
                        </div>
                    </div>


                    <hr>

                        <p  class="lead pt-4" >
                            {!! $question->question !!}
                        </p>


                </h5>
                <hr>
                <br>
                <br>
                <h3>Response</h3>
                   <p class="card-text">

                <form action=" {{ route('questions.update',$question->id) }} " method="post">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <textarea name="response" id="summernote" cols="30" rows="10" class="form-control"> {!! $question->response !!} </textarea>
                    </div>
                                <br>
                                <br>
                   <h3>Commitment</h3>
                    <div class="form-group">
                        <textarea name="commitment" id="summernote2" cols="30" rows="10" class="form-control"> {!! $question->commitment !!} </textarea>
                    </div>


                    {{-- <div class="form-group">
                        <textarea name="commitiments" id="" cols="30" rows="10" class="form-control"

                        > {{ $question->commitiments }}</textarea>
                    </div> --}}


                    <input type="submit" value="submit"  class=" btn btn-primary btn-sm form-control">
                </form>

                   </p>
               </div>
           </div>
        </div>
    </div>
</div>
<script src="  {{asset('assets/vendors/jquery/jquery.min.js')}} "></script>
<script src=" {{asset('assets/vendors/summernote/summernote-lite.min.js')}} "></script>
<script>
    $('#summernote').summernote({
        tabsize: 2,
        height: 120,
    })
    $('#summernote2').summernote({
        tabsize: 2,
        height: 180,
    })
    $("#hint").summernote({
        height: 100,
        toolbar: false,
        placeholder: 'commitements',
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

