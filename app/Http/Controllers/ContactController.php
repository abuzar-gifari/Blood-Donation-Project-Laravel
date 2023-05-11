<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contact_send(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'subject' => 'required',
            'message' => 'required',
        ]);

        $obj = new Contact();
        $obj->name = $request->name;
        $obj->email = $request->email;
        $obj->subject = $request->subject;
        $obj->message = $request->message;
        $obj->save();

        return redirect()->back()->with('success', 'Information is added successfully.');

    }
}
