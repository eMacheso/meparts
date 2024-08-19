@extends('layouts.master')
@section('title')
Parliamentary Meeting questions
@endsection

@section('page-header')
 Meeting {{ $meeting->meeting_number }} of this session
@endsection

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="d-flex justify-content-between">
                <div>
                    <h3>Meeting {{ $meeting->meeting_number }} of session {{ $meeting->sesion_id }}</h3>
                </div>
                <div>
                    <a class="btn btn-primary btn-sm" href="{{ route('meeting.questions.create', $meeting->id) }}">
                        Add Question
                    </a>
                </div>
            </div>

          
           <div class="card">
            <table class="table table-striped" id="table1">
                <thead>
                    <tr>
                        <th>SN</th>
                        <th>Meeting</th>
        
                        <th>Hon. MP Name</th>
                        <th> Constituency  </th>
                        <th>Question</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($meeting->questions as $question)
                    <tr>
                            <td>{{$question->id}}</td>
                            <td>{{$question->meeting_id}}</td>
                            
                            <td>{{$question->member_name}}</td>
                          
                         @foreach ($constituencies as $const)
                                @if ($const->id == $question->constituency_id  )
                                <td>    {{ $const->name }}</td>
                                @endif
                            @endforeach
                        <td>{!! Str::limit($question->question,40,'...') !!}</td>
                        <td> <a href=" {{ route('minister_respond',$question->id) }} " class="btn btn-sm btn-success" ><i class="bi bi-eye-fill"></i> view</a> </td>
                        
                       {{-- <td>
                           <span class="badge bg-success">Active</span>
                       </td> --}}
                           
                    </tr>
  
                    @empty 
                    <h5>No questions yet for this meeting</h5>
                    @endforelse 
                 
                </tbody>
            </table>
                 </div>

        </div>
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
                   <form action=" {{ route('submitquestion', $meeting->id) }} " method="post">
                       @csrf
                       <div class="row">
                           <div class="col-md-12">
                             <div class="form-group">
                                 <label for="">Hon. MP Name</label>
                                 <input name="member_name" type="text" class="form-control" >
                                 </div>
                           </div>
                       </div>
                       <div class="row">
                         <div class="col-md-12">
                           <div class="form-group">
                               <label for="">Constituency</label>
                               <select name="constituency_id" id="constituency_id"
                                                 class="select2 block mt-1 w-full rounded-full form-control  border-purple-300 hover:border-purple-300"
                                                 required autofocus">
                                             <option >Choose  </option>

                                       @foreach ($constituencies as $constituency)
                                             <option value=" {{$constituency->id}} " > {{ $constituency->name }} </option>
                                       @endforeach

                                             </select>
                               </div>
                         </div>
                     </div>
                       <div class="row">
                         <div class="col-md-12">
                             <div class="form-group">
                                 {{-- <label for="">Question</label> --}}
                             <textarea name="question" id="question" cols="30" rows="10" class="form-control"
                             placeholder="Enter the Hon. MP Question"
                             ></textarea>
                             </div>
                         </div>
                        </div>
                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary"
                    data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary btn-sm ">Create Now</button>
                </div>
                   </form>
            </div>
        </div>
    </div>

    </div>
</div>
<script src=" {{asset('assets/vendors/simple-datatables/simple-datatables.js')}} "></script>
<script>
    // Simple Datatable
    let table1 = document.querySelector('#table1');
    let dataTable = new simpleDatatables.DataTable(table1);
</script>

@endsection
