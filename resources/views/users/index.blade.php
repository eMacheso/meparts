
@extends('layouts.master')
@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Manage Users</h3>
                {{-- <p class="text-subtitle text-muted">For user to check they list</p> --}}
            </div>
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Users</li>
                    </ol>
                </nav>
            </div> --}}
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                {{-- Simple Datatable --}}
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            
                            <th>Role</th>
                        </tr>
                    </thead>
                 

<tbody>
    @foreach ($users as $user)
    {{-- @if ($user->role =='director')--}}
        <tr>
            <td class="text-center">{{ $user->id }}
            </td>
            <td style="width: 150px">
             {{ $user->firstname }} {{ $user->lastname }}
            </td>

            
            <td> {{ $user->email }} </td>
            <td>
               {{ $user->role }}
            </td>
            <td class="td-actions">
                @if ($user->trashed())
                <form action=" {{route('user.activate',$user->id)}}" method="post">
                    @csrf
                    @method('PUT')
                    <span></span>
                    <button type="submit" class="badge bg-primary" >Activate</button>
                </form>

               @else
               <form method="POST" action=" {{route('user.disable',$user->id)}} ">
                @method('DELETE')
                @csrf
                <span></span>
              <button class="badge bg-danger" >disable </button>

            </form>
               @endif
            </td>
        </tr>
        {{--@endif--}}
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
















