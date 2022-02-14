<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\FullzController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SettingsController;
use App\Http\Controllers\AddFundsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::GET('/', function () {
    return redirect(route('login'));
});

Auth::routes();

Route::middleware(['auth'])->group(function(){
    Route::GET('/home', [HomeController::class, 'index'])->name('home');
    Route::GET('/transactions', [HomeController::class, 'transactions'])->name('transactions');
    Route::GET('/sold-lines', [HomeController::class, 'sold_lines'])->name('sold.lines');

    //Settings
    Route::GET('/settings', [SettingsController::class, 'settings'])->name('settings');


    //Fullz SSN
    Route::GET('/fullz-ssn', [FullzController::class, 'fullz_ssn'])->name('fullz.ssn');
    Route::GET('/fullz-ssn-dl', [FullzController::class, 'fullz_ssn_dl'])->name('fullz.ssn.dl');
    Route::POST('/fullzn/store', [FullzController::class, 'store'])->name('fullz.store');
    Route::GET('/fullz/edit/{id?}', [FullzController::class, 'edit'])->name('fullz.edit');
    Route::POST('/fullzn/update', [FullzController::class, 'updated'])->name('fullz.update');
    Route::GET('/fullzn/destroy/{id?}', [FullzController::class, 'destroy'])->name('fullz.destroy');
    Route::POST('/upload/csv', [FullzController::class, 'upload_csv'])->name('upload.csv');
    Route::GET('/edit/list/{id?}/{type?}', [FullzController::class, 'edit_list'])->name('edit.list');
    Route::POST('/update/ssn/table', [FullzController::class, 'update_ssn_table'])->name('update.ssn.table');
    Route::GET('/update/price', [FullzController::class, 'update_price'])->name('update.price');

    /// Users
    Route::GET('/user/dashboard', [UserController::class, 'user_dashboard'])->name('user.dashboard');
    Route::GET('/fullz/ssn', [UserController::class, 'fullz_ssn'])->name('user.fullz.ssn');
    Route::GET('/fullz/ssn-dl', [UserController::class, 'ullz_ssn_dl'])->name('user.fullz.ssn.dl');
    Route::GET('/profile', [UserController::class, 'profile'])->name('user.profile');
    Route::GET('/profile/edit/{id?}', [UserController::class, 'edit'])->name('user.edit');
    Route::POST('/profile/update', [UserController::class, 'update'])->name('user.update');
    Route::GET('/add_to_cart', [UserController::class, 'add_to_cart'])->name('add.to.cart');
    Route::GET('/buy_now', [UserController::class, 'buy_now'])->name('buy.now');
    Route::GET('cart_empty', [UserController::class, 'cart_empty'])->name('cart.empty');
    Route::GET('cart/{id?}', [UserController::class, 'cart'])->name('cart');
    Route::GET('cart/item/remove{id?}', [UserController::class, 'cart_item_remove'])->name('cart.item.remove');

    Route::GET('/user/order/details', [UserController::class, 'order_details'])->name('order.details');

    // Add Funds
    Route::GET('/add-funds', [AddFundsController::class, 'add_funds'])->name('add.funds');
    Route::POST('/funds/store', [AddFundsController::class, 'funds_store'])->name('funds.store');
    Route::GET('/payment/success', [AddFundsController::class, 'payment_success'])->name('payment.success');
    Route::GET('/user/funds/history', [AddFundsController::class, 'funds_history'])->name('funds.history');

});

