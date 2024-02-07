<?php

namespace App\Http\Controllers;

use App\Services\WhatsAppService;
use Illuminate\Http\Request;

class messagecontroller extends Controller
{
    public function index()
    {

        return view('messages.index');
    }
    public function store( Request $request)
    {
        $msg = $request->message;
        $number = $request->invoice_number;
        $whatsAppService = new WhatsAppService();
        $response = $whatsAppService->sendData($msg,$number);
        // return  $response;
        if($response['status']){
            // handel success case
        }else{
            // handel falid case
        }
        return redirect()->route('sendmessage')->with('Add','Message Send sucessfully');
    }
}
