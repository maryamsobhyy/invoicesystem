<?php

namespace App\Http\Controllers;
use App\Notifications\invoice;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;

class Usercontroller extends Controller
{
    public function index()
    {
    $data = User::orderBy('id','DESC')->paginate(5);
    return view('users.show_users',compact('data'));
    // ->with('i', ($request->input('page', 1) - 1) * 5);
    }
    public function create()
    {

    $roles = Role::pluck('name', 'name'); // Assuming 'id' is the primary key column
    return view('users.add_users', compact('roles'));
    }
    public function edit($id)
    {
        $roles=role::pluck('name');
        $userRole=role::pluck('name', 'name');
        $user=user::find($id);
    return view('users.edit',compact('user','userRole','roles'));
    }
    public function update(request $request,$id)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'same:confirm-password',
        ]);
        $input = $request->all();
if(!empty($input['password'])){
$input['password'] = Hash::make($input['password']);
}else{
    return redirect()->route('users')
->with('success',' Enter a password');

}
$user = User::find($id);
$user->update($input);
DB::table('model_has_roles')->where('model_id',$id)->delete();
$user->assignRole($request->input('roles'));
$user = User::get();
        $invoices = User::find($id);
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم تعديل مستخدم  بواسطه '));
        }
return redirect()->route('users')
->with('success','User updated sucessfully');
 }
    public function destroy($id)
    {
        DB::table("users")->where('id',$id)->delete();
        return redirect()->route('users')
        ->with('delete','User deleted successfully');
    }
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|same:confirm-password',
            'roles_name' => 'required'
        ]);
        $input=$request->all();
        $input['password'] = Hash::make($request['password']);
        $user=user::create($input);
        $user->assignRole($request->input('roles_name'));
        $user = User::get();
        $invoices = User::latest()->first();
        foreach ($user as $u) {
            $u->notify(new invoice($invoices,'تم اضافه مستخدم جديد بواسطه '));
        }
        return back()->with('success','User Added sucessfully');



    }
}
