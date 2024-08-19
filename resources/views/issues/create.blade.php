@extends('layouts.master')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><b>Add new activity in the workplan</b> </div>

                <div class="card-body">
                    <form method="POST" action="{{ route('newissue') }}">
                        @csrf


                        <div class="form-group row">
                            <label for="fin_year" class="col-md-4 col-form-label text-md-right"> Financial Year </label>

                            <div class="col-md-6">
                                <input id="fin_year" type="text" class="form-control @error('fin_year') is-invalid @enderror" name="fin_year" value="24/25" required autocomplete="fin_year" readonly>

                                @error('fin_year')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="issue_type" class="col-md-4 col-form-label text-md-right"> Issue Type </label>

                            <div class="col-md-6">
                                <input id="issue_type" type="text" class="form-control @error('name') is-invalid @enderror" name="issue_type" value="project" required autocomplete="name" readonly>
                                
                                @error('issue_type')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        

                        <div class="form-group row">
                            <label for="project" class="col-md-4 col-form-label text-md-right"> Select project </label>

                            <div class="col-md-6">
                                <select class=" form-control " name="project" id="project" required autofocus>
                                         
                                    
                                    <option value="SAVE">SAVE</option>
                                    <option value="EQUALS">EQUALS</option>
                                    <option value="MERP">MERP</option>
                                    <option value="ISEM">ISEM</option>
                                    <option value="BEFIT">BEFIT</option>
                                    
                                </select>
                                @error('project')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                       

                       
                        
                        <div class="form-group row">
                            <label for="activity" class="col-md-4 col-form-label text-md-right"> Activity </label>

                            <div class="col-md-6">
                                <input id="activity" type="text" class="form-control @error('name') is-invalid @enderror" name="activity" value="{{ old('activity') }}" required autocomplete="name">

                                @error('activity')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="budget" class="col-md-4 col-form-label text-md-right"> Associated Budget </label>

                            <div class="col-md-6">
                                <input id="budget" type="text" onkeypress="return (event.charCode !=8 && event.charCode ==0 || ( event.charCode == 46 || (event.charCode >= 48 && event.charCode <= 57)))" class="form-control @error('name') is-invalid @enderror" name="budget" value="{{ old('budget') }}" required autocomplete="name" autofocus>


                                @error('budget')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                       <!-- <div class="form-group row">
                            <label for="issue_name" class="col-md-4 col-form-label text-md-right"> Issue Name </label>

                            <div class="col-md-6">
                                <input id="issue_name" type="text" class="form-control @error('name') is-invalid @enderror" name="issue_name" value="{{ old('issue_name') }}" required autocomplete="name" autofocus>

                                @error('issue_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="issue_description" class="col-md-4 col-form-label text-md-right"> Issue Description </label>

                            <div class="col-md-6">
                                <input id="issue_name" type="text" class="form-control @error('name') is-invalid @enderror" name="issue_description" value="{{ old('issue_description') }}" required autocomplete="name" autofocus>

                                @error('issue_description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="date_assigned" class="col-md-4 col-form-label text-md-right"> Date Assigned </label>

                            <div class="col-md-6">
                                <input type="datetime-local" class="form-control" name="date_assigned" >
                                @error('date_assigned')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>-->

                        <div class="form-group row">
                            <label for="date_due" class="col-md-4 col-form-label text-md-right">Date Due</label>

                            <div class="col-md-6">
                              <input type="datetime-local" class="form-control" name="date_due" >
                                @error('date_due')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="directorate" class="col-md-4 col-form-label text-md-right">Responsible Directorate</label>

                            <div class="col-md-6">

                            <select  id="directorate_id" name="directorate_id">
                        <option value="">-- Select Directorate --</option>
                        @foreach ($directorates as $data)
                        <option value="{{$data->id}}">
                            {{$data->dir_name}}
                        </option>
                        @endforeach
                        </select>
                             @error('directorate_id')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>    


                        <div class="form-group row">
                            <label for="status" class="col-md-4 col-form-label text-md-right"> Status </label>

                            <div class="col-md-6">
                                <select class=" form-control " name="status" id="status" required >
                                         
                                    
                                    <option value="Not Done">Not Done</option>
                                    
                                </select>
                                {{-- <input id="firstname" type="text" class="form-control @error('name') is-invalid @enderror" name="firstname" value="{{ old('firstname') }}" required autocomplete="name" autofocus> --}}

                                @error('firstname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                   
                

                      

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                 create
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
