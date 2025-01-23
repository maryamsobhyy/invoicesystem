<?php



use App\Models\User;
use App\Models\invoices;
use App\Models\products;
use App\Notifications\invoice;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homecontroller;
use App\Http\Controllers\Rolecontroller;
use App\Http\Controllers\Usercontroller;
use App\Http\Controllers\AdminController;
use App\Http\Middleware\CustomMiddleware;
use App\Http\Controllers\messagecontroller;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\InvoicesController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\SectionsController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\invoices_reportcontroller;
use App\Http\Controllers\InvoicesDetailsController;
use App\Http\Controllers\customers_reportcontroller;
use App\Http\Controllers\InvoicesAttachmentsController;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// routes/web.php
Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){ //..
	/** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/
    Route::get('/', function () {
        return view('auth.welcome');
    });
    Route::get('/loginpage',[AdminController::class,'show'])->name('loginpage');
    Route::get('/markasread',[InvoicesController::class,'mark'])->name('mark');
    Route::get('/sections',[SectionsController::class,'index'])->name('sections');
    Route::delete('/deletesections',[SectionsController::class,'destroy'])->name('sections.destroy');
    Route::get('/dashboard', [homecontroller::class,'index']
        // $user=Auth::user()->Status;
        // if($user=='مفعل'){
        // return view('dashboard');
        // }
    )->middleware(['auth', 'verified'])->name('dashboard');


Route::post('/attachment',[InvoicesAttachmentsController::class,'index'])->name('attachments.store');

Route::get('/products',[ProductsController::class,'index'])->name('products');
Route::post('/products.update',[ProductsController::class,'update'])->name('products.update');
Route::post('/products.store',[ProductsController::class,'store'])->name('products.store');
Route::delete('/products.destroy',[ProductsController::class,'destroy'])->name('products.destroy');

Route::post('/sections.update',[SectionsController::class,'update'])->name('sections.update');
Route::post('/sections.store',[SectionsController::class,'store'])->name('sections.store');
Route::get('/invoices',[InvoicesController::class,'index'])->name('allinvoices');
Route::get('/invoices.add',[InvoicesController::class,'create'])->name('invoice.add');
Route::post('/invoices.store',[InvoicesController::class,'store'])->name('invoice.store');
Route::get('/invoices.edit2/{id}',[InvoicesController::class,'edit2'])->name('invoice.edit2');
Route::get('/invoices.edit3/{id}',[InvoicesController::class,'edit3'])->name('invoice.edit3');
Route::get('/invoices.edit4/{id}',[InvoicesController::class,'edit4'])->name('invoice.edit4');
Route::get('/invoices.edit/{id}',[InvoicesController::class,'edit'])->name('invoice.edit');
// Route::get('/invoices.edit/{id}',[InvoicesController::class,'updatepartilly'])->name('invoice.partedit');
Route::post('/invoices.update2/{id}',[InvoicesController::class,'update2'])->name('invoice.update2');
Route::post('/invoices.update3/{id}',[InvoicesController::class,'update3'])->name('invoice.update3');
Route::post('/invoices.update4/{id}',[InvoicesController::class,'update4'])->name('invoice.update4');
Route::post('/invoices.update/{id}',[InvoicesController::class,'update'])->name('invoice.update');
Route::delete('/invoices.delete',[InvoicesController::class,'destroy'])->name('invoice.delete');
Route::get('/paymentstatus.show/{id}',[InvoicesController::class,'show'])->name('invoice.show');
Route::post('/paymentstatus.update/{id}',[InvoicesController::class,'change'])->name('payment.change');
Route::get('/paidinvoice',[InvoicesController::class,'paidinvoice'])->name('paidinvoice');
Route::get('/unpaidinvoice',[InvoicesController::class,'unpaidinvoice'])->name('unpaidinvoice');
Route::post('/archieve',[InvoicesController::class,'archieve'])->name('archieve');
Route::post('/return',[InvoicesController::class,'return'])->name('return');
Route::get('/print/{id}',[InvoicesController::class,'print'])->name('invoice.print');
Route::get('/archieveinvoices',[InvoicesController::class,'archieveinvoice'])->name('archieveinvoice');
Route::post('/deletearchive',[InvoicesController::class,'destroyarchieve'])->name('destroyarchieve');
Route::get('/particiallypaidinvoice',[InvoicesController::class,'particiallypaidinvoice'])->name('particiallypaidinvoice');
Route::get('/export_invoices', [InvoicesController::class,'export'])->name('export');
Route::get('/createuser', [Usercontroller::class,'create'])->name('user.create');
Route::get('/edituser/{id}', [Usercontroller::class,'edit'])->name('user.edit');
Route::post('/update/{id}', [Usercontroller::class,'update'])->name('users.update');
Route::post('/storeuser', [Usercontroller::class,'store'])->name('user.store');
Route::delete('/deleteuser/{id}', [Usercontroller::class,'destroy'])->name('user.destroy');
Route::delete('/deleteattachment', [InvoicesDetailsController::class,'destroy'])->name('deleteattachment');
Route::get('/createRole', [Rolecontroller::class,'create'])->name('roles.create');
Route::get('/sendmessage', [messagecontroller::class,'index'])->name('sendmessage');
Route::post('/storeRole', [Rolecontroller::class,'store'])->name('roles.store');
Route::get('/roles.show/{id}', [Rolecontroller::class,'show'])->name('roles.show');
Route::get('/roles.edit/{id}', [Rolecontroller::class,'edit'])->name('roles.edit');
//Suppliers
Route::get('suppliers', [SupplierController::class,'index'])->name('suppliers.index');
Route::get('suppliers/create', [SupplierController::class,'create'])->name('suppliers.create');
Route::post('suppliers/store', [SupplierController::class,'store'])->name('suppliers.store');
Route::get('suppliers/edit/{id}', [SupplierController::class, 'edit'])->name('suppliers.edit');
Route::post('suppliers/update/{id}', [SupplierController::class, 'update'])->name('suppliers.update');
Route::delete('suppliers/delete/{id}', [SupplierController::class, 'destroy'])->name('suppliers.destroy');
//reports
Route::get('/invoices_report', [invoices_reportcontroller::class,'index'])->name('invoices_report');
Route::post('/search_report', [invoices_reportcontroller::class,'show'])->name('invoices_search');
Route::get('/customers_report', [customers_reportcontroller::class,'index'])->name('customers_report');
Route::post('/search_customerreport', [customers_reportcontroller::class,'show'])->name('customers_search');
//roles
Route::post('/roles.update/{id}', [Rolecontroller::class,'update'])->name('roles.update');
Route::delete('/roles.destroy/{id}', [Rolecontroller::class,'destroy'])->name('roles.destroy');
Route::post('/messagestore', [messagecontroller::class,'store'])->name('messagestore');
Route::get('/invoicesdetails/{id}',[InvoicesDetailsController::class,'index'])->name('invoice.details');
Route::get('/viewfile/{invoice_number}/{file_name}',[InvoicesDetailsController::class,'viewfile'])->name('viewfile');
Route::get('/filename/{id}',[InvoicesDetailsController::class,'file'])->name('invoice.file');
Route::get('/section/{id}', [InvoicesController::class,'getproducts']);
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
Route::group(['middleware' => ['auth']], function() {

    Route::get('/roles',[Rolecontroller::class,'index'])->name('roles');

    Route::get('/allusers',[Usercontroller::class,'index'])->name('users');

    });

});

/** OTHER PAGES THAT SHOULD NOT BE LOCALIZED **/

Route::get('/test', function () {
    $invoices = invoices::latest()->first();
$user = User::all();
    foreach ($user as $u) {
        $u->notify(new invoice($invoices));
        return'done';
    }
    // event(new \App\Events\TestNotification('This is testing data'));
    $user= User::first();
    $data=['user_id'=>$user->id,'user_name'=>$user->name,
    'invoice_number' => 1,
    'invoice_Date' => '2024',
    ];
    return event (new \App\Events\NewNotification($data));
    return'done';
});

require __DIR__.'/auth.php';
