<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  @vite(['resources/css/app.css', 'resources/js/app.js']) <!-- para los archivos y recursos -->
  @stack('styles')
  <link rel="stylesheet" href="{{asset('assets/css/mdb.min.css') }}">
  <script src="{{asset('assets/js/mdb.min.js') }}"></script>


  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
  <!-- MDB -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />

</head>

<body>
  <header>
    <!-- Navbar   -->
    <nav class="navbar navbar-expand-lg  " style="background-color: rgb(255,255,255)">
      <div class="container-fluid ">
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarExample01">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item active">
              <a class="nav-link text-black fs-5 fw-bold " aria-current="page" href="#"><i class="fab fa-amilia"></i>rtia</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link text-black fs-5 fw-bold " aria-current="page" href="#"> </a>
            </li>
            <li class="nav-item active">
              <a class="nav-link text-black fs-5 fw-bold " aria-current="page" href="login">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-black fs-5" href="login">Login</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link text-black fs-5  " aria-current="page" href="muro">Posts</a>
            </li>

            <li class="nav-item">
              <a class="nav-link text-black fs-5" href="#">Servicios</a>
            </li>


          </ul>
        </div>


        @auth
        <div class="d-flex align-items-center">
          <p class="me-5 px-3 me-2">
            <!--  {{ auth()->user()->username }} mostrara el nombre de usuario en la vista seleccionada   -->
          <div class="px-3">
            <h3 class="text-black-50"> {{ auth()->user()->username }}</h3>
          </div>
          </p>
          <form action="{{ route('logout') }}" method="post">
            @csrf
            <button type="submit" class="btn btn-black px-3 me-3">
              Cerrar sesion
            </button>
          </form>
        </div>
        @endauth
      </div>
    </nav>
    <!-- Navbar -->

    <!-- Background image -->
    <div class="p-5 text-center bg-image" style="
      background-image: url('https://static.wixstatic.com/media/30d9fa_95703e21f3c34eafbe0f2ff0d434bbf6~mv2.jpg/v1/fill/w_1349,h_600,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/30d9fa_95703e21f3c34eafbe0f2ff0d434bbf6~mv2.jpg');
      height: 500px;
    ">
      <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
        <div class="d-flex justify-content-center align-items-center h-100">
          <div class="text-white ">



            <h1 class="mb-3">¡Se parte de artia! </h1>



          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Background image -->


  <h1>@yield('titulo')</h1>
  <hr class="hr">
  @yield('contenido')


  <!-- login -->

  <div class="container">
    <h1>@yield('titulo')</h1>

    @yield('login')
  </div>


  <!-- registro -->

  <div class="container">
    <h1>@yield('titulo')</h1>

    @yield('registro')
  </div>

  <!-- muro -->

  <div class="container">
    <h1>@yield('titulo')</h1>

    @yield('muro')
  </div>

  <!-- imagen -->




  <!-- footer -->
  <footer class="text-center text-white" style="background-color: #f1f1f1;">
    <!-- Grid container -->
    <div class="container pt-4">
      <!-- Section: Social media -->
      <section class="mb-4">
        <!-- Facebook -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-facebook-f"></i></a>

        <!-- Twitter -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-twitter"></i></a>

        <!-- Google -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-google"></i></a>

        <!-- Instagram -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-instagram"></i></a>

        <!-- Linkedin -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
        <!-- Github -->
        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!" role="button" data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
      </section>
      <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2023 Copyright:
      <a class="text-dark" href="https://mdbootstrap.com/">Pedroza.com</a>
    </div>
    <!-- Copyright -->
  </footer>


  <!-- MDB -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
</body>

</html>