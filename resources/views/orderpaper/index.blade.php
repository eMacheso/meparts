@extends('layouts.master')

@section('content')

<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Order Paper</h3>
                <p class="text-subtitle text-muted">A List of All Orderpaper Documents, they can be downloaded for quick references</p>
            </div>
            {{-- <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=" {{url('/')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Order Paper</li>
                    </ol>
                </nav>
            </div>
        </div> --}}
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                {{-- Simple Datatable --}}
            </div>
            <div class="row justify-content-center">

            </div
            <div class="card-body">
                <table class="table table-striped" id="table1">

                    <tbody>
                        @foreach ($orderpapers as $op)
                                    <tr>
                                        {{-- {{ $op }} --}}
                                        <td><a href="order_papers/{{$op->order_paper}}" download  > {{ $op->order_paper}}  </a></td>

                                        {{-- <embed src="{{ $op->orderpaper }}" type="applications/pdf" width="100" height="600px"> --}}
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
