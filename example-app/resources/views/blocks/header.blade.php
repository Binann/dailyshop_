 <!-- wpf loader Two -->
 <div id="wpf-loader-two">          
    <div class="wpf-loader-two-inner">
      <span>Loading</span>
    </div>
  </div> 
  <!-- / wpf loader Two -->       
<!-- SCROLL TOP BUTTON -->
  <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<!-- Start header section -->
<header id="aa-header">
  <!-- start header top  -->
  <div class="aa-header-top">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-header-top-area">
            <!-- start header top left -->
            <div class="aa-header-top-left">
              <!-- start language -->
              <div class="aa-language">
                <div class="dropdown">
                  <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <img src="{{asset('assets/images/flag/english.jpg')}}" alt="english flag">ENGLISH
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#"><img src="{{asset('assets/images/flag/french.jpg')}}" alt="">FRENCH</a></li>
                    <li><a href="#"><img src="{{asset('assets/images/flag/english.jpg')}}" alt="">ENGLISH</a></li>
                  </ul>
                </div>
              </div>
              <!-- / language -->

              <!-- start currency -->
              <div class="aa-currency">
                <div class="dropdown">
                  <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <i class="fa fa-usd"></i>USD
                    <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
                    <li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
                  </ul>
                </div>
              </div>
              <!-- / currency -->
              <!-- start cellphone -->
              <div class="cellphone hidden-xs">
                <p><span class="fa fa-phone"></span>00-62-658-658</p>
              </div>
              <!-- / cellphone -->
            </div>
            <!-- / header top left -->
            <div class="aa-header-top-right">
              <ul class="aa-head-top-nav-right">
                {{-- <li><a href="account.html">My Account</a></li> --}}
                {{-- <li class="hidden-xs"><a href="cart.html">My Cart</a></li>           --}}
                {{-- @if (!empty(session()->get('user')))
                <li><a href="#">{{$user['username']}}</a></li>
                <li><a href="{{route('youraccount')}}">{{session()->get('user')['username']}}</a></li>
                <li><a href="{{route('logout')}}">Logout</a></li>
                @else
                <li><a href="{{route('login_register')}}">Login</a></li>
                @endif --}} 
                @if (Auth::check())
                  <li><a href="{{route('account')}}"><button style="border: none; padding: 5px">{{Auth::user()->name}} </button></a></li>
                  <li>
                      <form action="{{ route('logout') }}" method="POST" >
                        @csrf
                        @method('DELETE')
                        <button style="border: none; padding: 4px">Logout</button>
                      </form>                                 
                  </li>
                 
                @else
                  
                  <li> <button style="border: none"><a href="{{ route('login')}}">Login</a> </button></li>
                  <li> <button style="border: none"><a href="{{ route('register')}}">Register</a> </button></li>
                  <li> <button style="border: none"><a href="http://127.0.0.1:8000/admin/auth/login">Admin</a> </button></li>
                @endif               
                
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- / header top  -->

  <!-- start header bottom  -->
  <div class="aa-header-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-header-bottom-area">
            <!-- logo  -->
            <div class="aa-logo">
              <!-- Text based logo -->
              <a href="index.html">
                <span class="fa fa-shopping-cart"></span>
                <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
              </a>
              <!-- img based logo -->
              <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
            </div>
            <!-- / logo  -->
             <!-- cart box -->
            <div class="aa-cartbox">
              <a class="aa-cart-link" href="{{route('cart')}}">
                <span class="fa fa-shopping-basket"></span>
                <span class="aa-cart-title">SHOPPING CART</span>
                @if (!empty(session()->get('cart')))
                <span class="aa-cart-notify">{{count(session()->get('cart'))}}</span>
                @endif
                    
              </a>
              
            </div>
            <!-- / cart box -->
            <!-- search box -->
            <div class="aa-search-box">
              <form action="">
                <input type="text" name="" id="" placeholder="Search here ex. 'man' ">
                <button type="submit"><span class="fa fa-search"></span></button>
              </form>
            </div>
            <!-- / search box -->             
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- / header bottom  -->
</header>

