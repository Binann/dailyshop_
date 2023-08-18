<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_detail;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::all();
        $products_men = Product::find('men');
        return view ('layout.home')->with('products', $products);
    }

    public function addToCart($id){
        
        $product = Product::find($id);   
       
        $cart = session()->get('cart');
        if(isset($cart[$id])){          
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        }else {
            $cart[$id] = [
                'id' => $product->id,
                'name' => $product->name,
                'price'=> $product->price,
                'link_img' => $product->img,
                'quantity' => 1,               
            ];
            
        }

        session()->put('cart' , $cart );
        return back()->with('message', 'add to cart successfully');
        
    }

    public function editCart($slug, $id){
        $cart = session()->get('cart');
        if($slug === 'minus'){
            $cart[$id]['quantity'] = $cart[$id]['quantity'] - 1;
            if($cart[$id]['quantity'] == 0){
                unset($cart[$id]);
            }
        } else {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + 1;
        }
        session()->put('cart' , $cart );

        return back();
    }

    public function remove_product_in_cart($id){
        $cart = session()->get('cart');
        unset($cart[$id]);
        session()->put('cart' , $cart );
        return back();
    }

    public function product_detail($id){
        $product = Product::select('products.*', 'categories.category_name')
        ->join('categories', 'products.categoryID', '=', 'categories.id')
        ->where('products.id', $id)
        ->first();
        $products = Product::where('products.categoryID', $product->categoryID)->get(); 
       
        return view('layout.productdetail', compact('product', 'products'));
    }

    public function checkout(){
        if(!Auth::check()){
            return redirect()->route('login');
        }
        else{
            return view('layout.checkout');
        }
    }

    public function checkoutPost(Request $request){
        
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone_number' => ['required', 'digits:10', 'regex:/^0/'],
            'address' => 'required',
        ]);

        if($validator->fails()){
            return back()->withErrors($validator);
        }

        dd($request->optionsRadios);
        $order = new Order();
        $order -> userID = Auth::user()->id;
        $order -> name = $request -> name;
        $order -> email = $request -> email;
        $order -> address = $request -> address;
        $order -> phone_number = $request -> phone_number;
        $order -> total = $request -> total;
        $order -> pay_method = $request -> optionsRadios; 
        $order -> status = 'Waiting for confirm';
        $order -> save();
        $lastProductId = Order::orderBy('id', 'desc')
        ->value('id');

        $cart = session()->get('cart');

        foreach($cart as $item){
            $order_detail = new Order_detail();
            $order_detail -> orderID = $lastProductId;
            $order_detail -> productID = $item['id'];
            $order_detail -> quantity = $item['quantity'];
            $order_detail -> save();
        };

        session()->forget('cart');
        return redirect()->route('checkout_success');

    }

    public function checkout_success(){
        return view('layout.checkoutSuccess');
    }

    

    
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
