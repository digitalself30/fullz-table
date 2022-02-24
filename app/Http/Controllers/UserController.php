<?php

namespace App\Http\Controllers;

use App\Models\Fullz;
use App\Models\Fund;
use App\Models\Order;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;
use Auth;
use Cart;
use Hash;

class UserController extends Controller
{
    public function user_dashboard(){
        $wallet = Transaction::where('user_id', Auth::id())->latest()->first();
        $purchased_item = Order::where('user_id', Auth::id())->count();
        $this_month_spent = Order::where('user_id', Auth::id())->whereMonth('created_at', Carbon::now('m'))->sum('amount');
        $total_spent = Order::where('user_id', Auth::id())->sum('amount');
        $transactions = Transaction::latest()->where('user_id', Auth::id())->paginate(10);
        $activity_logs = Activity::with('causer')->where('causer_id', Auth::id())->latest()->take(20)->get();
        return view('user-dashboard', compact('wallet', 'purchased_item','this_month_spent','total_spent', 'activity_logs', 'transactions'));
    }
    public function fullz_ssn(Request $request){
       // dd($request->all());
        if ($request->ajax()) {
            $data = Fullz::select('id','first_name','dob','state','city','price')
                ->where('status', '1')
                ->where('type', 1)
                ->whereNotIn('id', function($query)  {
                    $query->select('fullz_id')->from((new Order())->getTable())
                        ->where('user_id', Auth::id());
                });

            if($request->price){
                if($request->price == 'Lowest'){
                    $price_order = 'ASC';
                }
                else{
                    $price_order = 'DESC';
                }
                $data->orderBy('price', $price_order);
            }
            if($request->dob){
                if($request->dob == 'Elder'){
                    $dob_order = 'ASC';
                }
                else{
                    $dob_order = 'DESC';
                }
                $data->orderBy('dob', $dob_order);
            }
            if($request->state){
                $data->where('state', $request->state);
            }
            $data->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('dob', function($data) {
                    return Carbon::parse($data->dob)->format('m-d-Y') ;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('dl', function($data) {
                    return "NO";
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })
                ->editColumn('action', function($data) {
                    $btn = '<a class="modal-effect btn btn-primary mr-1" onclick="add_to_cart('.$data->id.',\'Buy\')">Buy Now</a>';
                    $btn .= '<a class="btn btn-primary add-to-cart" onclick="add_to_cart('.$data->id.', \'Cart\')" >Add to cart</a>';
                    return $btn;
                })
                ->rawColumns(['first_name','city','state','dob','price','action'])
                ->make(true);
        }

        return view('user-fullz-ssn');
    }
    public function ullz_ssn_dl(Request $request){
        if ($request->ajax()) {
            $data = Fullz::select('id','first_name','dob','state','city','price')
                ->where('status', '1')
                ->where('type', 2)
                ->whereNotIn('id', function($query)  {
                    $query->select('fullz_id')->from((new Order())->getTable())
                        ->where('user_id', Auth::id());
                });

            if($request->price){
                if($request->price == 'Lowest'){
                    $price_order = 'ASC';
                }
                else{
                    $price_order = 'DESC';
                }
                $data->orderBy('price', $price_order);
            }
            if($request->dob){
                if($request->dob == 'Elder'){
                    $dob_order = 'ASC';
                }
                else{
                    $dob_order = 'DESC';
                }
                $data->orderBy('dob', $dob_order);
            }
            if($request->state){
                $data->where('state', $request->state);
            }
            $data->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('dob', function($data) {
                    return Carbon::parse($data->dob)->format('m-d-Y') ;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('dl', function($data) {
                    return "YES";
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })
                ->editColumn('action', function($data) {
                    $btn = '<a class="modal-effect btn btn-primary mr-1" onclick="add_to_cart('.$data->id.',\'Buy\')">Buy Now</a>';
                    $btn .= '<a class="btn btn-primary add-to-cart" onclick="add_to_cart('.$data->id.', \'Cart\')" >Add to cart</a>';
                    return $btn;                })
                ->rawColumns(['first_name','city','state','dob','price','action'])
                ->make(true);
        }
        $wallet = Transaction::where('user_id', Auth::id())->latest()->first();

        return view('user-fullz-ssn-dl', compact('wallet'));
    }

    public function order_details(){
        $orders = Order::with('fullz_table')->where('user_id', Auth::id())->latest()->paginate(10);
        return view('order-details', compact('orders'));
    }

    public function profile(){
        return view('user-profile');
    }
    public function edit($id){
        $user = User::find($id);
        return view('user-edit', compact('user'));
    }
    public function add_to_cart(Request $request){

        if($request->type == "ssn"){
           $type = 1;
        }
        else{
            $type = 2;
        }
        foreach (Cart::content() AS $cart_time){

            if($cart_time->id == $request->id){
                return response()->json('');
            }
        }
        $data = Fullz::where('id', $request->id)->where('type',$type)->first();

        $option =[];
        Cart::add($data->id, $type, 1, $data->price, $option)->associate('App\Models\Fullz');
        $item_count = Cart::count();
        return response()->json($item_count);
    }
    public function buy_now(){

        foreach (Cart::content() AS $item){
            $order = new Order;
            $order->fullz_id = $item->id;
            $order->user_id = Auth::id();
            $order->amount = $item->price;
            $order->save();
        }
        $wallet = Transaction::where('user_id', Auth::id())->latest()->first();

        $transaction = new Transaction;
        $transaction->transaction_no =rand(1111,9999).rand(2222,9999);
        $transaction->user_id = Auth::id();
        $transaction->type = 'Debit';
        $transaction->source = 'Funds';
        $transaction->amount = Cart::subtotal();
        $transaction->balance = $wallet->balance - Cart::subtotal();
        $transaction->status = 'Completed';
        $transaction->save();
        Cart::destroy();
        return redirect(route('order.details'))->with('success', 'You have bought successfully');
    }

    public function cart_empty(){
        Cart::destroy();
        return back()->with('success', 'Cart has been empty');
    }
    public function cart(){
        $wallet = Transaction::where('user_id', Auth::id())->latest()->first();
        return view('cart', compact('wallet'));
    }
    public function cart_item_remove($id){
        Cart::remove($id);
        return back()->with('success', 'Cart Item has been removed');
    }

    public function update(Request $request){

        $user = User::find(Auth::id());
        if($request->phone){
            $user->phone = $request->phone;
        }
        if($request->password){
            $user->password = Hash::make($request->password);
        }
        $user->save();
        return back()->with('success', 'You account has been updated');
    }
    public function users(Request $request){
        if ($request->ajax()) {
            $data = User::where('user_type', 2)->latest()->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('name', function($data) {
                    return $data->name;
                })
                ->editColumn('email', function($data) {
                    return $data->email;
                })
                ->editColumn('created_at', function($data) {
                    return Carbon::parse($data->created_at)->diffForHumans();
                })
                ->editColumn('status', function($data) {
                    return $data->status == 1 ? "<span class='text-success'>Active</span>":"<span class='text-danger'>In-Active</span>";
                })
                ->editColumn('current_balance', function($data) {
                    if(isset($data->wallet)){
                        $balance = $data->wallet->balance;
                    }
                    else{
                        $balance = 0.00;
                    }
                    return '$'.$balance;
                })
                ->editColumn('action', function($data) {
                    $btn = '<a class="btn btn-primary mr-1" href="'.route('wallet', Crypt::encrypt($data->id)).'">Add Funds</a>';
                    $btn .= '<a class="btn btn-primary">Edit</a>';
                    return $btn;
                })
                ->rawColumns(['status','current_balance','action'])
                ->make(true);
        }
        return view('users');
    }
    public function business_pros(Request $request){

        if ($request->ajax()) {
            $data = Fullz::select('id','first_name','dob','state','city','price')
                ->where('status', 1)
                ->where('type', 1)
                ->whereNotIn('id', function($query)  {
                    $query->select('fullz_id')->from((new Order())->getTable())
                        ->where('user_id', Auth::id());
                });

            $data->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('dob', function($data) {
                    return Carbon::parse($data->dob)->format('m-d-Y') ;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('dl', function($data) {
                    return "NO";
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })
                ->editColumn('action', function($data) {
                    $btn = '<a class="modal-effect btn btn-primary mr-1" onclick="add_to_cart('.$data->id.',\'Buy\')">Buy Now</a>';
                    $btn .= '<a class="btn btn-primary add-to-cart" onclick="add_to_cart('.$data->id.', \'Cart\')" >Add to cart</a>';
                    return $btn;
                })
                ->rawColumns(['first_name','city','state','dob','price','action'])
                ->make(true);
        }

        return view('user-business-pros');
    }
}
