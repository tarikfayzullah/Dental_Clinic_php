<!DOCTYPE html>
<html lang="eng">

<head>
	<title>Adventist Dental Clinic</title>
	<meta charset="utf-8">

    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">

	
</head>

<!-- <pre>@{{notificationSubmitData | json}}</pre> -->

<body id="top">
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
    @include('include.header')
    <div class="container">
        @yield('content')
    </div>
    <!-- Footer -->
    <div class="wrapper row5">
      <div id="copyright" class="hoc clear"> 
         <br>

         <p class="fl_middle">Copyright &copy; 2019 - All Rights Reserved: Developed by Shaheen Shuvo And Stive Shuvo </p>
     </div>
 </div>

 <!-- JAVASCRIPTS -->
 <script type="text/javascript" src="{{asset('bootstrap/js/bootstrap.min.js')}}" ></script>
 <script src="layout/scripts/jquery.min.js"></script>
 <script src="layout/scripts/jquery.backtotop.js"></script>
 <script src="layout/scripts/jquery.mobilemenu.js"></script>


</body>

</html>