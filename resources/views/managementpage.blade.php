<!DOCTYPE html>
<html>
<head>
	<title>Patient Management Database Page</title>
		<meta charset="utf-8">

	<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
</head>
<body>

<div class="container">
	<h1 class="text-center">Patient Management Page for Admin</h1>
		
	<table class="table table-reponsive table-hover">
	    <tr>
	      <th class="text-center">Sl</th>
	      <th class="text-center">Doctor Name</th>
	      <th class="text-center">Date</th>
	      <th class="text-center">Time</th>
	      <th class="text-center">User Phone</th>
	      <th class="text-center">Email</th>
	      <th class="text-center">Info</th>
	      <!-- <th class="text-center">Action</th> -->
	    </tr>


	    @php $i = 0; @endphp

		@foreach ($appointments as $appointment)

		@php $i++ @endphp
	    <tr>
	      <td>{{ $i }}</td>
	      <td>{{ $appointment->dr_list }}</td>
	      <td>{{ $appointment->date }}</td>
	      <td>{{ $appointment->time }}</td>
	      <td>{{ $appointment->user_phone }}</td>
	      <td>{{ $appointment->email }}</td>
	      <td>{{ $appointment->info }}</td>
<!-- 	      <td class="text-center">
	        <a href="#"  class="btn btn-success">Edit</a>
	      </td> -->
	    </tr>
	    @endforeach
	 </table>

</div>


<script type="text/javascript" src="{{asset('bootstrap/js/bootstrap.min.js')}}" ></script>
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>