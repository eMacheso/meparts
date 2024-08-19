@extends('layouts.master')
@section('content')
@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
        crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css"
        crossorigin="anonymous" />
@endsection
    
<div class="d-flex justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between">
                    <div>  </div>
                    <div>
                <span> 
                      {{-- <button  type="button" class="btn btn-info btn-sm"  
                     data-toggle="modal"
                     data-target="#exampleModalCenter">
                    create</button> --}}
                    <a href="{{ route('orderpaper.create') }}" class="btn btn-info btn-sm">create</a>
                </span>
                    <a href="{{ route('orderpaper.import') }}" class="btn btn-primary btn-sm" >import</a>
                </div>
            </div>

            {{-- modal --}}

            <form action=" {{ route('submitquestion') }} " method="post">
                    @csrf
                    <div class="modal fade" id="" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Complete the  order paper form </h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="">Hon. MP Name</label>
                                                <input name="member_name" type="text" class="form-control" >
                                                </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Constituency</label>
                                            <select name="constituency" id="constituency_id" 
                                                                class="select2 block mt-1 w-full rounded-full form-control  border-purple-300 hover:border-purple-300"
                                                                required autofocus>    
                                                    @foreach ($constituencies as $constituency)
                                                            <option value=" {{$constituency->name}} " > {{ $constituency->name }} </option>
                                                    @endforeach

                                                            </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                {{-- <label for="">Question</label> --}}
                                            <textarea name="question" id="question" cols="30" rows="10" class="form-control"
                                            placeholder="Enter the Hon. MP Question"
                                            ></textarea>
                                            </div>
                                        </div>
                                        </div> 
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary ">Submit Now</button>

                                    <button type="button" class="btn btn-secondary"
                                        data-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
              </form>

                <div class="justify-content-between">
                    <div>
                       <h3>Questions to the Minister</h3>
                        <small><i>These are questions  recorded 24 hours before the current seating</i></small>
                       @forelse ($questions as $question)
                          <div class="card">
                              <div class="d-flex justify-content-between">
                                <div  class="card-title pl-2 pt-2 "><strong>Hon. {{ $question->member_name }} </strong></div>
                                <div  class="card-title pr-4 pt-2"><strong> {{ $question->constituency }} </strong></div>
                           
                              </div>
                              <div class="card-body">
                                  <h5 class="card-title"> {{ $question->constituency_id }} </h5>
                                  <p class="card-text">{{ Str::limit($question->question, 100, '...')  }} <span><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></span>
                                </p> 
                              </div>
                          </div>
                          @empty 
                          <div class="card">
                              <div class="card-body">
                                  {{-- <h5 class="card-title">Title</h5> --}}
                                  <p class="card-text text-center"> No records yet </p>
                              </div>
                          </div>

                       @endforelse
                     
                       
                    </div>
               <div>
                        {{-- {{ $questions->links() }} --}}
               </div>
                </div>
      
            </div>
            <div class="card-body">
                <div class="">
                    <div class="d-flex justify-content-center">
                        <div class="col-md-10 pr-1">
                            <div class="form-group">
                           
    
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
crossorigin="anonymous"></script>
@if (Session::has('success'))
<script>
    toastr.success("{!! Session::get('success') !!}");

</script>
@endif
@endsection