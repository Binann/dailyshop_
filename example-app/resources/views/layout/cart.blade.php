@extends('index')

@section('title')
    Cart
@endsection

@section('content')
    <!-- catg header banner section -->
    {{-- <section id="aa-catg-head-banner">
        <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
        <div class="aa-catg-head-banner-area">
        <div class="container">
        <div class="aa-catg-head-banner-content">
            <h2>Cart Page</h2>
            <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>                   
            <li class="active">Cart</li>
            </ol>
        </div>
        </div>
        </div>
    </section> --}}
    <!-- / catg header banner section -->
    
    <!-- Cart view section -->
    <section id="cart-view">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
            <div class="cart-view-area">
                <div class="cart-view-table">
                <form action="">
                    <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            
                            <th>Img</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                            @php
                                $total = 0;
                                $count = -1 ;
                                $cart = session()->get('cart');
                                
                            @endphp
                            @if(!empty(session()->get('cart')))
                              
                            @foreach ($cart as $item)
                                @php
                                    $total += $item['price']*$item['quantity'];                           
                                    $count++;
                                @endphp
                            <tr>
                                
                                <td><a href="#"><img src="{{asset('storage/'.$item['link_img']) }} " alt="img"></a></td>
                                <td><a class="aa-cart-title" href="#">{{$item['name']}}</a></td>
                                <td>${{$item['price']}}</td>
                                <td>
                                   
                                    <a class="btn btn-sm btn-incre" href="{{route('cart.edit_cart', ['slug'=> 'minus' ,'id'=>$item['id'],])}}"><i class="fas fa-minus-square"></i></a>                         
                                    <input class="aa-cart-quantity" value="{{$item['quantity']}}" readonly>
                                    <a class="btn btn-sm btn-incre" href="{{route('cart.edit_cart', ['slug'=> 'plus', 'id'=>$item['id'] ])}}"><i class="fas fa-plus-square"></i></a>
                                <td>${{$item['price']*$item['quantity']}}</td>
                                <td><a class="remove" href="{{route('cart.remove_product_in_cart', ['id'=>$item['id']])}}"><fa class="fa fa-close"></fa></a></td>
                                
                            </tr>
                            @endforeach 
                           
                            @endif
                          
                           
                        
                       
                        
                        </tbody>
                    </table>
                    </div>
                </form>
                <!-- Cart Total view -->
                <div class="cart-view-total">
                    <h4>Cart Totals</h4>
                    <table class="aa-totals-table">
                    <tbody>
                        <tr>
                        <th>Total</th>
                        <td>${{$total}}</td>
                        </tr>
                       
                    </tbody>
                    </table>
                    <a href="{{route('checkout')}}" class="aa-cart-view-btn">Proced to Checkout</a>
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
    
@endsection