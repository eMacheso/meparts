@extends('layouts.master')
@section('title','Parliamentary Sessions')
@section('page-header', 'Parliamentary Sessions')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="d-flex justify-content-between">
                    <div>
                        <h3>All Sessions</h3>
                    </div>
                    <div>
                        <button type="button" class="btn btn-sm btn-primary mb-2" data-bs-toggle="modal"
                            data-bs-target="#inlineForm">
                            New Session
                        </button>
                    </div>
                </div>
                @forelse ($sesions as $sesion)
                    <div class="card">

                        <div class="card-body">
                            <h5 class="card-title">Parliamentary Session Number</h5>
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h2 class="card-text"> <strong> {{$sesion->sesion_number}}</strong> </h2>
                                </div>
                                <div>
                                    <a href=" {{ route('sesion.meetings.view', $sesion->sesion_number) }} " class="btn-sm btn btn-info float-right" >view meetings </a>
                                </div>
                            </div>

                        </div>
                        </div>
                        @empty
                        <h3>No sessions recorded</h3>
                @endforelse

            </div>
        </div>

    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
            role="dialog" aria-labelledby="myModalLabel33" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable"
                role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel33">Creating New Session</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"
                            aria-label="Close">
                            <i data-feather="x"></i>
                        </button>
                    </div>
                    <form action="{{route('session.store')}}" method="post">
                        @csrf
                        <div class="modal-body">
                            <label>Session: </label>
                            <div class="form-group">
                                <input type="number" placeholder="Parliamentary Session Number"
                                    class="form-control" name="sesion_number">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger"
                                data-bs-dismiss="modal">
                                <i class="bx bx-x d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Close</span>
                            </button>
                            <button type="submit" class="btn btn-success ml-1"
                                >
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Create</span>
                            </button>
                        </div>
                    </form>
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
