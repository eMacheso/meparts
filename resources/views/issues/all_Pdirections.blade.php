@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>All Issues</h3>
                <p class="text-subtitle text-muted">MoE Project Management Issues</p>
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
                {{-- MoE ORT Management Issues --}}
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>


                    <th>Id</th>
                            <th>Directorate</th>
                            <th>activity</th>
                            <th>direction</th>
                            <th>Date Given</th>
                            
                    </thead>
                    <tbody>
                   
                    @foreach ($projectissues as $projectissue)
                     @foreach ($projectdirection as $projectdir)

                                    @if ($projectissue->id == $projectdir->project_activity_id )
                        <tr>
                        <td>{{ $projectdir->id }}</td>
                        @foreach ($directorates as $dir)
                         @if ($dir->id == $projectissue->directorate_id  )
                        <td>    {{ $dir->dir_name}}</td> <!--Get Directorate Name-->
                        @endif
                                @endforeach
                        <td>    {{ $projectissue->activity}}</td>
                        <td>{{ $projectdir->direction }}</td>
                        <td>{{ $projectdir->date }}</td>
                       
                        
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