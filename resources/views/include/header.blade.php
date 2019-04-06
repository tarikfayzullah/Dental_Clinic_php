<div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
        <div class="fl_left">
            <ul class="nospace">
                <li><a href="index.php"><i class="fas fa-home fa-lg"></i></a></li>
                @guest
                <li><a href="{{ route('login') }}">Login</a></li>
                @if (Route::has('register'))
                <li><a href="{{ route('register') }}">Register</a></li>
                @endif
                @else
                <li><a href="{{ route('logout') }}" onclick="event.preventDefault();
                document.getElementById('logout-form').submit();">Logout</a></li>
                @endguest
            </ul>
        </div>
        <div class="fl_right">
            <ul class="nospace">
                <li><i class="fas fa-phone rgtspace-5"></i> +8801683174077</li>
                <li><i class="fas fa-envelope rgtspace-5"></i>shaheenkader151@gmail.com</li>
            </ul>
        </div>
    </div>
</div>
<div class="wrapper row1">
    <header id="header" class="hoc clear"> 
        <div id="logo" class="one_half first">
            <img src="">
            <h1 class="logoname"><img  style="height:100px;width:150px;"  src="images/demo/logo.jpg"></h1>
        </div>
        <div class="one_half">
            <ul class="nospace clear">
                <li class="one_half first">
                    <div class="block clear"><i class="fas fa-phone"></i> <span><strong class="block">Call Us:</strong> +8801724561088</span> </div>
                </li>
                <li class="one_half">
                    <div class="block clear"><i class="far fa-clock"></i> <span><strong class="block"> Sat - Thu </strong> 09.00am - 06.00pm</span> </div>
                </li>
            </ul>
        </div>
    </header>
    <nav id="mainav" class="hoc clear"> 
        <ul class="clear">
            <li class="active"><a href="{{route('index')}}">Home</a></li>
            <li><a href="{{route('motive')}}">Motive</a></li>
            <li><a href="{{route('treatment')}}">Treatments</a></li>
            <li><a href="{{route('appointment')}}">Appointment</a></li>
            <li><a href="{{route('dentists')}}">Dentists</a></li>        
            <li><a href="{{route('location')}}">Location</a></li> 
            @if(auth()->user() && auth()->user()->user_type == 'admin')
            <li><a href="{{route('managementpage')}}">Management</a></li>      
            @endif;
        </ul>
    </nav>
</div>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    @csrf
</form>

