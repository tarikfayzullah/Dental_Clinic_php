@extends('master')


@section('content')


<style>
#map{
	height: 600px;
	width: 100%;
}
</style>


<style>
#map{
  height: 600px;
  width: 100%;
}
</style>

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div class="content"> 
      <div id="gallery">
        <figure>
          <header class="heading">Location</header>

          <div id ="map">
            
          </div>

          <script>
            function initMap(){
              var location = {lat: 23.787, lng: 90.377};
              var map = new google.maps.Map(document.getElementById("map"), {
                zoom: 4,
                center:location
            });
              var marker = new google.maps.Marker({position: location, map: map});
          }
      </script>
      <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCMCZIxFGxUWB94knv3queHt6gNZxycwzw&callback=initMap">
  </script>

</figure>
</div>
</div>
</main>
</div>



@endsection