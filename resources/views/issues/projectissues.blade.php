@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>All MoE Project Management Issues</h3>
                
            </div>
            
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=" {{url('/')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Issues</li>
                    </ol>
                </nav>
            </div> --}}
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                {{-- MoE Project Management Issues --}}
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>


                    <th>Id</th>
                            <th>Project</th>
                            <th>activity</th>
                            <th>Directorate</th>
                            <th>Date Due</th>
                            <th>Status</th>
                            <th>Budget</th>
                    </thead>
                    <tbody>
                   
                    @foreach ($directorates as $dir)
                     @foreach ($project_issues as $project_issue)

                                    @if ($dir->id == $project_issue->directorate_id  )
                        <tr>
                        <td>{{ $project_issue->id }}</td>
                        <td>{{ $project_issue->project_name }}</td>
                        <td>{{ $project_issue->activity }}</td>
                       
                                    <td>    {{ $dir->dir_name }}</td>

                       
                        <td>{{ $project_issue->date_due }}</td>
                        <td>{{ $project_issue->status }}</td>
                        <td>{{ $project_issue->budget }}</td>
                        <td>{!! Str::limit($project_issue->projectissue,40,'...') !!}</td>
                        <td> <a href=" {{ route('projectdirection',$project_issue->id) }} " class="btn btn-sm btn-success" ><i class="bi bi-eye-fill"></i> View</a> </td>
                        @if ($project_issue->status != "Done")
                        <td> <a href=" {{ route('viewprojectissue',$project_issue->id) }} " class="btn btn-sm btn-success" ><i class="bi bi-eye-fill"></i> Update</a> </td>
                        @endif    
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
    let dataTable = new simpleDatatables.DataTable(table1,{
        searchable: true,
        button:[
            'print'
        ]
    });
// } );

</script>

    
@endsection