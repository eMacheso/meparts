@extends('layouts.master')
@section('title','Parliamentary Sessions')
@section('content')
    <div class="d-flex justify-content-between">
       <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                  @endif
                    {{-- @foreach ($sesions as $sesion) --}}
                    <div class="row">
                        <div class="col-md-12">
                                <div class="card">

                                    <div class="card-body">
                                        <h5 class="card-title">Parliamentary Session</h5>
                                        {{-- <p class="card-text"> <h1> <strong> {{$sesion->id}}</strong> </h1>  </p> --}}

                                        <button class="btn btn-primary"
                                                type="button" class="btn btn-primary" data-toggle="modal"
                                                data-target="#exampleModalCenter"
                                          >create a meeting</button>
                                      <a href=" {{ route('meetings.view') }} " class="btn btn-info" >view meetings </a>
                                        <button class="btn btn-secondary">update meetings</button>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        {{-- @endforeach --}}

                </div>
            </div>
        </div>

       </div>
    </div>
    </div>
                   <!-- Modal -->
                   <form action=" {{route('meeting.store')}} " method="post">
                       @csrf
                   <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                       aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                       <div class="modal-dialog modal-dialog-centered" role="document">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <h5 class="modal-title" id="exampleModalLongTitle">Complete the following fields</h5>
                                   <button type="button" class="close" data-dismiss="modal"
                                       aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                   </button>
                               </div>
                               <div class="modal-body">

                                      <div class="row">
                                        <div class="col-md-12">
                                          <div class="form-group">
                                              <label for="">Meeting Number</label>

                                              <input class="form-control" type="number" name="meeting_number" >
                                              </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="label-control">Datetime</label>
                                                <input type="text" class="form-control datetimepicker" name="created_at" value=" {{ now() }} "/>
                                            </div>

                                        </div>
                                       </div>
                               </div>
                               <div class="modal-footer">
                                   <button type="submit" class="btn btn-primary ">Create</button>

                                   <button type="button" class="btn btn-secondary"
                                       data-dismiss="modal">Cancel</button>
                               </div>
                           </div>
                       </div>
                   </div>
               </form>
                  </div>
              </div>
                </div>

        </div>

    </div>
</div>



@endsection

@section('js')


<script type="text/javascript">
// Data Picker Initialization
$('.datepicker').pickadate();

$('.datetimepicker').datetimepicker({
    icons: {
        time: "fa fa-clock-o",
        date: "fa fa-calendar",
        up: "fa fa-chevron-up",
        down: "fa fa-chevron-down",
        previous: 'fa fa-chevron-left',
        next: 'fa fa-chevron-right',
        today: 'fa fa-screenshot',
        clear: 'fa fa-trash',
        close: 'fa fa-remove'
    }
});

</script>
@endsection
