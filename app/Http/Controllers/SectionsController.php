<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\sections;
use Illuminate\Http\Request;
use App\Notifications\invoice;

class SectionsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $sections=sections::get();
        return view('sections.section',compact('sections'));
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
            'section_name' => 'required|unique:sections|max:255',
            'description' => 'required',
        ]);

        sections::create([
                'section_name'=> $request->section_name,
                'description'=> $request->description,
                'created_by'=> auth()->user()->name,
        ]);
        $user = User::get();
        $invoices = sections::latest()->first();
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم اضافه قسم جديد بواسطه '));
        }
        session()->flash('Add','This section is saved');
        return redirect(route('sections'));
        }




    /**
     * Display the specified resource.
     */
    public function show(sections $sections)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(sections $sections)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, sections $sections)
    {
        //
        $id=$request->id;
        $request->validate([
            'section_name' => 'required|max:255|unique:sections,section_name,'.$id,
            'description' => 'required',
        ]);
        $sections=sections::find($id);
        $sections->update([
            'section_name'=>$request->section_name,
            'description'=>$request->description,

        ]);
        $user = User::get();
        $invoices = sections::find($id);
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم تعديل قسم بواسطه '));
        }
        session()->flash('Add','This section is Updated sucessfully');
        return redirect(route('sections'));


    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        //
        $id=$request->id;
        $sections=sections::find($id);
        $user = User::get();
        $invoices = sections::find($id);
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم حذف قسم بواسطه '));
        }
        $sections->delete();
        session()->flash('Add','This section is Deleted sucessfully');
        return redirect(route('sections'));


    }
}
