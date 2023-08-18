@extends('index')

@section('title')
    Check out
@endsection

@section('content')
    <!-- catg header banner section -->
    {{-- <section id="aa-catg-head-banner">
        <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Checkout Page</h2>
                    <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>                   
                    <li class="active">Checkout</li>
                    </ol>
                </div>
            </div>
        </div>
    </section> --}}
    <!-- / catg header banner section -->

    <!-- Cart view section -->
    <section id="checkout">
        <div class="container">
            <div class="row">
            <div class="col-md-12">
                <div class="checkout-area">
                    <form action="" method="POST">
                        <div class="row">
                        <div class="col-md-8">
                            <div class="checkout-left">
                                <div class="panel-group" id="accordion">
                                    <!-- Coupon section -->
                                    <div class="panel panel-default aa-checkout-coupon">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                Have a Coupon?
                                            </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse ">
                                            <div class="panel-body">
                                                <input type="text" placeholder="Coupon Code" class="aa-coupon-code">
                                                <input type="submit" value="Apply Coupon" class="aa-browse-btn">
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="panel panel-default aa-checkout-billaddress">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                                Shippping Address
                                            </a>
                                            </h4>
                                        </div>
                                    
                                        <div id="collapseFour" class="panel-collapse collapse in">
                                            <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                <div class="aa-checkout-single-bill">
                                                    <input style="color: black" type="text" name="name" placeholder="Name*" value="{{Auth::user()->name  }}">
                                                    @if ($errors->has('name'))
                                                        <span style="color: red"> {{$errors->first('name')}}</span>
                                                    @endif    
                                                </div>                             
                                                </div>
                                                
                                            </div> 
                                            
                                            <div class="row">
                                                <div class="col-md-6">
                                                <div class="aa-checkout-single-bill">
                                                    <input style="color: black" type="email" name="email" readonly placeholder="Email Address*" value="{{Auth::user()->email != null ? Auth::user()->email : '' }}">
                                                    @if ($errors->has('email'))
                                                        <span style="color: red"> {{$errors->first('email')}}</span>
                                                    @endif 
                                                </div>                             
                                                </div>
                                                <div class="col-md-6">
                                                <div class="aa-checkout-single-bill">
                                                    <input style="color: black" type="tel" name="phone_number" placeholder="Phone*" value="{{Auth::user()->phone_number != null ? Auth::user()->phone_number : '' }}">
                                                    @if ($errors->has('phone_number'))
                                                        <span style="color: red"> {{$errors->first('phone_number')}}</span>
                                                    @endif 
                                                </div>
                                                </div>
                                            </div> 
                                            <div class="row">
                                                <div class="col-md-12">
                                                <div class="aa-checkout-single-bill">
                                                    <textarea style="color: black" cols="8" rows="3" name="address" placeholder="Address*">{{Auth::user()->address != null ? Auth::user()->address : '' }}</textarea>
                                                    @if ($errors->has('address'))
                                                        <span style="color: red"> {{$errors->first('address')}}</span>
                                                    @endif 
                                                </div>                             
                                                </div>                            
                                            </div> 
                                            <div class="row">
                                                <div class="col-md-12">
                                                <div class="aa-checkout-single-bill">
                                                    <textarea cols="8" rows="3">Say Something</textarea>
                                                </div>                             
                                                </div>                            
                                            </div>   
            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-md-4">
                                <div class="checkout-right">
                                    <h4>Order Summary</h4>
                                    <div class="aa-order-summary-area">
                                        <table class="table table-responsive">
                                        <thead>
                                            <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                                $cart = session()->get('cart');
                                                $subtotal = 0;
                                            @endphp
                                            @foreach ($cart as $item)
                                                @php
                                                     $subtotal += $item['price']*$item['quantity'];
                                                @endphp
                                                <tr>
                                                    <td>{{$item['name']}}<strong> x  {{$item['quantity']}}</strong></td>
                                                    <td>${{$item['price'] *$item['quantity']}}</td>
                                                </tr>
                                            @endforeach
                                           
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            <th>Subtotal</th>
                                            <td>${{$subtotal}}</td>
                                            </tr>
                                            <tr>
                                            <th>Tax</th>
                                            <td>${{$subtotal*0.1}}</td>
                                            </tr>
                                            {{-- <tr>
                                                <th>Discount</th>
                                                <td>$35</td>
                                            </tr> --}}
                                            <tr>
                                            <th>Total</th>
                                            <td>${{$subtotal+$subtotal*0.1}}</td>
                                            </tr>
                                        </tfoot>
                                        </table>
                                    </div>
                                    <h4>Payment Method</h4>
                                    <div class="aa-payment-method">    
                                                    
                                            <label for="cashdelivery"><input type="radio" id="cashdelivery" name="optionsRadios" value="Cash on Delivery"> Cash on Delivery </label>
                                            <label for="paypal"><input type="radio" id="paypal" name="optionsRadios" checked value="Via Paypal"> Via Paypal </label>
                                            <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark">    
                                            <input type="hidden" name="total" value="{{$subtotal+$subtotal*0.1}}">
                                            <input type="submit" value="Place Order" class="aa-browse-btn">                                                          
                                    </div>
                                </div>
                            </div>
                        </div>
                        @csrf
                    </form>
                </div>
            </div>
            </div>
        </div>
    </section>
 <!-- / Cart view section -->
@endsection

@section('js')
    
@endsection