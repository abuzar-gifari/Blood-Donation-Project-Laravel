<?php
//[]  {}   ()
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DonorController;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\Admin\AdminFaqController;
use App\Http\Controllers\Admin\AdminHomeController;
use App\Http\Controllers\Admin\AdminLoginController;

Route::get('/', function () { return view('index'); })->name('index');
Route::get('/about', function () { return view('about'); })->name('about');
Route::get('/contact', function () { return view('contact'); })->name('contact');
Route::post('/contact-send', [ContactController::class, 'contact_send'])->name('contact_send');
Route::post('/find-blood-group', [DonorController::class, 'find_blood_group'])->name('find-blood-group');
Route::post('/be-donor', [DonorController::class, 'be_donor'])->name('be_donor');
Route::get('/be-a-donor', function () { return view('be_a_donor'); })->name('be_a_donor');
Route::get('/change-details', function () { return view('change_details'); })->name('change-details');
Route::get('/faq', function () { return view('faq'); })->name('faq');;
Route::get('/donor-lists', function () { return view('donor_lists'); })->name('donor-lists');







/* A-D-M-I-N    A-U-T-H-E-N-T-I-C-A-T-I-O-N */

Route::get('admin/home',[AdminHomeController::class,'index'])->name('admin_home')->middleware('admin:admin');
Route::get('admin/login',[AdminLoginController::class,'index'])->name('admin_login');
Route::post('/login/submit',[AdminLoginController::class,'login_submit'])->name('admin_login_submit');
Route::get('admin/logout',[AdminLoginController::class,'logout'])->name('admin_logout');

/* A-D-M-I-N   R-O-U-T-E */

Route::group(['middleware'=>['admin:admin']],function(){


    /* P R O F I L E */
    
    Route::get('/admin/edit-profile', [AdminProfileController::class, 'index'])->name('admin_profile');
    Route::post('/admin/edit-profile-submit', [AdminProfileController::class, 'profile_submit'])->name('admin_profile_submit');


    /* F A Q  */

    Route::get('/admin/faq/view', [AdminFaqController::class, 'index'])->name('admin_faq_view');
    Route::get('/admin/faq/add', [AdminFaqController::class, 'add'])->name('admin_faq_add');
    Route::post('/admin/faq/store', [AdminFaqController::class, 'store'])->name('admin_faq_store');
    Route::get('/admin/faq/edit/{id}', [AdminFaqController::class, 'edit'])->name('admin_faq_edit');
    Route::post('/admin/faq/update/{id}', [AdminFaqController::class, 'update'])->name('admin_faq_update');
    Route::get('/admin/faq/delete/{id}', [AdminFaqController::class, 'delete'])->name('admin_faq_delete');


});

/**---------------------------------  E-N-D   A-D-M-I-N   R-O-U-T-E  ---------------------------------**/
