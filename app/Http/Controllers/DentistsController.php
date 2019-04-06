<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DentistsController extends Controller
{
    public function dentists()
    {
        return view('dentists');
    }
}
