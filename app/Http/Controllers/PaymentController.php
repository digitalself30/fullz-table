<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Victorybiz\LaravelCryptoPaymentGateway\LaravelCryptoPaymentGateway;

class PaymentController extends Controller
{
    /**
     * Cryptobox callback.
     */
    public function callback(Request $request)
    {
        return LaravelCryptoPaymentGateway::callback();
    }
}
