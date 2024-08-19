
@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Responded Questions</h3>
                {{-- <p class="text-subtitle text-muted">For user to check they list</p> --}}
            </div>
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=" {{url('/')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Questions</li>
                    </ol>
                </nav>
            </div> --}}
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                Parliamentary Session Questions
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>
                        <tr>
                            <th>SN</th>
                            <th>Meeting</th>

                            <th>Hon. MP Name</th>
                            {{-- <th> Constituency  </th> --}}
                            <th>Question</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($questions as $question)
                        <tr>
                                <td>{{$question->id}}</td>
                                <td>{{$question->meeting_id}}</td>

                                <td>{{$question->member_name}}</td>

                             {{-- @foreach ($constituencies as $const)
                                    @if ($const->id == $question->constituency_id  )
                                    <td>    {{ $const->name }}</td>
                                    @endif
                                @endforeach --}}
                            <td>{!! Str::limit($question->question,40,'...') !!}</td>
                            <td> <a href=" {{ route('minister_respond',$question->id) }} " class="btn btn-sm btn-success" > <i class="bi bi-eye-fill"></i> view</a> </td>

                           {{-- <td>
                               <span class="badge bg-success">Active</span>
                           </td> --}}

                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>

<script src=" {{asset('assets/vendors/simple-datatables/simple-datatables.js')}} "></script>
<script>
    // Simple Datatable
    let table1 = document.querySelector('#table1');
    let dataTable = new simpleDatatables.DataTable(table1);
</script>


@endsection
