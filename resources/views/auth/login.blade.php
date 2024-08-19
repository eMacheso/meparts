

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MEPARTS</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style type="text/css" >
        body{
            min-height: 100vh;
            display: flex;
            flex-direction: column
        }
    </style>
</head>
<body>
    <section class="vh-100">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
              <div class="card shadow-2-strong" style="border-radius: 1rem;">
                <div class="d-flex justify-content-center mt-4">
                    <div name="logo">
                        <a href="/">
                            <img src="{{ asset('../assets/img/logo.jpg') }}" width="160px" height="150px"  alt="">
                        </a>
                    </div>
                </div>
                <div class="card-body p-5 text-center">

                  <h3 class="mb-3">MEPARTS</h3>

                  <form method="POST" action="{{ route('login') }}">
                    @csrf

                    <div class="form-group mb-3">

                        <input id="email" type="email" placeholder="Email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group mb-3">

                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" name="password" required autocomplete="new-password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <!-- Checkbox -->
                    <div class="form-check d-flex justify-content-between mb-4">
                        <div>
                            <input
                            class="form-check-input"
                            type="checkbox"
                            value=""
                            id="form1Example3"
                            />
                            <label class="form-check-label" for="form1Example3"> Remember me </label>
                        </div>
                        <div>
                        <a href=" {{ route('password.request') }} ">Forget Password?</a>
                        </div>
                    </div>


                    <button class="btn btn-primary btn-block" type="submit">Login</button>

                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
</body>
</html>



