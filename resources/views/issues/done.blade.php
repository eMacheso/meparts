
@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>MoE Management Issues that are Done</h3>
                {{-- <p class="text-subtitle text-muted">For user to check the list</p> --}}
            </div>
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=" {{url('/')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Issuess</li>
                    </ol>
                </nav>
            </div> --}}
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
            MoE Management Issues
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>
                    <tr>
                            <th>Id</th>
                            <th>Issue</th>
                            <th>Description</th>
                            <th>Directorate</th>
                            <th>Date Assigned</th>
                            <th>Date Due</th>
                            <th>Status</th>
                    </tr>
                      
                    </thead>
                    <tbody>
                    @foreach ($directorates as $dir)
                     @foreach ($issues as $issue)

                                    @if ($dir->id == $issue->directorate_id  )
                        <tr>
                        <td>{{ $issue->id }}</td>
                        <td>{{ $issue->issue_name }}</td>
                        <td>{{ $issue->issue_description }}</td>
                        
                                    <td>    {{ $dir->dir_name }}</td>
                                    
                        
                        <td>{{ $issue->date_assigned }}</td>
                        <td>{{ $issue->date_due }}</td>
                        <td>{{ $issue->status }}</td>
                        <td>{!! Str::limit($issue->issue,40,'...') !!}</td>
                            <td> <a href=" {{ route('viewissue',$issue->id) }} " class="btn btn-sm btn-success" ><i class="bi bi-eye-fill"></i> view</a> </td>
                            
                           {{-- <td>
                               <span class="badge bg-success">Active</span>
                           </td> --}}
                        </tr>
                        @endif
                                @endforeach
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
