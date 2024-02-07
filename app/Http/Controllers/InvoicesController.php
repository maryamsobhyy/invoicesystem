<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\invoices;
use App\Models\sections;
use Illuminate\Http\Request;
use App\Models\notifications;
use App\Exports\invoiceexport;
use App\Notifications\invoice;
use App\Events\NewNotification;
use App\Models\invoices_details;
use App\Notifications\InvoiceAdd;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\invoices_attachments;
use App\Notifications\archieveinvoice;
use App\Notifications\changepayment;
use App\Notifications\deleteinvoice;
use App\Notifications\printinvoice;
use App\Notifications\updateinvoice;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Contracts\Mail\Attachable;
use Illuminate\Notifications\Notification;
use GuzzleHttp\Psr7\Request as Psr7Request;

class InvoicesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    function __construct()
{

$this->middleware('permission:قائمة الفواتير', ['only' => ['index']]);
$this->middleware('permission:اضافة فاتورة', ['only' => ['create','store']]);
$this->middleware('permission:تعديل الفاتورة', ['only' => ['edit','update']]);
$this->middleware('permission:حذف الفاتورة', ['only' => ['destroy']]);
$this->middleware('permission:تغير حالة الدفع', ['only' => ['change']]);

}
    public function index()
    {
        $invoices=invoices::get();
        return view('invoices.invoices',compact('invoices'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $sections=sections::all();
        return view('invoices.add_invoice',compact('sections'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        invoices::create([
        'invoice_number' => $request->invoice_number,
        'invoice_Date' => $request->invoice_Date,
        'Due_date' => $request->Due_date,
        'product' => $request->product,
        'section_id' => $request->Section,
        'Amount_collection' => $request->Amount_collection,
        'Amount_Commission' => $request->Amount_Commission,
        'Discount' => $request->Discount,
        'Value_VAT' => $request->Value_VAT,
        'Rate_VAT' => $request->Rate_VAT,
        'Total' => $request->Total,
        'Status' => 'غير مدفوعة',
        'Value_Status' => 2,
        'note' => $request->note,
        ]);
        $invoice_id = invoices::latest()->first()->id;
        invoices_details::create([
            'id_Invoice' => $invoice_id,
            'invoice_number' => $request->invoice_number,
            'product' => $request->product,
            'Section' => $request->Section,
            'Status' => 'غير مدفوعة',
            'Value_Status' => 2,
            'note' => $request->note,
            'user' => (Auth::user()->name),
        ]);

        if($request->hasFile('pic')){
            $invoice_id = invoices::latest()->first()->id;
            $image=$request->file('pic');
            $file_name=$image->getClientOriginalName();
            $created_by=auth()->user()->name;
            $invoice_number=$request->invoice_number;
            invoices_attachments::create([
                'file_name' => $file_name,
                'invoice_number' => $invoice_number,
                'Created_by' => Auth::user()->name,
                'invoice_id' => $invoice_id,
            ]);
            $request->pic->move(public_path('Attachments/'. $invoice_number), $file_name);
        }
            $user=user::first();
            $user->notify(new InvoiceAdd($invoice_id));
            $data=['user_id'=>Auth::id(),'user_name'=>Auth::user()->name,
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            ];
            $user = User::get();
            $invoices = invoices::latest()->first();
            foreach ($user as $u) {
                $u->notify(new invoice($invoices,'تم اضافه فاتوره بواسطه '));
            }
            // broadcast(new NewNotification($data));
            session()->flash('Add', 'The invoice added sucessfully');
            return back();


        }

    /**
     * Display the specified resource.
     */
    public function show(invoices $invoices,$id)
    {
        $invoices=invoices::find($id);
        return view('invoices.show',compact('invoices'));
    }
    public function change(Request $request,$id)
    {
       $invoice=invoices::find($id);
       if ($request->Status === 'مدفوعة') {
        $invoice->update([
            'Value_Status' => 1,
            'Status' => $request->Status,
            'Payment_Date' => $request->Payment_Date,
        ]);

        invoices_Details::create([
            'id_Invoice' => $request->invoice_id,
            'invoice_number' => $request->invoice_number,
            'product' => $request->product,
            'Section' => $request->Section,
            'Status' => $request->Status,
            'Value_Status' => 1,
            'note' => $request->note,
            'Payment_Date' => $request->Payment_Date,
            'user' => (Auth::user()->name),
        ]);
        $user = User::get();
        $invoices = invoices::where('invoice_number','=',$request->invoice_number)->first();
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم تغيير حاله الدفع بواسطه '));
        }
        session()->flash('Status_Update');
        return redirect('invoices');
    }
    else{
        $invoice->update([
            'Status'=>$request->Status,
            'Value_Status'=>3,
            'Payment_Date'=>$request->Payment_Date,
           ]);
        invoices_Details::create([
            'id_Invoice' => $request->invoice_id,
            'invoice_number' => $request->invoice_number,
            'product' => $request->product,
            'Section' => $request->Section,
            'Status' => $request->Status,
            'Value_Status' => 3,
            'note' => $request->note,
            'Payment_Date' => $request->Payment_Date,
            'user' => (Auth::user()->name),
        ]);
        $user = User::get();
        foreach ($user as $u) {
            $u->notify(new changepayment($invoice));
        }
        session()->flash('Status_Update');
        return redirect('invoices');
        }
    }



    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request)
    {
        //
        $id=$request->id;
        $invoice=invoices::find($id);
        $sections=sections::all();
        return view('invoices.edit',compact('invoice','sections'));



    }
    public function edit2(Request $request)
    {
        //
        $id=$request->id;
        $invoice=invoices::find($id);
        $sections=sections::all();
        return view('invoices.edit2',compact('invoice','sections'));



    }
    public function edit3(Request $request)
    {
        //
        $id=$request->id;
        $invoice=invoices::find($id);
        $sections=sections::all();
        return view('invoices.edit3',compact('invoice','sections'));



    }
    public function edit4(Request $request)
    {
        //
        $id=$request->id;
        $invoice=invoices::find($id);
        $sections=sections::all();
        return view('invoices.edit4',compact('invoice','sections'));



    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $invoice = invoices::find($id);
        if (!$invoice) {
            // التأكد من وجود الفاتورة قبل القيام بأي تحديث
            return back()->with('error', 'Invoice not found.');
        }

        $invoice->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => 'غير مدفوعة',
            'Value_Status' => 2,
            'note' => $request->note,
        ]);

        $invoice_id = $invoice->id;

        // تحقق من وجود التفاصيل قبل تحديثها
        $details = invoices_details::where('id_invoice', $invoice_id)->first();
        if ($details) {
            $details->update([
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => 'غير مدفوعة',
                'Value_Status' => 2,
                'note' => $request->note,
            ]);
        }

        // تحقق من وجود المرفقات قبل تحديثها
        $attachments = invoices_attachments::where('invoice_id', $invoice_id)->first();
        if ($attachments) {
            $attachments->update([
                'invoice_number' => $request->invoice_number,
            ]);
        }
        $user = User::get();
        // $invoices = invoices::where('id','=',$)->get();
        foreach ($user as $u) {
            $u->notify(new updateinvoice($invoice));
        }
        session()->flash('Add', 'The invoice updated successfully');
        return back();
    }
    public function update2(Request $request, $id)
    {
        $invoice = invoices::find($id);
        if (!$invoice) {
            // التأكد من وجود الفاتورة قبل القيام بأي تحديث
            return back()->with('error', 'Invoice not found.');
        }

        $invoice->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => 'مدفوعه جزئيا',
            'Value_Status' => 3,
            'note' => $request->note,
        ]);

        $invoice_id = $invoice->id;

        // تحقق من وجود التفاصيل قبل تحديثها
        $details = invoices_details::where('id_invoice', $invoice_id)->first();
        if ($details) {
            $details->update([
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => 'مدفوعه جزئيا',
                'Value_Status' => 3,
                'note' => $request->note,
            ]);
        }

        // تحقق من وجود المرفقات قبل تحديثها
        $attachments = invoices_attachments::where('invoice_id', $invoice_id)->first();
        if ($attachments) {
            $attachments->update([
                'invoice_number' => $request->invoice_number,
            ]);
        }
        $user = User::get();
        // $invoices = invoices::where('id','=',$)->get();
        foreach ($user as $u) {
            $u->notify(new updateinvoice($invoice));
        }
        $invoices=invoices::where('Value_Status',3)->get();
        session()->flash('update', 'The invoice updated successfully');
        return view ('invoices.particiallyinvoices',compact('invoices'));
    }
    public function update3(Request $request, $id)
    {
        $invoice = invoices::find($id);
        if (!$invoice) {
            // التأكد من وجود الفاتورة قبل القيام بأي تحديث
            return back()->with('error', 'Invoice not found.');
        }

        $invoice->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => 'غير مدفوعه',
            'Value_Status' => 2,
            'note' => $request->note,
        ]);

        $invoice_id = $invoice->id;

        // تحقق من وجود التفاصيل قبل تحديثها
        $details = invoices_details::where('id_invoice', $invoice_id)->first();
        if ($details) {
            $details->update([
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => 'غير مدفوعه',
                'Value_Status' => 2,
                'note' => $request->note,
            ]);
        }

        // تحقق من وجود المرفقات قبل تحديثها
        $attachments = invoices_attachments::where('invoice_id', $invoice_id)->first();
        if ($attachments) {
            $attachments->update([
                'invoice_number' => $request->invoice_number,
            ]);
        }
        $user = User::get();
        // $invoices = invoices::where('id','=',$)->get();
        foreach ($user as $u) {
            $u->notify(new updateinvoice($invoice));
        }
        $invoices=invoices::where('Value_Status',2)->get();
        session()->flash('update', 'The invoice updated successfully');
        return view ('invoices.unpaidinvoices',compact('invoices'));
    }
    public function update4(Request $request, $id)
    {
        $invoice = invoices::find($id);
        if (!$invoice) {
            // التأكد من وجود الفاتورة قبل القيام بأي تحديث
            return back()->with('error', 'Invoice not found.');
        }

        $invoice->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => ' مدفوعه',
            'Value_Status' => 1,
            'note' => $request->note,
        ]);

        $invoice_id = $invoice->id;

        // تحقق من وجود التفاصيل قبل تحديثها
        $details = invoices_details::where('id_invoice', $invoice_id)->first();
        if ($details) {
            $details->update([
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'Section' => $request->Section,
                'Status' => ' مدفوعه',
                'Value_Status' => 1,
                'note' => $request->note,
            ]);
        }

        // تحقق من وجود المرفقات قبل تحديثها
        $attachments = invoices_attachments::where('invoice_id', $invoice_id)->first();
        if ($attachments) {
            $attachments->update([
                'invoice_number' => $request->invoice_number,
            ]);
        }
        $user = User::get();
        // $invoices = invoices::where('id','=',$)->get();
        foreach ($user as $u) {
            $u->notify(new updateinvoice($invoice));
        }
        $invoices=invoices::where('Value_Status',1)->get();
        session()->flash('update', 'The invoice updated successfully');
        return view ('invoices.paidinvoices',compact('invoices'));
    }
    // public function updatepartilly(Request $request, $id)
    // {
    //     $invoice = invoices::find($id);
    //     if (!$invoice) {
    //         // التأكد من وجود الفاتورة قبل القيام بأي تحديث
    //         return back()->with('error', 'Invoice not found.');
    //     }

    //     $invoice->update([
    //         'invoice_number' => $request->invoice_number,
    //         'invoice_Date' => $request->invoice_Date,
    //         'Due_date' => $request->Due_date,
    //         'product' => $request->product,
    //         'section_id' => $request->Section,
    //         'Amount_collection' => $request->Amount_collection,
    //         'Amount_Commission' => $request->Amount_Commission,
    //         'Discount' => $request->Discount,
    //         'Value_VAT' => $request->Value_VAT,
    //         'Rate_VAT' => $request->Rate_VAT,
    //         'Total' => $request->Total,
    //         'Status' => 'مدفوعه جزئيا',
    //         'Value_Status' => 2,
    //         'note' => $request->note,
    //     ]);

    //     $invoice_id = $invoice->id;

    //     // تحقق من وجود التفاصيل قبل تحديثها
    //     $details = invoices_details::where('id_invoice', $invoice_id)->first();
    //     if ($details) {
    //         $details->update([
    //             'invoice_number' => $request->invoice_number,
    //             'product' => $request->product,
    //             'Section' => $request->Section,
    //             'Status' => 'مدفوعه جزئيا',
    //             'Value_Status' => 2,
    //             'note' => $request->note,
    //         ]);
    //     }

    //     // تحقق من وجود المرفقات قبل تحديثها
    //     $attachments = invoices_attachments::where('invoice_id', $invoice_id)->first();
    //     if ($attachments) {
    //         $attachments->update([
    //             'invoice_number' => $request->invoice_number,
    //         ]);
    //     }
    //     $user = User::get();
    //     // $invoices = invoices::where('id','=',$)->get();
    //     foreach ($user as $u) {
    //         $u->notify(new updateinvoice($invoice));
    //     }
    //     session()->flash('Add', 'The invoice updated successfully');
    //     return view ('invoices.partiallyinvoices');
    // }




    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $id=$request->invoice_id;
        $invoice=invoices::where('id',$id)->first();
        $invoice->ForceDelete();
        session()->flash('delete_invoice');
        return back();

    }
    public function getproducts($id)
    {

        $products = DB::table("products")->where("section_id", $id)->pluck("Product_name", "id");
        return json_encode($products);

    }
    public function paidinvoice()
    {
        $invoices=invoices::where('Value_Status',1)->get();
        return view('invoices.paidinvoices',compact('invoices'));


    }
    public function export()
    {
        return Excel::download(new invoiceexport, 'invoices.xlsx');
    }
    public function unpaidinvoice()
    {
        $invoices=invoices::where('Value_Status',2)->get();
        return view('invoices.unpaidinvoices',compact('invoices'));


    }
    public function archieve(Request $request)
    {
        $id=$request->invoice_id;
        $invoices=invoices::find($id);
        $user = User::get();
        $invoices = invoices::where('id','=',$id)->first();
        foreach ($user as $u) {
            $u->notify(new archieveinvoice($invoices));
        }
        $invoices->delete();
        return back();


    }
    public function archieveinvoice(Request $request)
    {
        $invoices=invoices::onlyTrashed()->get();
        return view('invoices.archieve',compact('invoices'));
        session()->flash('archive_invoice');
        return redirect('invoices');


    }
    public function return(Request $request)
    {
       $id=$request->invoice_id;
       $invoices=invoices::withTrashed()->where('id',$id)->restore();
       session()->flash('restore_invoice');
       return redirect('/invoices');

    }
    public function mark(Request $request)
    {
       $notifications=auth()->user()->unreadNotifications;
       if($notifications){
        $notifications->markAsRead();
        return back();

       }

    }
    public function print(Request $request,$id)
    {
       $id=$request->id;
       $invoices=invoices::where('id',$id)->first();
       $user = User::get();
       $invoices = invoices::latest()->first();
       foreach ($user as $u) {
           $u->notify(new invoice($invoices,'تم طباعه فاتوره بواسطه '));
       }
    //    $user->notify(new printinvoice($invoices));
    //    foreach ($user as $u) {
    //        $u->notify(new printinvoice($invoices));
    //    }
       return view ('invoices.printinvoice',compact('invoices'));


    }
    public function destroyarchieve(Request $request)
    {
       $id=$request->invoice_id;
       $invoices=invoices::withTrashed()->where('id',$id)->first();
       $invoices->ForceDelete();
       session()->flash('delete_invoice');
       return redirect('/archieveinvoices');

    }
    public function particiallypaidinvoice()
    {
        $invoices=invoices::where('Value_Status',3)->get();
        return view('invoices.particiallyinvoices',compact('invoices'));


    }
}
