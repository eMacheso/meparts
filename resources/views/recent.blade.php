@extends('layouts.master')

@section('content')
<div class="col-md-12">
    <div class="d-flex justify-content-between">
   
            <div class="col-md-8" >
              <div class="card">
                  <div class="card-body">
                      <h5 class="card-title info">Recent Questions</h5>
                      {{-- <p class="card-text">Content</p> --}}
                      <div class="table-responsive">
                        <table class="table table-striped">
                          <thead class=" text-primary">

                            <th>
                              MP Name
                            </th>

                            <th>
                              Constituency
                            </th>
                            <th>
                              Question
                            </th>

                          </thead>
                          <tbody>

                          <tbody>


                            {{-- @foreach ($questions as $question)
                            <tr>
                              {{-- @if ($question->response == null) --}}

                              {{-- <td>
                                {{ $question->member_name }}

                                 </td>
                                 <td>
                                   {{  $question->constituency }}
                                 </td>
                                 <td>
                               {{ Str::limit($question->question, 20, '...') }}
                                 </td>
                                 <td>
                                  <a href="{{ route('minister_respond',$question->id) }}"
                                    class="btn btn-sm btn-info"> response <i class="material-icons">edit</i></a>
                                  </td> --}}





                                  {{-- @endforeach  --}}

                                </table>
                                {{-- {{ $questions->links() }} --}}
                              </div>
                            </div>
                          </div>

                        
                          <div class="container">
                            <div class="d-flex justify-content-between">
                              <div>

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