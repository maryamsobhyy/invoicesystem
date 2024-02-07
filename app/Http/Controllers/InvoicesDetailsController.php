<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Http\Request;
use App\Models\invoices_details;
use League\Flysystem\Filesystem;
use League\Flysystem\getAdapter;
use File;

use App\Http\Controllers\Controller;
use App\Models\invoices_attachments;
use App\Models\notifications;
use Illuminate\Support\Facades\Storage;
use Spatie\Dropbox\Client as DropboxClient;
use Spatie\FlysystemDropbox\DropboxAdapter;
use Illuminate\Filesystem\FilesystemAdapter;
use Illuminate\Notifications\Notifiable;

class InvoicesDetailsController extends Controller
{
    /**
     *
     * Display a listing of the resource.
     */
    use Notifiable;
    public function index($id)
    {
        $invoices=invoices::find($id);
        $id=$invoices->id;
        $details = invoices_details::where('id_Invoice', $id)->get();
        $attachments=invoices_attachments::where('invoice_id', $id)->get();
        $notifications = notifications::where('data->id', '=', $id)->get();
        foreach ($notifications as $notification) {
            if ($notification) {
                // تحديث حالة القراءة يدويًا
                $notification->update(['read_at' => now()]);
            }
        }


        return view('invoices.invoicesdetails',compact('invoices','details','attachments'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function file($file_name)
    {

        $path= asset('Attachments/'.$file_name);


        return response()->file($path);


        //
    }
    public function viewfile($file_name,$invoice_number)
    {

    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(invoices_details $invoices_details)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(invoices_details $invoices_details)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, invoices_details $invoices_details)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(request $request)
    {
        $number=$request->input('number');
        $file=$request->input('file');
        $id=$request->input('id');
        $attachments=invoices_attachments::find($id);
        $image=$attachments->file_name;
        $imageName = basename($image);
        $folderPath = public_path('Attachments/'.$number);
        if (File::exists($folderPath)) {
            File::deleteDirectory($folderPath);
            // القيام بإجراءات إضافية بعد حذف المجلد
        } else {
            dd('Folder does not exist.');
        }
        $attachments->delete();
        session()->flash('delete','تم حذف المرفق بنجاح من الفاتوره ');
        return back();
    }
}
