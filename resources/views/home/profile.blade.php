@extends('layouts.master')
@section('content')

<div class="content">
    <div class="container-fluid">
     @auth
     <div class="row">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title">Edit Profile</h4>
            <p class="card-category">Complete your profile</p>
          </div>
          <div class="card-body">
            <form method="POST" action=" {{route('profile.update')}} " >
              @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Fist Name</label>
                    <input type="text" class="form-control" value="  {{ auth()->user()->firstname }} ">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="bmd-label-floating">Last Name</label>
                    <input type="text" class="form-control" value="  {{ auth()->user()->lastname }}  " >

                  </div>
                </div>
              </div>
              {{-- <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label class="bmd-label-floating">
                      Email
                    </label>
                    <input type="text" class="form-control" value="  {{ auth()->user()->email }} " >
                  </div>
                </div>
              </div> --}}

              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Current Password</label>
                    <input name="oldpassword" type="password" class="form-control" >
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">New Password</label>
                    <input name="newpassword"  type="password" class="form-control">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Confirm New Password</label>
                    <input  name="password_confirmation" type="password" class="form-control">
                  </div>
                </div>
              </div>

              <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
              <div class="clearfix"></div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card card-profile">
          <div class="card-avatar">
            <a href="javascript:;">
              {{-- <img class="img" src="{{ asset('../assets/img/aston.jpg') }}" /> --}}
            </a>
          </div>

          <div class="card-body">
            <h6 class="card-category text-gray"> {{ Str::title( auth()->user()->role)  }} </h6>
            <h4 class="card-title"> {{auth()->user()->firstname}}  {{auth()->user()->lastname}} </h4>
            {{-- <p class="card-description">
              Don't be scared of the truth because we need to restart the human foundation in truth.     </p>
           --}}
          </div>
        </div>
      </div>
    </div>
     @endauth
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
  integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
  crossorigin="anonymous"></script>
@if (Session::has('success'))
  <script>
      toastr.success("{!! Session::get('success') !!}");

  </script>
@endif

@endsection
