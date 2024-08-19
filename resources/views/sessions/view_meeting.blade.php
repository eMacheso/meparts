@extends('layouts.master')

@section('title','Parliamentary Session Meetings')
@section('page-header')
Parliamentary Session {{ $sesion_number }} meetings
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="d-flex justify-content-between">
                <div>
                    <h3>Current Meetings for Session {{ $sesion_number }}</h3>
                </div>
                @if (auth()->user()->role == 'Admin')
                <div>
                    <a href="{{ route('meeting.create', $sesion_number) }}" class="btn btn-primary mb-2">
                        Add Meeting
                    </a>
                </div>
                @endif
                
            </div>

               <table class="table table-striped">

                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Date</th>
                            <th>Questions</th>
                            <th>View Meeting Details</th>
                        </tr>
                    </thead>

                   <tbody>
                    @forelse ($meetings as $meeting)
                    <tr class="mt-4">
                    <td> {{  $meeting->meeting_number}} </td>
                    <td> {{  $meeting->date->toFormattedDateString()}} </td>
                    <td> {{  $meeting->questions_count }}</td>
                    <td><a href="{{ route('meeting.questions', $meeting->id) }}" class="btn btn-info btn-sm"><i class="bi bi-eye-fill"></i>view</a></td>

                </tr>

                @empty

                <td class="text-center" > No records yet </td>

                @endforelse
                   </tbody>
               </table>


               <div>
                    <a class="btn btn-sm btn-dark" href="{{ url()->previous()}} "> back </a>
               </div>
           </div>
        </div>
    </div>

</div>

@endsection
