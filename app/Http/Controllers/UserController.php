<?php

namespace App\Http\Controllers;

use App\Models\BusinessPro;
use App\Models\Fullz;
use App\Models\Order;
use App\Models\Transaction;
use App\Models\User;
use App\Models\Wallet;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;
use Auth;
use Cart;
use Hash;
use DB;

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
                if($request->dob == 'Older'){
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
                    if(!is_null($data->dob)){
                        return Carbon::parse($data->dob)->format('m-d-Y') ;
                    }
                    else{
                        return "N\A";
                    }
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('ssn', function($data) {
                    return "YES";
                })
                ->editColumn('ssn_dl', function($data) {
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
            $data = Fullz::select('id','first_name','dob','state','city','price','dl_issue', 'dl_expiry')
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
                if($request->dob == 'Older'){
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
            if($request->dl_issue_date == '1'){
                $data->where('dl_issue', '!=', '');
            }
            if($request->dl_expiry_date == '1'){
                $data->where('dl_expiry', '!=', '');
            }
            $data->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('dob', function($data) {
                    if(!is_null($data->dob)){
                        return Carbon::parse($data->dob)->format('m-d-Y');
                    }
                    else{
                        return "N\A";
                    }
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('ssn_dl', function($data) {
                    return "YES";
                })
                ->editColumn('ssn', function($data) {
                    return "YES";
                })
                ->editColumn('dl_issue', function($data) {
                    if(!is_null($data->dl_issue)){
                        return Carbon::parse($data->dl_issue)->format('m-d-Y') ;
                    }
                    else{
                        return 'N/A';
                    }
                })
                ->editColumn('dl_expiry', function($data) {
                    if(!is_null($data->dl_expiry)){
                        return Carbon::parse($data->dl_expiry)->format('m-d-Y') ;
                    }
                    else{
                        return 'N/A';
                    }
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
        $wallet = Transaction::where('user_id', Auth::id())->latest()->first();

        return view('user-fullz-ssn-dl', compact('wallet'));
    }
    public function order_details(){
        $orders = Order::with('fullz_table')->where('type','fullz')->where('user_id', Auth::id())->latest()->paginate(10);
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
        else if($request->type == "business"){
            $type = 3;
        }
        else{
            $type = 2;
        }
        foreach (Cart::content() AS $cart_time){

            if($cart_time->id == $request->id){
                return response()->json('');
            }
        }
        if($request->type == "business"){
            $data = BusinessPro::where('id', $request->id)->first();
        }
        else{
            $data = Fullz::where('id', $request->id)->where('type',$type)->first();
        }

        $option =[];
        Cart::add($data->id, $type, 1, $data->price, $option)->associate('App\Models\Fullz');
        $item_count = Cart::count();
        return response()->json($item_count);
    }
    public function buy_now(){

        foreach (Cart::content() AS $item){
            if($item->name == 1){
                $type = 'fullz';
            }
            else if($item->name == 2){
                $type = 'fullz';
            }
            else{
                $type = 'business';
            }
            $order = new Order;
            $order->fullz_id = $item->id;
            $order->type = $type;
            $order->user_id = Auth::id();
            $order->amount = $item->price;
            $order->save();
        }
        $transaction = new Transaction;
        $transaction->transaction_no =rand(1111,9999).rand(2222,9999);
        $transaction->user_id = Auth::id();
        $transaction->type = 'Debit';
        $transaction->source = 'Funds';
        $transaction->amount = Cart::subtotal();
        $transaction->status = 'Completed';
        $transaction->save();
        if($transaction->status == 'Completed'){
            Wallet::where('user_id', Auth::id())
                ->update([
                    'balance' => DB::raw('balance -'. Cart::subtotal())
                ]);
        }

        Cart::destroy();
        if($type == 'fullz'){
            return redirect(route('order.details'))->with('success', 'You have bought successfully');
        }
        else{
            return redirect(route('order.business.pros'))->with('success', 'You have bought successfully');
        }

    }
    public function cart_empty(){
        Cart::destroy();
        return back()->with('success', 'Cart has been empty');
    }
    public function cart(){
        $wallet = Wallet::where('user_id', Auth::id())->first();
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
                    if (Auth::user()->user_type == 1) {
                        $btn .= '<a href="' . route('user.delete', $data->id) . '" class="btn btn-danger">Delete</a>';
                    }
                    return $btn;
                })
                ->rawColumns(['status','current_balance','action'])
                ->make(true);
        }
        return view('users');
    }
    public function delete($id){

        if(Auth::user()->user_type != 1){
            return back()->with('error', 'You are not authorized');
        }
        User::find($id)->delete();
        return back()->with('success', 'You account has been deleted');
    }
    public function user_business_pros(Request $request){

        if ($request->ajax()) {
            $data = BusinessPro::select('id','company_name','ein','creation_date','owner','state','city','article_of_organization','annual_report','price')
                ->whereNotIn('id', function($query)  {
                    $query->select('fullz_id')->from((new Order())->getTable())
                        ->where('user_id', Auth::id())
                        ->where('type', 'business');
                });

            $data->latest()->get();

            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('company_name', function($data) {
                    return $data->company_name;
                })
                ->editColumn('ein', function($data) {
                    return $data->ein;
                })
                ->editColumn('creation_date', function($data) {
                    return Carbon::parse($data->creation_date)->format('m-d-Y') ;
                })
                ->editColumn('owner', function($data) {
                    return $data->owner;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('article_of_organization', function($data) {
                    return $data->article_of_organization;
                })
                ->editColumn('annual_report', function($data) {
                    return $data->annual_report;
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })
                ->editColumn('action', function($data) {
                    $btn = '<a class="modal-effect btn btn-primary mr-1" onclick="add_to_cart('.$data->id.',\'Buy\')">Buy Now</a>';
                    $btn .= '<a class="btn btn-primary add-to-cart" onclick="add_to_cart('.$data->id.', \'Cart\')" >Add to cart</a>';
                    return $btn;
                })
                ->rawColumns(['price','action'])
                ->make(true);
        }

        return view('user-business-pros');
    }

    public function order_business_pros(){
        $orders = Order::with('business_pros','user')
            ->where('user_id',Auth::id())
            ->where('type','business')
            ->latest()
            ->paginate(10);
        return view('user-order-business-pros', compact('orders'));
    }
    public function download_business_pros($id){

        $data = Order::with('business_pros', 'user')->where('id', $id)
            ->where('user_id', Auth::id())
            ->where('type', "business")
            ->first();

        $file= public_path(). "/storage/business-pros/" . $data->business_pros->file_path;
        if($data->business_pros->file_path){
            return \Response::download($file, 'business-pros.zip');
        }
        return back()->with('error', 'File not found');
    }
}
