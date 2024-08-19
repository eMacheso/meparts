@extends('layouts.main')

@section('content')
     @if (count($errors))
      @foreach ($errors->all() as $error)
        <p class="alert alert-danger">{{$error}}</p>
      @endforeach
     @endif    
        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="{{ route('update-password.update',[$users->id,$users->slug]) }}" method="post">
           @csrf
           @method('PATCH')

                   
                      <div class="form-group">
                          <input type="password" id="first-name" class="form-control col-md-7 col-xs-12"  placeholder="Enter old password" name="oldpassword"> 
                      </div>

                      <div class="form-group">
                          <input type="password" id="first-name" placeholder="Enter new password" class="form-control col-md-7 col-xs-12" name="newpassword"> 
                      </div>

                      <div class="form-group">
                          <input type="password" id="first-name"  class="form-control col-md-7 col-xs-12"placeholder="Enter password confirmation"  name="password_confirmation"> 
                      </div>

                      <button type="submit" class="btn btn-primary">Update</button>
                     
                    </form>    

@endsection 