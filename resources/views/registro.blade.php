@extends('layout.layoutprincipal')




@section('registro')
<div class=" d-flex ">
  <section class="mb-2">
    <div class="">
      <div class="col-lg-6 mb-5">
        <div class="d-flex align-items-start">
          <div class="flex-shrink-0">
            <div class="p-3 badge-primary rounded-4">
              <i class="fas fa-cloud-upload-alt fa-lg text-primary fa-fw"></i>
            </div>
          </div>
          <div class="flex-grow-1 ms-4">
            <p class="fw-bold mb-1">Sube tu propios posts</p>
            <p class="text-muted mb-1">
              Publica tus posts y compartelos con los demas usuarios
            </p>
            <small><a href="">Learn more</a></small>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5">

      </div>

      <div class="col-lg-6 mb-5">
        <div class="d-flex align-items-start">
          <div class="flex-shrink-0">
            <div class="p-3 badge-primary rounded-4">
              <i class="fas fa-database fa-lg text-primary fa-fw"></i>
            </div>
          </div>
          <div class="flex-grow-1 ms-4">
            <p class="fw-bold mb-1">Almacenamiento libre de 10GB</p>
            <p class="text-muted mb-1">
              Usa nuestro almacenamiento libre
            </p>
            <small><a href="">Learn more</a></small>
          </div>
        </div>

        <div class="col-lg-6 mb-5">
          <div class="d-flex align-items-start">


          </div>
        </div>
      </div>
    </div>

  </section>

  <div class="w-50 d-flex justify-content-center border border-1 rounded ">


    <form action="/registro" method="POST" class="w-75 p-3">
      <h1 class="d-flex justify-content-center p-1">Registrate <div class="d-flex justify-content-center p-1"></div>
      </h1>
      <br>
      @csrf
      <!-- 2 column  grid layout with text inputs for the first and last names   -->
      <div class="row mb-4">
        <div class="col">
          <div class="form-outline">
            <input type="text" id="name" name="name" class="form-control" />
            <label class="form-label" for="form3Example1"> Nombre</label>
          </div>
          @error('name')
          <p style="color: red">{{$message}}</p>
          @enderror
        </div>
        <div class="col">
          <div class="form-outline">
            <input type="text" id="username" name="username" class="form-control" />
            <label class="form-label" for="form3Example2">Nombre de usuario</label>
          </div>
          @error('username')
          <p style="color: red">{{$message}}</p>
          @enderror
        </div>
      </div>
      <!-- Email input -->
      <div class="form-outline mb-4">
        <input type="email" id="email" name="email" class="form-control" />
        <label class="form-label" for="form3Example3">Correo electronico</label>
      </div>
      @error('email')
      <p style="color: red">{{$message}}</p>
      @enderror


      <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" id="password" name="password" class="form-control" />
        <label class="form-label" for="form3Example4">Contraseña</label>
      </div>
      @error('password')
      <p style="color: red">{{$message}}</p>
      @enderror



      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-4">Registrarse</button>

    </form>
  </div>
</div>


@endsection