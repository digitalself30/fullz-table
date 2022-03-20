<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\DataTables;
use Auth;

class ManagerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request){
        if(Auth::user()->user_type == 2 OR Auth::user()->user_type == 3){
            return back()->with('error', 'You are not authorized');
        }
        if ($request->ajax()) {
            $data = User::where('user_type', 3)->latest()->get();

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
                ->editColumn('action', function($data) {
                    $btn = '<a class="btn btn-primary mr-1" href="'.route('manager.edit', $data->id).'">Edit</a>';
                    $btn .= '<a href="'.route('manager.delete', $data->id).'" class="btn btn-danger">Delete</a>';
                    return $btn;
                })
                ->rawColumns(['status','action'])
                ->make(true);
        }
        return view('manager-index');
    }
    public function store(Request $request){
        $this->auth();
        $add = new User;
        $add->name = $request->name;
        $add->user_type = 3;
        $add->status =1;
        $add->email  = $request->email;
        $add->password  = Hash::make($request->password);
        $add->save();
        return back()->with('success', 'Manager account has been created');
    }
    public function edit($id){
        if(Auth::user()->user_type == 2 OR Auth::user()->user_type == 3){
            return back()->with('error', 'You are not authorized');
        }
        $data = User::find($id);
        return view('manager-edit', compact('data'));
    }
    public function update(Request $request, $id){
        if(Auth::user()->user_type == 2 OR Auth::user()->user_type == 3){
            return back()->with('error', 'You are not authorized');
        }
        $add = User::find($id);
        $add->name = $request->name;
        $add->email  = $request->email;
        if($request->password){
            $add->password  = Hash::make($request->password);
        }
        $add->save();
        return back()->with('success', 'Manager account has been updated');
    }
    public function delete($id){
        if(Auth::user()->user_type == 2 OR Auth::user()->user_type == 3){
            return back()->with('error', 'You are not authorized');
        }
        User::find($id)->delete();
        return back()->with('success', 'Manager account has been deleted');
    }

}
