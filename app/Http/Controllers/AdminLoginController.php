<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Auth;

class AdminLoginController extends Controller
{
    public function admin_login(){
        return view('admin-login');
    }
    public function admin_login_store(Request $request){

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);
        $user = User::where('email', $request->email)->first('user_type');

       if($user->user_type == 1 OR $user->user_type == 3){

           $credentials = $request->only('email', 'password');

           if (Auth::attempt($credentials)) {

               return redirect()->intended('home')

                   ->withSuccess('You have Successfully logged in');

           }
           return redirect("admin-login")->withSuccess('Oops! You have entered invalid credentials');
       }
        return redirect("admin-login")->withSuccess('Oops! You have entered invalid credentials');

    }
}
