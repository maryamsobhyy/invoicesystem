<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Http\Controllers\Controller;
class Rolecontroller extends Controller
{

function __construct()
{

$this->middleware('permission:عرض صلاحية', ['only' => ['index']]);
$this->middleware('permission:اضافة صلاحية', ['only' => ['create','store']]);
$this->middleware('permission:تعديل صلاحية', ['only' => ['edit','update']]);
$this->middleware('permission:حذف صلاحية', ['only' => ['destroy']]);

}
    public function index(Request $request)
{
$roles = Role::orderBy('id','DESC')->paginate(5);
return view('roles.index',compact('roles'));
// ->with('i', ($request->input('page', 1) - 1) * 5);
}
public function show(Request $request,$id)
{
    $role = Role::find($id);

    $rolePermissions = Permission::join("role_has_permissions","role_has_permissions.permission_id","=","permissions.id")
->where("role_has_permissions.role_id",$id)
->get();
return view('roles.show',compact('role','rolePermissions'));

}
public function edit($id)
{
$role = Role::find($id);
$permission = Permission::get();
$rolePermissions = DB::table("role_has_permissions")->where("role_has_permissions.role_id",$id)
->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')
->all();

return view('roles.edit',compact('role','permission','rolePermissions'));
}
public function update(Request $request ,$id)
{
    $this->validate($request, [
        'name' => 'required',
        'permission' => 'required',
        ]);
    $role=role::find($id);
    $role->name=$request->input('name');
    $role->save();
    $role->syncPermissions($request->input('permission'));
    return redirect()->route('roles')->with('update','Role updated successfully');


}
public function create()
{
    $permission = Permission::get();
    return view('roles.create',compact('permission'));

}
public function store(Request $request)
{
    $request->validate([
        'name' => 'required|unique:roles,name',
        'permission' => 'required',

    ]);
    $role = Role::create(['name' => $request->input('name')]);
    $role->givePermissionTo($request->input('permission'));
    return redirect()->route('roles')->with('Add', 'Role Added sucessfully ');
}
public function destroy($id)
{
DB::table("roles")->where('id',$id)->delete();
return redirect()->route('roles')
->with('delete','Role deleted successfully');
}

}
