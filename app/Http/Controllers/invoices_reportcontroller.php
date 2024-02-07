<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;

class invoices_reportcontroller extends Controller
{
    //
    public function index(){
    return view ('reports.invoices_report');
    }
    public function show(Request $request){
        $rdio=$request->rdio;
        if($rdio  ==   1){
            if($request->type &&  $request->start_at  ==  '' && $request->end_at  ==  '' ){
                $invoices = invoices::select('*')->where ('status','=',$request->type)->get();
                $type=$request->type;
                return view ('reports.invoices_report',compact('type','invoices'));
            }
            else{
                $startdate=date($request->start_at);
                $Enddate=date($request->end_at);
                $type=$request->type;
                $invoices=invoices::select('*')->whereBetween('invoice_Date',[$startdate,$Enddate])->where('status','=',$request->type)->get();
                return view ('reports.invoices_report',compact('type','invoices','startdate','Enddate'));


            }
        }
        else{

            $invoices = invoices::select('*')->where('invoice_number','=',$request->invoice_number)->get();

            return view ('reports.invoices_report',compact('invoices'));



        }

        }
}
