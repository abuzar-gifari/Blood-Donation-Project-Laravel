<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\BloodDonor;
use App\Models\Contact;
use App\Models\Faq;
use Illuminate\Http\Request;

class AdminHomeController extends Controller
{
    public function index()
    {
        $total_blood_donors = BloodDonor::count();
        $total_faqs = Faq::count();
        $total_contacts = Contact::count();

        return view('admin.home', compact('total_blood_donors','total_faqs','total_contacts'));
    }
}
