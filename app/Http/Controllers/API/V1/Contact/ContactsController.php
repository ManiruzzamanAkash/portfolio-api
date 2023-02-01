<?php

namespace App\Http\Controllers\API\V1\Contact;

use App\Http\Controllers\Controller;
use App\Mail\SendContact;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class ContactsController extends Controller
{
    public function store(Request $request)
    {

        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|min:0|max:255',
                'email' => 'required|string|email|min:0|max:100',
                'phone' => 'required|string|min:11|max:15',
                'message' => 'required|string|min:0|max:255'
            ], [
                'name.required' => 'Please give your name',
                'email.required' => 'Please give your email',
                'phone.required' => 'Please give your phone number',
                'phone.min' => 'Please give your phone number minimum 11 characters',
                'message.required' => 'Please write your message'
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Something error in the form !!',
                    'data' => $validator->messages()
                ]);
            }


            $contact = new Contact();
            $contact->name = $request->name;
            $contact->email = $request->email;
            $contact->phone = $request->phone;
            if ($request->subject) {
                $contact->subject = $request->subject;
            } else {
                $contact->subject = "Want to know something about you";
            }
            $contact->message = $request->message;
            $contact->save();


            Mail::send('emails.send-contact', ['contact' => $contact], function ($m) use ($contact) {
                $m->from(config('app.email'), config('app.email_from'));
                $m->to($contact->email, $contact->subject)
                    ->subject($contact->subject);
            });
            return response()->json([
                'status' => true,
                'message' => "Thank you <strong>" . $contact->name . "</strong> ! I've received your mail. I'll contact with you soon."
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Something wrong happened !! Please fill all the fields.'
            ]);
        }
    }
}
