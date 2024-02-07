<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use App\Models\sections;
use Illuminate\Http\Request;

class customers_reportcontroller extends Controller
{
    
        public function index(){
            $sections=sections::all();
            return view ('reports.customers_report',compact('sections'));}
        public function show(request $request){
            $start=date($request->start_at);

            if ($request->Section && $request->product && $request->start_at=='' && $request->end_at==''){
                $invoices=invoices::select('*')->where('section_id','=',$request->Section)->where('product','=',$request->product)->get();
                $sections=sections::all();
                return view ('reports.customers_report',compact('sections','invoices'));
            }
            else{
                $start=date($request->start_at);
                $end=date($request->end_at);
                $invoices=invoices::whereBetween('invoice_Date',[$start,$end])
                ->where('section_id','=',$request->Section)
                ->where('product','=',$request->product)
                ->get();
                $sections=sections::all();
                return view ('reports.customers_report',compact('sections','invoices'));

            }



}
}
