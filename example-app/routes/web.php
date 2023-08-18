<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

use App\Http\Controllers\HomeController;

use App\Http\Controllers\ProductController;

 

Route::get('/',[HomeController::class, 'index'])->name('home');

Route::get('/cart', [HomeController::class, 'cart'])->name('cart');

Route::get('/account', [HomeController::class, 'account'])->name('account');

Route::post('/account', [HomeController::class, 'updateInfo'])->name('updateInfo');

Route::put('/account/change-password', [HomeController::class, 'updatePassword'])->name('updatePassword');

Route::get('/checkout', [ProductController::class, 'checkout'])->name('checkout');

Route::post('/checkout', [ProductController::class, 'checkoutPost'])->name('checkoutPost');

Route::get('/checkout-success', [ProductController::class, 'checkout_success'])->name('checkout_success');


// Route::group(['middleware' => 'guest'], function(){
    Route::get('/register',[AuthController::class, 'register'])->name('register');

    Route::post('/register',[AuthController::class, 'registerPost'])->name('registerPost');

    Route::get('/login',[AuthController::class, 'login'])->name('login');

    Route::post('/login',[AuthController::class, 'loginPost'])->name('loginPost');
// });


// Route::group(['middleware' => 'auth'], function(){
    
Route::delete('/logout',[AuthController::class, 'logout'])->name('logout');
// });

Route::get('/add-to-cart/{id}', [ProductController::class, 'addToCart'])->name('addToCart');

Route::prefix('cart')->name('cart.')->group(function(){
    Route::get('/edit_cart/{slug}/{id}', [ProductController::class, 'editCart'])->name('edit_cart');
    Route::get('/remove/{id}', [ProductController::class, 'remove_product_in_cart'])->name('remove_product_in_cart');
});

Route::prefix('shop-page')->name('shopPage.')->group(function(){
    Route::get('/', [HomeController::class, 'getProduct'])->name('allProduct');
    Route::get('/{slug}/{categoryID?}', [HomeController::class, 'getProductBySex'])->name('productBySex');
   
       
});

Route::get('/category/{categoryID}', [HomeController::class, 'getProductByCategory'])->name('getProductByCategory');
Route::get('/product-detail/{id}', [ProductController::class, 'product_detail'])->name('product_detail');


Route::get('/blog', [HomeController::class, 'blog'])->name('blog');

Route::get('/contact', [HomeController::class, 'contact'])->name('contact');









