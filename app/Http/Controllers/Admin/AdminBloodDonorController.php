<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdminBloodDonorController extends Controller
{
    public function blood_donors()
    {
        $total = \App\Models\BloodDonor::count();
        $blood_donors = \App\Models\BloodDonor::get();
        return view('admin.donor_lists',compact('total','blood_donors'));
    }
}
