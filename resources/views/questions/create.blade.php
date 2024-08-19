@extends('layouts.master')

@section('title')

@endsection
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Enter a new  question to Meeting {{ $meeting->meeting_number }} of this session</h5>
                        <p class="card-text">

                            <form action=" {{ route('submitquestion', $meeting->id) }} " method="post">
                                @csrf
                                @if ($errors)
                                    @foreach ($errors->all() as $error)
                                        <div class="alert alert-danger">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                                @endif
                                <div class="row">
                                    <div class="col-md-12">
                                      <div class="form-group">
                                          <label for="">Hon. MP Name</label>
                                          <input name="member_name" type="text" class="form-control" required autofocus>
                                          </div>
                                    </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="">Constituency</label>
                                        <input type="text" name="constituency" id="const" list="constituencies" class="form-control" required>
                                        <datalist id="constituencies">

                                            @foreach ($constituencies as $constituency)
                                                    <option value="{{ $constituency->name }}" ></option>
                                            @endforeach
                                        </datalist>
                                    
                                    </div>
                                  </div>
                              </div>
                                <div class="row">
                                  <div class="col-md-12">
                                      <div class="form-group">
                                        <label for="">Question</label>
                                      <textarea name="question" cols="10" rows="10" class="form-control" id="summernote"
                                      placeholder="Enter the Hon. MP Question"
                                      ></textarea>
                                      </div>
                                  </div>
                                 </div>
                                <div class="row">
                                  <div class="col-md-12">
                                      <div class="form-group">
                                        <label for="">Response</label>
                                      <textarea name="response" cols="10" rows="10" class="form-control" id="summernote2"
                                      placeholder="Enter the Hon. MP Response. Can be left empty for now!"
                                      ></textarea>
                                      </div>
                                  </div>
                                 </div>
                                <div class="row">
                                  <div class="col-md-12">
                                      <div class="form-group">
                                        <label for="">Commitment</label>
                                      <textarea name="commitment" cols="10" rows="10" class="form-control" id="hint"
                                      placeholder="Enter the Hon. MP Response Commitment"
                                      ></textarea>
                                      </div>
                                  </div>
                                 </div>
                         </div>
                         <div class="modal-footer">
                             <button type="submit" class="btn btn-primary btn-sm ">Save</button>
                         </div>
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
