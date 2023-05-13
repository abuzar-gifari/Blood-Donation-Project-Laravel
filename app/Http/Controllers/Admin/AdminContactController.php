<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AdminContactController extends Controller
{
    public function contacts()
    {
        $contacts = \App\Models\Contact::get();
        return view('admin.contact_lists',compact('contacts'));
    }
}
