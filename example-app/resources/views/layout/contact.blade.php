@extends('index')

@section('title')
    Contact
@endsection

@section('content')
    <!-- catg header banner section -->
{{-- <section id="aa-catg-head-banner">
    <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
      <div class="container">
       <div class="aa-catg-head-banner-content">
         <h2>Contact</h2>
         <ol class="breadcrumb">
           <li><a href="index.html">Home</a></li>         
           <li class="active">Contact</li>
         </ol>
       </div>
      </div>
    </div>
</section> --}}
   <!-- / catg header banner section -->
 <!-- start contact section -->
<section id="aa-contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-contact-area">
            <div class="aa-contact-top">
              <h2>We are wating to assist you..</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi, quos.</p>
            </div>
            <!-- contact map -->
            <div class="aa-contact-map">
              
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.9669801958235!2d108.2001940747986!3d16.067203184611927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142193a7e78036b%3A0xaab2e6f2028cee76!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIEFuaCBRdeG7kWMgQlRFQyBGUFQgxJDDoCBO4bq1bmc!5e0!3m2!1sen!2s!4v1686651509380!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
               </div>
            <!-- Contact address -->
            <div class="aa-contact-address">
              <div class="row">
                <div class="col-md-8">
                  <div class="aa-contact-address-left">
                    <form class="comments-form contact-form" action="">
                     <div class="row">
                       <div class="col-md-6">
                         <div class="form-group">                        
                           <input type="text" placeholder="Your Name" class="form-control">
                         </div>
                       </div>
                       <div class="col-md-6">
                         <div class="form-group">                        
                           <input type="email" placeholder="Email" class="form-control">
                         </div>
                       </div>
                     </div>
                      <div class="row">
                       <div class="col-md-6">
                         <div class="form-group">                        
                           <input type="text" placeholder="Subject" class="form-control">
                         </div>
                       </div>
                       <div class="col-md-6">
                         <div class="form-group">                        
                           <input type="text" placeholder="Company" class="form-control">
                         </div>
                       </div>
                     </div>                  
                      
                     <div class="form-group">                        
                       <textarea class="form-control" rows="3" placeholder="Message"></textarea>
                     </div>
                     <button class="aa-secondary-btn">Send</button>
                   </form>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="aa-contact-address-right">
                    <address>
                      <h4>DailyShop</h4>
                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum modi dolor facilis! Nihil error, eius.</p>
                      <p><span class="fa fa-home"></span>Huntsville, AL 35813, USA</p>
                      <p><span class="fa fa-phone"></span>+ 021.343.7575</p>
                      <p><span class="fa fa-envelope"></span>Email: support@dailyshop.com</p>
                    </address>
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