@extends('layouts.master')

@section('title','Parliamentary Session Meetings')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="d-flex justify-content-between">
                <div>
                    <h3>All Meetings</h3>
                </div>
            </div>

               <table class="table table-striped">

                    <thead class="thead-light">
                        <tr>
                            <th>Session #</th>
                            <th>Meeting #</th>
                            <th>Date</th>
                            <th>Number of Questions</th>
                            <th>View Meeting Details</th>
                        </tr>
                    </thead>

                   <tbody>
                    @forelse ($meetings as $meeting)
                    <tr class="mt-4">
                    @foreach ($sesions as $ses)
                                    @if ($ses->id == $meeting->sesion_id  )
                                    <td>    {{ $ses->sesion_number }}</td>
                                    @endif
                                @endforeach
                    
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
           </div>
        </div>
    </div>

</div>

@endsection
