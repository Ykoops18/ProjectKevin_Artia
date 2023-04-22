@extends('layout.layoutprincipal')


@section('login')
<div class="d-flex">

  <div class="card mb-3" style="max-width: 640px; min-width: 75px; ">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="https://static.wixstatic.com/media/30d9fa_f0784ee9fd6f447ca6ffc2d76e710bb1~mv2.jpg/v1/fill/w_600,h_840,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/DSC04306.jpg" alt="Trendy Pants and Shoes" class="img-fluid rounded-start" />
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">Mes 26 mois</h5>
          <p class="card-text">
            Por Maxime Blanc-Straussa y Daniel Denis.

            Autoeditado en Berlín, 2021
          </p>
          <p class="card-text">
            <small class="text-muted">Last updated 3 mins ago</small>
          </p>
        </div>
      </div>
    </div>
  </div>


  <div class="d-flex justify-content-center w-50  border border-1 rounded " style="max-width: 540px;">

    <form action="{{ route('login') }}" method="POST" class="p-3">
      <h1>Iniciar sesión<div class="d-flex justify-content-center p-2"><i class="fas fa-user"></i></div>
      </h1>
      @csrf
      <br><br>
      <!-- Email input   -->
      <div class="form-outline mb-4">
        <input type="email" id="form2Example1" name="email" class="form-control" />
        <label class="form-label" for="form2Example1">Correo electronico</label>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" id="form2Example2" name="password" class="form-control" />
        <label class="form-label" for="form2Example2">Contraseña</label>
      </div>


      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-4">Iniciar sesión</button>

      <!-- Register buttons -->
      <div class="text-center">
        <p>¿Aun no eres parte de artia? <a href="/registro">Registrate</a></p>



      </div>
    </form>
  </div>
</div>
@endsection