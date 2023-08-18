<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\Order_detail;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function __construct()
    {   
        
    }  

    public function index(){
        $products = Product::all();
        $products_men = Product::where('sex', 'men')->get();       
        $products_women = Product::where('sex', 'women')->get();       
        $products_kid = Product::where('sex', 'kid')->get();
        return view ('layout.home', compact('products','products_men', 'products_women', 'products_kid'));
        
    }

    public function cart(){
        
        return view('layout.cart');
    }
    
    public function account(){
      
        $orders = Order::select('id', 'status')
                        ->where('status', 'Waiting for confirm')
                        ->where('userID', Auth::user()->id)->get();
        $confirm = null;
        foreach($orders as $order){
           $order_detail = Order_detail::select('order_details.*', 'products.description','products.price', 'products.img')
                                        ->join('orders', 'order_details.orderID', '=', 'orders.id')
                                        ->join('products', 'order_details.productID', '=', 'products.id' )
                                        ->where('orderID', $order->id)->get();
           $confirm[] = $order_detail;
           
        } 
        
        $orders = Order::select('id', 'status')
                        ->where('status', 'Delivering')
                        ->where('userID', Auth::user()->id)->get();
        $delivery = null;
        foreach($orders as $order){
           $order_detail = Order_detail::select('order_details.*', 'products.description','products.price', 'products.img')
                                        ->join('orders', 'order_details.orderID', '=', 'orders.id')
                                        ->join('products', 'order_details.productID', '=', 'products.id' )
                                        ->where('orderID', $order->id)->get();
           $delivery[] = $order_detail;
           
        } 

        $orders = Order::select('id', 'status')
                        ->where('status', 'Completed')
                        ->where('userID', Auth::user()->id)->get();
        $completed = null;
        foreach($orders as $order){
           $order_detail = Order_detail::select('order_details.*', 'products.description','products.price', 'products.img')
                                        ->join('orders', 'order_details.orderID', '=', 'orders.id')
                                        ->join('products', 'order_details.productID', '=', 'products.id' )
                                        ->where('orderID', $order->id)->get();
           $completed[] = $order_detail;
           
        } 

        $orders = Order::select('id', 'status')
                        ->where('status', 'Cancelled')
                        ->where('userID', Auth::user()->id)->get();
        $cancelled = null;
        foreach($orders as $order){
           $order_detail = Order_detail::select('order_details.*', 'products.description','products.price', 'products.img')
                                        ->join('orders', 'order_details.orderID', '=', 'orders.id')
                                        ->join('products', 'order_details.productID', '=', 'products.id' )
                                        ->where('orderID', $order->id)->get();
           $cancelled[] = $order_detail;
           
        } 

        return view('layout.account', compact('confirm', 'delivery', 'completed', 'cancelled'));
    }

    public function updateInfo(Request $request){
        
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone_number' => ['required', 'digits:10', 'regex:/^0/'],
            'address' => 'required',
        ]);

        if($validator->fails()){
            
            return back()->withErrors($validator);
        }

        $user = User::find(Auth::user()->id);
        $user->name = $request->name;
        $user->phone_number = $request->phone_number;
        $user->address = $request->address;
        $user->save();

        return back()->with('success', 'update successful');
    }

    public function updatePassword(Request $request){
        
        $request->validate([
            'current_password' => 'required',
            'new_password' => 'min:6|required_with:confirm_password|same:confirm_password',
            'confirm_password' => 'required|min:6' 
        ]);

        $user = User::find(Auth::user()->id);
        if (!Hash::check($request->current_password,  $user->password)) {
            return back()->with('error_changePass', 'Old Password is not right');
        }

        $user->password = Hash::make($request->new_password);
        $user->save();
        return back()->with('success_changePass', 'Change Password successful');
        

        
    }

    public function getProduct(){
        $products = Product::all();
        $categories = Category::all();
        return view('layout.product', compact('products', 'categories'));
    }

    public function getProductBySex($slug, $categoryID = 0){
        $categories = Category::all();
        if($categoryID != 0){
            $products = Product::where('categoryID', $categoryID)->where('sex', $slug)->get();
            return view('layout.product', compact('products', 'categories'));
        } else {
            $products = Product::where('sex', $slug)->get();
            return view('layout.product', compact('products', 'categories'));
        }       
    }

    public function getProductByCategory($categoryID){
        $categories = Category::all();
        $products = Product::where('categoryID', $categoryID)->get();
        return view('layout.product', compact('products', 'categories'));
    }

    public function blog(){
        return view('layout.blog');
    }

    public function contact(){
        return view('layout.contact');
    }


    

    
}


