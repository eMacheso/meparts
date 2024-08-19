<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>MEPARTS</title>
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/img/apple-icon.png') }}">
    <link rel="icon" type="image/png" href="{{ asset('assets/img/logo.jpg') }}">

    <link rel="icon" href="{{ asset('assets/img/logo.jpg') }}" type="image/x-icon"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href=" {{asset('assets/css/bootstrap.css')}} ">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js" integrity="sha256-4iQZ6BVL4qNKlQ27TExEhBN1HFPvAvAMbFavKKosSWQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>

    <link rel="stylesheet" href="{{asset('assets/vendors/simple-datatables/style.css')}}">
    <link rel="stylesheet" href=" {{asset('assets/vendors/summernote/summernote-lite.min.css')}} ">

    <link rel="stylesheet" href=" {{asset('assets/vendors/iconly/bold.css')}} ">

    <link rel="stylesheet" href=" {{asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.css')}} ">
    <link rel="stylesheet" href=" {{asset('assets/vendors/bootstrap-icons/bootstrap-icons.css')}} ">
    <link rel="stylesheet" href=" {{asset('assets/css/app.css')}} ">
    <link rel="shortcut icon" href="{{asset('assets/images/favicon.svg')}}" type="image/x-icon">
    <style>
        .footer {
          position: fixed;
          left: 0;
          bottom: 0;
          width: 100%;
          /* background-color: red; */
          /* color: white; */
          text-align: center;
        }
        </style>
    @yield('styles')
</head>

<body>
    <div id="app">
        @include('partials.sidebar')

        <div id="main">
            @auth
            <div class="d-flex justify-content-between">
                <div class=""></div>
                <div class="">
                    <nav class="navbar navbar-expand navbar-light">


                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item dropdown float-right ">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-person-circle"></i>
                                    <strong>{{ auth()->user()->firstname }} {{ auth()->user()->lastname }}</strong>

                                </a>
                                <ul class="dropdown-menu float-right" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="{{ route('profile') }} ">My Profile</a></li>
                                <li><a class="dropdown-item" href="#">
                                    <form action=" {{route('logout')}} " method="post">
                                        @csrf
                                        <span> <i class="icon-signout" > </i> </span>
                                        <input type="submit" value="Logout" class="btn btn-sm btn-danger" >
                                    </form>
                                </a></li>
                                </ul>
                            </li>

                            </ul>
                        </div>

                    </nav>
                 </div>
            </div>
            @endauth

            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"> </i>
                </a>
            </header>
            @if (Session::has('success'))
                    <div class="alert alert-success" role="alert">
                    {{ Session::get('success') }}
                </div>
            @endif
            @if (Session::has('error'))
                    <div class="alert alert-danger" role="alert">
                    {{ Session::get('error') }}
                </div>
            @endif
            @yield('content')

        </div>
        <footer class="footer">
            <div class="footer  clearfix mb-0 text-muted">
                <div class="text-center">
                    <p>{{ now()->year }} &copy; MoE Parliamentary Record Tracking System </p>
                </div>

            </div>
        </footer>

    </div>
    @yield('scripts')
    <script src="{{ asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
    <script src="{{ asset('assets/js/bootstrap.bundle.min.js')}}"></script>

    <script src="{{asset('assets/js/main.js')}}"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
crossorigin="anonymous"></script>
@if (Session::has('success'))
<script>
    toastr.success("{!! Session::get('success') !!}")

</script>
    @endif
</body>

</html>
