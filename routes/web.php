<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\FullzController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SettingsController;
use App\Http\Controllers\AddFundsController;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\ManagerController;
use App\Http\Controllers\ChangePasswordController;

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

Route::GET('/admin-login', [AdminLoginController::class, 'admin_login'])->name('admin.login');
Route::POST('/admin-login-store', [AdminLoginController::class, 'admin_login_store'])->name('admin.login.store');
Route::GET('/reload-captcha', [LoginController::class, 'reload_captcha'])->name('reload.captcha');


Route::middleware(['auth'])->group(function(){
    Route::GET('/home', [HomeController::class, 'index'])->name('home');
    Route::GET('/transactions', [HomeController::class, 'transactions'])->name('transactions');
    Route::GET('/sold-lines', [HomeController::class, 'sold_lines'])->name('sold.lines');
    Route::GET('/business/sold/lines', [HomeController::class, 'business_sold_lines'])->name('business.sold.lines');

    //Settings
    Route::GET('/settings', [SettingsController::class, 'settings'])->name('settings');
    Route::POST('/setting/store', [SettingsController::class, 'setting_store'])->name('setting.store');


    //Fullz SSN
    Route::GET('/fullz-ssn', [FullzController::class, 'fullz_ssn'])->name('fullz.ssn');
    Route::GET('/fullz-ssn-dl', [FullzController::class, 'fullz_ssn_dl'])->name('fullz.ssn.dl');
    Route::POST('/fullzn/store', [FullzController::class, 'store'])->name('fullz.store');
    Route::GET('/fullz/edit/{id?}', [FullzController::class, 'edit'])->name('fullz.edit');
    Route::POST('/fullzn/update', [FullzController::class, 'updated'])->name('fullz.update');
    Route::GET('/fullzn/destroy', [FullzController::class, 'destroy'])->name('fullz.destroy');
    Route::POST('/upload/csv', [FullzController::class, 'upload_csv'])->name('upload.csv');
    Route::GET('/edit/list/{id?}/{type?}', [FullzController::class, 'edit_list'])->name('edit.list');
    Route::GET('/edit/business/{id?}', [FullzController::class, 'business_pros_edit'])->name('business.pros.edit');
    Route::POST('/update/ssn/table', [FullzController::class, 'update_ssn_table'])->name('update.ssn.table');
    Route::POST('/update/business/pros', [FullzController::class, 'update_business'])->name('update.business.pro');
    Route::GET('/update/price', [FullzController::class, 'update_price'])->name('update.price');
    Route::GET('/update/price/business', [FullzController::class, 'update_price_business'])->name('update.price.business');
    Route::GET('/business/pros', [FullzController::class, 'business_pros'])->name('business.pros');
    Route::POST('/business/pros/store', [FullzController::class, 'business_pros_store'])->name('business.pros.store');
    Route::GET('/business/pros/delete/{id?}', [FullzController::class, 'business_pros_delete'])->name('business.pros.delete');

    /// Users
//    Route::GET('/user/dashboard', [UserController::class, 'user_dashboard'])->name('user.dashboard');
    Route::GET('/fullz/ssn', [UserController::class, 'fullz_ssn'])->name('user.fullz.ssn');
    Route::GET('/fullz/ssn-dl', [UserController::class, 'ullz_ssn_dl'])->name('user.fullz.ssn.dl');
    Route::GET('/profile', [UserController::class, 'profile'])->name('user.profile');
    Route::GET('/profile/edit/{id?}', [UserController::class, 'edit'])->name('user.edit');
    Route::GET('/user/delete/{id?}', [UserController::class, 'delete'])->name('user.delete');
    Route::POST('/profile/update', [UserController::class, 'update'])->name('user.update');
    Route::GET('/add_to_cart', [UserController::class, 'add_to_cart'])->name('add.to.cart');
    Route::GET('/buy_now', [UserController::class, 'buy_now'])->name('buy.now');
    Route::GET('cart_empty', [UserController::class, 'cart_empty'])->name('cart.empty');
    Route::GET('cart/{id?}', [UserController::class, 'cart'])->name('cart');
    Route::GET('cart/item/remove{id?}', [UserController::class, 'cart_item_remove'])->name('cart.item.remove');
    Route::GET('business-pros', [UserController::class, 'user_business_pros'])->name('user.business.pros');

    Route::GET('/user/order/details', [UserController::class, 'order_details'])->name('order.details');
    Route::GET('/user/order/business-pros', [UserController::class, 'order_business_pros'])->name('order.business.pros');
    Route::GET('/download/business/pros/{id?}', [UserController::class, 'download_business_pros'])->name('download.business.pros');
    Route::GET('/users', [UserController::class, 'users'])->name('users');

    // Add Funds
    Route::GET('/add-funds', [AddFundsController::class, 'add_funds'])->name('add.funds');
    Route::POST('/funds/store', [AddFundsController::class, 'funds_store'])->name('funds.store');
    Route::GET('/payment/success', [AddFundsController::class, 'payment_success'])->name('payment.success');
    Route::GET('/user/funds/history', [AddFundsController::class, 'funds_history'])->name('funds.history');
    Route::GET('/wallet/{id?}', [AddFundsController::class, 'wallet'])->name('wallet');
    Route::POST('wallet_update/{id}', [AddFundsController::class, 'wallet_update'])->name('wallet.update');


    //Manager account level
    Route::prefix('manager')->group(function(){
        Route::GET('/list', [ManagerController::class, 'index'])->name('manager.index');
        Route::POST('/store', [ManagerController::class, 'store'])->name('manager.store');
        Route::GET('/edit/{id?}', [ManagerController::class, 'edit'])->name('manager.edit');
        Route::POST('/update/{id?}', [ManagerController::class, 'update'])->name('manager.update');
        Route::GET('/delete/{id?}', [ManagerController::class, 'delete'])->name('manager.delete');
    });

    //

    Route::post('change-password', [ChangePasswordController::class, 'store'])->name('change.password');

});

