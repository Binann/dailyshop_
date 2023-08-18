@extends('index')

@section('title')
    Checkout
@endsection

@section('content')
    <section id="aa-error">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
            <div class="aa-error-area" style="border: 5px solid green;">
                <h2 style="color:green;border-bottom: 2px solid green; ">Successful</h2>
                <span>Order Success</span>
                <p>Sorry this content has been moved Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum, amet perferendis, nemo facere excepturi quis.</p>
                <a href="{{route('home')}}"> Go to Homepage</a>
            </div>
            </div>
        </div>
        </div>
        <br>
        <br>
    </section>
@endsection