<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\products;
use App\Models\sections;
use Illuminate\Http\Request;
use App\Notifications\invoice;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    function __construct()
    {

    $this->middleware('permission:المنتجات', ['only' => ['index']]);
    $this->middleware('permission:اضافة منتج', ['only' => ['store']]);
    $this->middleware('permission:تعديل منتج', ['only' => ['update']]);
    $this->middleware('permission:حذف منتج', ['only' => ['destroy']]);

    }
    public function index()
    {
        $sections=sections::all();
        $products=products::all();
        return view('products.product',compact('sections','products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'product_name' => 'required|unique:products|max:255',
            'description' => 'required',
            'section_id' => 'required',

        ]);

        products::create([

            'product_name'=> $request->product_name,
            'description'=> $request->description,
            'section_id'=>$request->section_id,
        ]);
        $user = User::get();
        $invoices = sections::latest()->first();
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم اضافه منتج بواسطه '));
        }
        session()->flash('Add','This Product is saved');
        return redirect(route('products'));
        }



    /**
     * Display the specified resource.
     */
    public function show(products $products)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(products $products)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, products $products)
    {
        //
        $id=$request->id;
        $request->validate([
            'product_name' => 'required|max:255|unique:products,product_name,'.$id,
            'description' => 'required',
        ]);
        $products=products::find($id);
        $products->update([
            'product_name'=>$request->product_name,
            'description'=>$request->description,
            'section_id'=>$request->section_id,

        ]);
        $user = User::get();
        $invoices = products::find($id);
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم تعديل منتج بواسطه '));
        }
        session()->flash('Add','This product is Updated sucessfully');
        return redirect(route('products'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        $products=products::find($id);
        $user = User::get();
        $invoices = products::find($id);
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم حذف منتج بواسطه '));
        }
        $products->delete();
        session()->flash('Add','This product is Deleted sucessfully');
        return redirect(route('products'));
    }
}
