<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Auth;
use Spatie\Activitylog\Models\Activity;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(Auth::user()->user_type != 1 AND Auth::user()->user_type != 3){
            return redirect(route('user.fullz.ssn'))->with('error', 'You are not authorize');
        }

        $total_user = User::where('user_type', 2)->count();
        $total_sold_lines = Order::count();
        $this_month_spent = Order::whereMonth('created_at', Carbon::now('m'))->sum('amount');
        $total_income =  Order::sum('amount');
        $transactions = Transaction::latest()->paginate(10);
        $activity_logs = Activity::with('causer')->latest()->take(20)->get();
        return view('home', compact('activity_logs','transactions','total_user', 'total_sold_lines','this_month_spent','total_income'));
    }
    public function transactions(){
        if(Auth::user()->user_type != 1 AND Auth::user()->user_type != 3){
            return back()->with('error', 'You are not authorize');
        }
        $transactions = Transaction::latest()->paginate(10);
        return view('transactions', compact('transactions'));
    }
    public function sold_lines(){
        if(Auth::user()->user_type != 1 AND Auth::user()->user_type != 3){
            return back()->with('error', 'You are not authorize');
        }
        $orders = Order::with('fullz_table','user')->latest()->where('type','fullz')->paginate(10);
        return view('sold-lines', compact('orders'));
    }
    public function business_sold_lines(){
        if(Auth::user()->user_type != 1 AND Auth::user()->user_type != 3){
            return back()->with('error', 'You are not authorize');
        }
        $orders = Order::with('business_pros','user')->latest()->where('type','business')->paginate(10);
        return view('business-sold-lines', compact('orders'));
    }

}
