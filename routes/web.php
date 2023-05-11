<?php
//[]  {}   ()
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () { return view('index'); })->name('index');
Route::get('/about', function () { return view('about'); })->name('about');
Route::get('/contact', function () { return view('contact'); })->name('contact');
Route::post('/contact-send', [ContactController::class, 'contact_send'])->name('contact_send');
Route::get('/be-a-donor', function () { return view('be_a_donor'); })->name('be_a_donor');
Route::get('/change-details', function () { return view('change_details'); })->name('change-details');
Route::get('/faq', function () { return view('faq'); })->name('faq');;
Route::get('/donor-lists', function () { return view('donor_lists'); })->name('donor-lists');