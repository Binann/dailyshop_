@extends('index')

@section('title')
    Account
@endsection

@section('content')
    <section id="aa-myaccount">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-myaccount-area">
                        <div class="row">
                            <div class="col-md-2">
                                <h3 style="display:flex; justify-content:center">Account</h3>
                                <ul class="nav nav-tabs aa-products-tab">
                                    <li class="active"><a href="#my_account" data-toggle="tab">My Account</a></li>
                                    <li><a href="#order" data-toggle="tab">Order Manager</a></li>
                                    <li><a href="#notify" data-toggle="tab">Notify</a></li>
                                    <li><a href="#change_pass" data-toggle="tab">Change Password</a></li>
                                </ul>
                            </div>
                            <div class="col-md-10">
                                <div class="aa-myaccount-login">

                                    <div class="tab-content">
                                        <!-- Start men product category -->
                                        
                                        <div class="tab-pane fade in active" id="my_account">
                                            @if (Session::has('success'))
                                                <div class="alert alert-success" role="alert">
                                                {{ Session::get('success')}}
                                                </div>
                                            @endif
                                            <form action="" method="POST">
                                                <h2>Manager Information</h2>
                                                <h5 style="font-size: 1.2em; ">Name</h5>
                                                <input style="width:30%" type="text" name="name" value="{{Auth::user()->name }}">
                                                @if ($errors->has('name'))
                                                    <span style="color: red"> {{$errors->first('name')}}</span>
                                                @endif 

                                                <h5 style="font-size: 1.2em; ">Email</h5>
                                                <input style="width:30%" type="text" name="email" value="{{Auth::user()->email  }}" readonly>
                                                @if ($errors->has('email'))
                                                    <span style="color: red"> {{$errors->first('email')}}</span>
                                                @endif  

                                                <h5 style="font-size: 1.2em; ">Phone Number</h5>
                                                <input style="width:30%" type="text" name="phone_number" value="{{Auth::user()->phone_number != null ? Auth::user()->phone_number : '' }}">
                                                @if ($errors->has('name'))
                                                    <span style="color: red"> {{$errors->first('phone_number')}}</span>
                                                @endif  

                                                <h5 style="font-size: 1.2em; ">Address </h5>
                                                <textarea style="width:30%" cols="8" rows="3" name="address" placeholder="Address">{{Auth::user()->address != null ? Auth::user()->address : '' }}</textarea> 
                                                @if ($errors->has('address'))
                                                    <span style="color: red"> {{$errors->first('address')}}</span>
                                                @endif  
                                                <br> <br>
                                                <button class="aa-browse-btn">Update Information</button>
                                                @csrf
                                            </form>
                                        </div>
                                        <div class="tab-pane fade  " id="order">
                                            <h2>Order Manager</h2>
                                            <ul class="nav nav-tabs aa-products-tab">                                              
                                                <!-- <li><a href="#women" data-toggle="tab">Women</a></li> -->
                                                <li class="active"><a href="#confirm" data-toggle="tab">Confirmation</a></li>
                                                <li><a href="#delivering" data-toggle="tab">Delivering</a></li>
                                                <li><a href="#completed" data-toggle="tab">Completed</a></li>
                                                <li><a href="#cancelled" data-toggle="tab">Cancelled</a></li>
                                                <li><a href="#women" data-toggle="tab">Returns</a></li>
                                            </ul>
                                            <hr>
                                            <div class="tab-content">
                                                
                                                <div class="tab-pane fade in active" id="confirm" >
                                                    @foreach ($confirm as $order_detail)
                                                    @php
                                                        $total = 0;
                                                    @endphp
                                                    <div style="border-bottom: solid 1px red">
                                                    <div style="display: flex; justify-content: space-between; align-items: center" >
                                                        <div class="order-manager-confirm" style="display: flex; align-items: center;">
                                                            <p style="margin:auto" >DailyShop</p>
                                                            <button style="margin: 0 10px">Chat</button>
                                                            <button ><a href="{{route('shopPage.allProduct')}}">View Shop</a></button>
                                                        </div>  
                                                        <div>
                                                            <p style="margin:auto; color: blue">Waiting to confirm</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div>
                                                        <ul>
                                                            @foreach ($order_detail as $item)
                                                            <li>
                                                                <div style="display:flex; justify-content: space-between;" >
                                                                    <div style="display:flex; width: 100%">
                                                                        <img src="{{asset('storage/'. $item->img)}}" alt="" style="width: 100%; max-width: 100px;">
                                                                        <ul style="margin-left: 5%">
                                                                            <li><b>{{$item->description}}</b> </li>
                                                                            <li>Category</li>
                                                                            <li>x{{$item->quantity}}</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div style="width:10%">
                                                                        <p >
                                                                            ${{$item->price * $item->quantity}}
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <br>
                                                            </li>
                                                            @php
                                                                $total += $item->price * $item->quantity;
                                                            @endphp
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    <hr>
                                                    <div>
                                                        <div style="display:flex; justify-content: flex-end">
                                                            <p>${{$total}} </p>
                                                            <div></div>
                                                        </div>
                                                        <div style="display:flex; justify-content: space-between;">
                                                            <div>
                                                                <p >Rate the product now and get 200 Coins</p>
                                                            </div>
                                                            <div>
                                                                <button>Feedback</button>
                                                                <button>Contact to shop</button>
                                                                <button>Buy agian</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    </div>
                                                    <br><br>
                                                    @endforeach    
                                                </div>
                                                
                                                
                                                <div class="tab-pane fade " id="delivering" >
                                                    @foreach ($delivery as $order_detail)
                                                    @php
                                                        $total = 0;
                                                    @endphp
                                                    <div style="border-bottom: solid 1px red">
                                                    <div style="display: flex; justify-content: space-between; align-items: center" >
                                                        <div class="order-manager-confirm" style="display: flex; align-items: center;">
                                                            <p style="margin:auto" >DailyShop</p>
                                                            <button style="margin: 0 10px">Chat</button>
                                                            <button > <a href="{{route('shopPage.allProduct')}}">View Shop</a></button>
                                                        </div>  
                                                        <div>
                                                            <p style="margin:auto; color:chocolate">Delivering</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div>
                                                        <ul>
                                                            @foreach ($order_detail as $item)
                                                            <li>
                                                                <div style="display:flex; justify-content: space-between;" >
                                                                    <div style="display:flex; width: 100%">
                                                                        <img src="{{asset('storage/'. $item->img)}}" alt="" style="width: 100%; max-width: 100px;">
                                                                        <ul style="margin-left: 5%">
                                                                            <li><b>{{$item->description}}</b> </li>
                                                                            <li>Category</li>
                                                                            <li>x{{$item->quantity}}</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div style="width:10%">
                                                                        <p >
                                                                            ${{$item->price * $item->quantity}}
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <br>
                                                            </li>
                                                            @php
                                                                $total += $item->price * $item->quantity;
                                                            @endphp
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                    <hr>
                                                    <div>
                                                        <div style="display:flex; justify-content: flex-end">
                                                            <p>${{$total}} </p>
                                                            <div></div>
                                                        </div>
                                                        <div style="display:flex; justify-content: space-between;">
                                                            <div>
                                                                <p >Rate the product now and get 200 Coins</p>
                                                            </div>
                                                            <div>
                                                                <button>Feedback</button>
                                                                <button>Contact to shop</button>
                                                                <button>Buy agian</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    </div>
                                                    <br><br>
                                                    @endforeach 
                                                </div>

                                                <div class="tab-pane fade " id="completed">
                                                    @if ($completed !=null)
                                                        @foreach ($completed as $order_detail)
                                                        @php
                                                            $total = 0;
                                                        @endphp
                                                        <div style="border-bottom: solid 1px red">
                                                        <div style="display: flex; justify-content: space-between; align-items: center" >
                                                            <div class="order-manager-confirm" style="display: flex; align-items: center;">
                                                                <p style="margin:auto" >DailyShop</p>
                                                                <button style="margin: 0 10px">Chat</button>
                                                                <button ><a href="{{route('shopPage.allProduct')}}">View Shop</a></button>
                                                            </div>  
                                                            <div>
                                                                <p style="margin:auto; color:green">Completed</p>
                                                            </div>
                                                        </div>
                                                        <hr>
                                                        <div>
                                                            <ul>
                                                                @foreach ($order_detail as $item)
                                                                <li>
                                                                    <div style="display:flex; justify-content: space-between;" >
                                                                        <div style="display:flex; width: 100%">
                                                                            <img src="{{asset('storage/'. $item->img)}}" alt="" style="width: 100%; max-width: 100px;">
                                                                            <ul style="margin-left: 5%">
                                                                                <li><b>{{$item->description}}</b> </li>
                                                                                <li>Category</li>
                                                                                <li>x{{$item->quantity}}</li>
                                                                            </ul>
                                                                        </div>
                                                                        <div style="width:10%">
                                                                            <p >
                                                                                ${{$item->price * $item->quantity}}
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                </li>
                                                                @php
                                                                    $total += $item->price * $item->quantity;
                                                                @endphp
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                        <hr>
                                                        <div>
                                                            <div style="display:flex; justify-content: flex-end">
                                                                <p>${{$total}} </p>
                                                                <div></div>
                                                            </div>
                                                            <div style="display:flex; justify-content: space-between;">
                                                                <div>
                                                                    <p >Rate the product now and get 200 Coins</p>
                                                                </div>
                                                                <div>
                                                                    <button>Feedback</button>
                                                                    <button>Contact to shop</button>
                                                                    <button>Buy agian</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        </div>
                                                        <br><br>
                                                        @endforeach 
                                                    @else
                                                        <p>nothing</p>
                                                    @endif
                                                </div>

                                                <div class="tab-pane fade " id="cancelled">
                                                    @if ($cancelled !=null)
                                                        @foreach ($cancelled as $order_detail)
                                                        @php
                                                            $total = 0;
                                                        @endphp
                                                        <div style="border-bottom: solid 1px red">
                                                        <div style="display: flex; justify-content: space-between; align-items: center" >
                                                            <div class="order-manager-confirm" style="display: flex; align-items: center;">
                                                                <p style="margin:auto" >DailyShop</p>
                                                                <button style="margin: 0 10px">Chat</button>
                                                                <button ><a href="{{route('shopPage.allProduct')}}">View Shop</a></button>
                                                            </div>  
                                                            <div>
                                                                <p style="margin:auto; color:red">Cancelled</p>
                                                            </div>
                                                        </div>
                                                        <hr>
                                                        <div>
                                                            <ul>
                                                                @foreach ($order_detail as $item)
                                                                <li>
                                                                    <div style="display:flex; justify-content: space-between;" >
                                                                        <div style="display:flex; width: 100%">
                                                                            <img src="{{asset('storage/'. $item->img)}}" alt="" style="width: 100%; max-width: 100px;">
                                                                            <ul style="margin-left: 5%">
                                                                                <li><b>{{$item->description}}</b> </li>
                                                                                <li>Category</li>
                                                                                <li>x{{$item->quantity}}</li>
                                                                            </ul>
                                                                        </div>
                                                                        <div style="width:10%">
                                                                            <p >
                                                                                ${{$item->price * $item->quantity}}
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                </li>
                                                                @php
                                                                    $total += $item->price * $item->quantity;
                                                                @endphp
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                        <hr>
                                                        <div>
                                                            <div style="display:flex; justify-content: flex-end">
                                                                <p>${{$total}} </p>
                                                                <div></div>
                                                            </div>
                                                            <div style="display:flex; justify-content: space-between;">
                                                                <div>
                                                                    <p >Rate the product now and get 200 Coins</p>
                                                                </div>
                                                                <div>
                                                                    <button>Feedback</button>
                                                                    <button>Contact to shop</button>
                                                                    <button>Buy agian</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        </div>
                                                        <br><br>
                                                        @endforeach 
                                                    @else
                                                        <p>nothing</p>
                                                    @endif
                                                </div>
                                            </div>
                                            <ul>
                                                
                                                


                                            </ul>
                                        </div>
                                        
                                        
                                        <div class="tab-pane fade  " id="order_manager">
                                            <h2>Order Manager</h2>
                                        </div>
                                        <div class="tab-pane fade  " id="notify">
                                            <h2>Notify</h2>
                                        </div>
                                        <div class="tab-pane fade  " id="change_pass">
                                            <form action="{{route('updatePassword')}}" method="POST">
                                                @method('PUT')
                                                @csrf
                                                <h2>Change Password </h2>
                                                <h5 style="font-size: 1.2em; ">Old Password</h5>
                                                <input style="width:30%" type="text" value="" name="current_password">
                                                @error('current_password')
                                                    <span style="color: red"> {{$message}}</span>
                                                    <br>
                                                @enderror

                                                <h5 style="font-size: 1.2em; ">New Password</h5>
                                                <input style="width:30%" type="text" value="" name="new_password">
                                                @error('new_password')
                                                    <span style="color: red"> {{$message}}</span>
                                                    <br>
                                                @enderror

                                                <h5 style="font-size: 1.2em; ">Confirm Password</h5>
                                                <input style="width:30%" type="text" value="" name="confirm_password"> 
                                                @error('confirm_password')
                                                    <span style="color: red"> {{$message}}</span>
                                                    <br>
                                                @enderror
                                                <br><br>
                                                @if (Session::has('error_changePass'))
                                                    <div class="alert alert-danger" role="alert">
                                                        {{ Session::get('error_changePass')}}
                                                    </div>
                                                @endif

                                                @if (Session::has('success_changePass'))
                                                    <div class="alert alert-success" role="alert">
                                                        {{ Session::get('success_changePass')}}
                                                    </div>
                                                @endif
                                                <button class="aa-browse-btn">Update Password</button>
                                                
                                            
                                            </form>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection