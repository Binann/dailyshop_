@extends('index')

@section('title')
    Register
@endsection

@section('content')
    <!-- catg header banner section -->
{{-- <section id="aa-catg-head-banner">
    <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Account Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home</a></li>                   
          <li class="active">Account</li>
        </ol>
      </div>
     </div>
   </div>
</section> --}}
  <!-- / catg header banner section -->

 <!-- Cart view section -->
<section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              {{-- <div class="col-md-12">
                <div class="aa-myaccount-login">
                <h4>Login</h4>
                 <form action="{{route('loginPost')}}" class="aa-login-form" id="login-form" method="POST">
                    <label for="">Email <span>*</span></label>
                    <input type="text" placeholder="Input email"  name="email" value="{{old('email')}}">
                    <label for="">Password <span>*</span></label>
                    <input type="password" placeholder="Input password"  name="password" >
                    <button type="submit" class="aa-browse-btn">Login</button>
                  @if (Session::has('error'))
                      <span style="color: red"> {{ Session::get('error')}}</span> <br>
                  @endif
                    <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                    @csrf
                  </form>
                </div>
              </div> --}}
              <div class="col-md-6">
                <div class="aa-myaccount-register">                 
                 <h4>Register</h4>
                 @if (Session::has('success'))
                     <div class="alert alert-success" role="alert">
                        {{ Session::get('success')}}
                     </div>
                 @endif
                 <form action="" class="aa-login-form" method="POST">
                    {{-- @if ($errors->any())
                        <div class="alert alert-danger text-center">
                            @foreach ($errors->all() as $error)
                                <p>{{$error}}</p>
                            @endforeach
                        </div>
                    @endif --}}
                    <label for="">Name<span>*</span></label>
                    <input type="text" placeholder="name" name="name"  value="{{old('name')}}">
                    @error('name')
                        <span style="color: red"> {{$message}}</span>
                        <br>
                    @enderror

                    <label for="">Email address<span>*</span></label>
                    <input type="text" placeholder="Email" name="email" value="{{old('email')}}">
                    @error('email')
                      <span style="color: red"> {{$message}}</span>
                      <br>
                    @enderror

                    <label for="">Password<span>*</span></label>
                    <input type="password" placeholder="Password" name="password" >
                    @error('password')
                      <span style="color: red"> {{$message}}</span>
                      <br>
                    @enderror   
                    <label for="">Confirm Password<span>*</span></label>
                    <input type="password" placeholder="Password" name="confirm_password">
                    <button type="submit" class="aa-browse-btn">Register</button> 
                    @csrf                   
                  </form>
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
</section>
 <!-- / Cart view section -->
@endsection

@section('js')
    {{-- <script>
        $(document).ready(function(){
            $('#login-form').on('submit', function(e){
              e.prevenDefault();
              
              let username = $('input[name="username"]').val().trim();
              let password = $('input[name="password"]').val().trim();
              let actionUrl = $(this).attr('action')
              let csrfToken = $(this).find('intput[name="_token"]').val();

              console.log(csrfToken);
              $.ajax({
                url: actionUrl,
                type: 'POST',
                data:{
                  username: username,
                  password: password,
                  _token: 
                },
                datatype: 'json',
                success: function(response){
                  console.log(response);
                },
                error: function(error){
                  console.log(error);
                }
              })
            });
        })
    </script> --}}
@endsection