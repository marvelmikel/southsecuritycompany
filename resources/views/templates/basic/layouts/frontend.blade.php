<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $general->sitename(__($pageTitle)) }}</title>
    @include('partials.seo')
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/line-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/lightbox.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/jquery-ui.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/owl.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/select2.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/bootstrap-fileinput.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/templates/basic/frontend/css/custom.css')}}">
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6334f01d37898912e96bde22/1ge3cju8o';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
    <link rel="shortcut icon" href="{{getImage(imagePath()['logoIcon']['path'] .'/favicon.png')}}" type="@lang('image/x-icon')">
    <link href="{{ asset('public/assets/templates/basic/frontend/css/color.php') }}?color={{$general->base_color}}" rel="stylesheet"/>
    @stack('style-lib')
    @stack('style')
</head>

<body>
    @stack('fbComment')
    <div class="overlay"></div>
    <a href="#0" class="scrollToTop"><i class="las la-angle-up"></i></a>
    <div class="preloader">
        <div class="loader"></div>
    </div>
    @include($activeTemplate . 'partials.header')
    @yield('content')
    @include($activeTemplate . 'partials.footer')
    @php
        $cookie = App\Models\Frontend::where('data_keys','cookie.data')->first();
    @endphp




    <div class="cookie__wrapper @if(session('cookie_accepted')) d-none @endif">
        <div class="container">
          <div class="d-flex flex-wrap align-items-center justify-content-between">
            <p class="txt my-2">
              @php echo @$cookie->data_values->description @endphp<br>
              <a href="{{ @$cookie->data_values->link }}" target="_blank">@lang('Read Policy')</a>
            </p>
              <button class="cmn--btn my-2 policy">@lang('Accept')</button>
          </div>
        </div>
    </div>


    <script src="{{asset('public/assets/templates/basic/frontend/js/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/rafcounter.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/lightbox.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/wow.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/owl.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/viewport.jquery.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/jquery-ui.min.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/select2.js')}}"></script>
    <script src="{{asset('public/assets/templates/basic/frontend/js/main.js')}}"></script>

    @stack('script-lib')
    @stack('script')
    @include('partials.plugins')
    @include('partials.notify')
    <script>
       $('document').ready(function() {
            "use strict";
            $(".langChanage").on("change", function() {
                window.location.href = "{{route('home')}}/change/"+$(this).val() ;
            });
            @if(@$cookie->data_values->status && !session('cookie_accepted'))
                $('#cookieModal').modal('show');
            @endif

            $('.policy').on('click',function(){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.get('{{ route('cookie.accept') }}', function(response){
                $('.cookie__wrapper').addClass('d-none');
            });
        });
        });
    </script>
    
        
    
    
        
        
</body>

</html>



