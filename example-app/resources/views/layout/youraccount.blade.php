@extends('index')
@section('title')
    
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
                                 <!-- <li><a href="#women" data-toggle="tab">Women</a></li> -->
                                 <li><a href="#sales" data-toggle="tab">Sales</a></li>
                                 <li ><a href="#pro_manager" data-toggle="tab">Product Manager</a></li>
                                 <li><a href="#order_manager" data-toggle="tab">Order Manager</a></li>
                                 <li><a href="#order" data-toggle="tab">Order</a></li>                           
                                 <li><a href="#notify" data-toggle="tab">Notify</a></li>
                                 <li><a href="#change_pass" data-toggle="tab">Change Password</a></li>
                             </ul>
                         </div>
                         <div class="col-md-10">
                             <div class="aa-myaccount-login">

                                 <div class="tab-content">
                                     <!-- Start men product category -->
                                     <div class="tab-pane fade in active" id="my_account">
                                         <form action="controller.php?act=update_user" method="post">
                                            <h2>My Account</h2>
                                            <p>Manage profile information for account security</p>
                                            <hr>
                                            <h5 style="font-size: 1.2em; ">Username</h5>
                                            <input style="width:30%" type="text" value="" readonly>
                                            <h5 style="font-size: 1.2em; ">Name</h5>
                                            <input style="width:30%" type="text" name="name" value="">
                                            <h5 style="font-size: 1.2em; ">Email</h5>
                                            <input style="width:30%" type="text" name="email" value="">
                                            <h5 style="font-size: 1.2em; ">Gender</h5>
                                            <label for="male">  <input type="radio" id="male"     name="gender" value="Male" checked> Male </label>
                                            <label for="female"><input type="radio" id="female"   name="gender" value="Female"> Female</label>
                                            <label for="LGBT">  <input type="radio" id="LGBT"     name="gender" value="LGBT"> LGBT </label>
                                            <h5 style="font-size: 1.2em; ">Phone Number</h5>
                                            <input style="width:30%" type="text" name="phone_number" value=""><br>
                                            <h5 style="font-size: 1.2em; ">Date of birth</h5>
                                            <input style="width:30%" type="text" name="date_of_birth" value=""><br>
                                            <input type="hidden" name="name_old" value="" >
                                            <input style=" margin-top:1em; padding: 0.5em 2em 0.5em 2em " type="submit" value="Save">
                                         </form>                                        
                                     </div>
                                     <div class="tab-pane fade  " id="order">
                                        <h2>Order</h2>
                                         <ul class="nav nav-tabs aa-products-tab">
                                             <li class="active"><a href="#men" data-toggle="tab">All</a></li>
                                             <!-- <li><a href="#women" data-toggle="tab">Women</a></li> -->
                                             <li><a href="#kid" data-toggle="tab">Confirmation</a></li>
                                             <li><a href="#women" data-toggle="tab">Transport</a></li>
                                             <li><a href="#women" data-toggle="tab">Delivering</a></li>
                                             <li><a href="#women" data-toggle="tab">Completed</a></li>
                                             <li><a href="#women" data-toggle="tab">Cancelled</a></li>
                                             <li><a href="#women" data-toggle="tab">Returns</a></li>
                                         </ul>
                                         <hr>
                                     </div>
                                     <div class="tab-pane fade" id="pro_manager">
                                         <h2>Product Manager</h2>
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
                                                                     <th></th>
                                                                     <th></th>
                                                                 </tr>
                                                                 @foreach ($list_products as $product)
                                                                    <tr>
                                                                        <td><a href="#"><img style="width:20%" src="{{asset('assets/images/child/'. $product->link_img)}}" alt="img"></a></td>
                                                                        <td><a class="aa-cart-title" href="#">{{$product->name}}</a></td>
                                                                        <td>${{$product->price}}</td>                                                                
                                                                        <td>10</td>
                                                                        <td>
                                                                            <button class="btn btn-primary">Update</button>
                                                                        </td>
                                                                        <td>
                                                                            <button class="btn btn-danger">Delete</button>
                                                                        </td>
                                                                    </tr>
                                                                 @endforeach
                                                             </thead>
                                                             <tbody>
                                                                
                                                             </tbody>
                                                         </table>
                                                     </div>
                                                 </form>
                                                 <!-- Cart Total view -->

                                             </div>
                                         </div>
                                     </div>
                                     <div class="tab-pane fade  " id="sales">
                                         <h2>Sales</h2>
                                     </div>
                                     <div class="tab-pane fade  " id="order_manager">
                                         <h2>Order Manager</h2>
                                     </div>
                                     <div class="tab-pane fade  " id="notify">
                                         <h2>Notify</h2>
                                     </div>
                                     <div class="tab-pane fade  " id="change_pass">
                                         <h2>Change Password </h2>
                                         <h5 style="font-size: 1.2em; ">Password</h5>
                                         <input style="width:30%" type="text" value="">
                                         <h5 style="font-size: 1.2em; ">New Password</h5>
                                         <input style="width:30%" type="text" value="">
                                         <h5 style="font-size: 1.2em; ">Confirm Password</h5>
                                         <input style="width:30%" type="text" value=""> <br>
                                         <input style=" margin-top:1em; padding: 0.5em 2em 0.5em 2em " type="submit"
                                             value="Save">
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

@section('js')
    
@endsection