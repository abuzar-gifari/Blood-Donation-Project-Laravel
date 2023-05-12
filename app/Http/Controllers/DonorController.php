<?php

namespace App\Http\Controllers;

use App\Models\BloodDonor;
use Illuminate\Http\Request;

class DonorController extends Controller
{
    public function find_blood_group(Request $request)
    {
        $bloodgroup = $request->bloodgroup;

        $request->validate([
            'bloodgroup' => 'required',
        ]);

        $search_results = BloodDonor::where('bloodgroup','=',$bloodgroup)->get();
        return view('donor_search_lists',compact('search_results'));

    }



    public function be_donor(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'password' => 'required',
            'fullname' => 'required',
            'dob' => 'required',
            'gender' => 'required',
            'bloodgroup' => 'required',
            'mobile' => 'required',
            'email' => 'required',
            'town' => 'required',
            'state' => 'required',
        ]);

        $obj = new BloodDonor();
        $obj->username = $request->username;
        $obj->password = md5($request->password);
        $obj->fullname = $request->fullname;
        $obj->dob = $request->dob;
        $obj->sex = $request->gender;
        $obj->bloodgroup = $request->bloodgroup;
        $obj->mobile = $request->mobile;
        $obj->email = $request->email;
        $obj->town = $request->town;
        $obj->state = $request->state;
        $obj->save();

        return redirect()->back()->with('success', 'Information is added successfully.');

    }
}
