<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    protected function redirectTo()
    {
        if (auth()->user()->user_type == 1 OR auth()->user()->user_type == 3) {
            return '/home';
        }
        return '/fullz/ssn';
    }
    protected function authenticated(Request $request, $user)
    {
        if($user->user_type == 1 OR $user->user_type == 3 ){

            $this->guard()->logout();

            $request->session()->invalidate();

            $request->session()->regenerateToken();

            if ($response = $this->loggedOut($request)) {
                return $response;
            }

            return $request->wantsJson()
                ? new JsonResponse([], 204)
                : redirect('/');
        }
        return redirect('/fullz/ssn')->withSuccess('You have Successfully logged in');
    }
    public function reload_captcha(){
        return response()->json(['captcha'=> captcha_img()]);
    }
    protected function validateLogin(Request $request)
    {
        $request->validate([
            $this->username() => 'required|string',
            'password' => 'required|string',
            'captcha' => 'required|captcha'
        ]);
    }
}
