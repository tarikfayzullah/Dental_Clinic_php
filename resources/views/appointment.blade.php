
@extends('master')


@section('content')

<h1 class="text-center">Appointment Form</h1>


<form class="form-horizontal" action="{{ route('store') }}" method="post">


    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    {{csrf_field()}}
    <div class="form-group">
        <label class="control-label col-sm-3" for="dr_list" >Doctor name:</label>
        <div class="col-sm-9">
            <select class="form-control" name="dr_list" id="dr_list">
                <option>Select A Doctor Name</option>
                @foreach($theDoctorsList as $doctor)
                <option value="{{$doctor->id_doctor}}">{{$doctor->name}}</option>
                @endforeach

            </select>
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="date" >Date:</label>
        <div class="col-sm-9">
            <select class="form-control" name="date" id="date">
                <option>Select A Date</option>
                @foreach($dateList as $date)
                <option value="{{$date->id_date}}">{{$date->date_name}}</option>
                @endforeach
            </select>
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="time" >Time:</label>
        <div class="col-sm-9">
            <select class="form-control" name="time" id="time">
                <option value="">Select time slot</option>

                @foreach($timeSlot as $time)
                <option value="{{$time->id_time_slot}}">{{$time->time}}</option>
                @endforeach

            </select>
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="user_phone" >Contact Number:</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" name="user_phone" id="user_phone">
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="email" >Email:</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" name="email" id="email">
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="info" >Info:</label>
        <div class="col-sm-9">
            <textarea class="form-control" name="info" id="info" rows="5"></textarea> 
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-6" ></label>
        
        <button class="btn btn-success">Submit</button>
    </div>


</form>

@endsection('content')