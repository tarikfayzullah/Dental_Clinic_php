<?php

namespace App\Http\Controllers;

use App\Appointment;
use Illuminate\Http\Request;
use \DB;

class AppointmentsController extends Controller
{


    public function appointment()
    {
        $doctors = DB::table('doctors')->get();
        $times = DB::table('time_slot')->get();
        $dates = DB::table('date_table')->get();
        return view('appointment', ['theDoctorsList' => $doctors, 'timeSlot' => $times, 'dateList'=>$dates]);
    }


    public function store(Request $request)
    {   
        //Validation
        $this->validate($request, [
            'dr_list'=>'Required',
            'date'=>'Required',
            'time'=>'Required',
            'user_phone'=>'Required',
            'email'=>'nullable',
            'info'=>'nullable',
        ]);

        $alreadyAppointed = Appointment::where('dr_list',$request->dr_list)
        ->where('date',$request->dr_list)
        ->where('time',$request->time)
        ->count();

        if($alreadyAppointed > 0){
            return "Slot already full. Try a different slot";
        };

       // Insert Data into appointments table
        $appointment = new Appointment;
        $appointment ->dr_list = $request->dr_list;
        $appointment ->date = $request->date;
        $appointment ->time = $request->time;
        $appointment ->user_phone = $request->user_phone;
        $appointment ->email = $request->email;
        $appointment ->info = $request->info;
        $appointment->save();

        return redirect()->route('appointment');

    }

}
