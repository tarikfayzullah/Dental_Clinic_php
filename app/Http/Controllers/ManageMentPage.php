<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Appointment;

class ManageMentPage extends Controller
{
    public function managementpage()
    {	
    	$appointments = Appointment::all();
    	return view('managementpage')->with('appointments', $appointments);
    }
}
