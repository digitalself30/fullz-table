<?php

namespace App\Http\Controllers;

use App\Exports\FullzSSNExport;
use App\Imports\FullzSSNDLImport;
use App\Imports\FullzSSNImport;
use App\Models\Fullz;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Auth;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\DataTables;

class FullzController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function fullz_ssn(Request $request){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }

        if ($request->ajax()) {

            $data = Fullz::where('status', '=', 1)->where('type', 1)->latest();

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

                ->editColumn('checkbox', function($data) {
                    return "<input type=\"checkbox\" value='".$data->id."' name='check_box' class=\"checkbox data-check\">";
                })
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('last_name', function($data) {
                    return $data->last_name;
                })
                ->editColumn('street', function($data) {
                    return $data->street;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('zip', function($data) {
                    return $data->zip;
                })
                ->editColumn('ssn', function($data) {
                    return $data->ssn;
                })
                ->editColumn('dob', function($data) {
                    return Carbon::parse($data->dob)->format('m-d-Y') ;
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })

                ->editColumn('status', function($data) {
                    return $data->status == 1 ? "Active" : "In-Active";
                })
                ->editColumn('action', function($data) {
                    return '<a href="'.route('fullz.destroy', $data->id).'"><i class="fe fe-trash-2"></i></a>';
                })
                ->rawColumns(['checkbox','first_name','last_name','street','city','state','zip','ssn','dob','price','status','action'])
                ->make(true);
        }
        return view('fullz-ssn');
    }

    public function fullz_ssn_dl(Request $request){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }

        if ($request->ajax()) {

            $data = Fullz::where('status', '=', 1)->where('type', 2)->latest();
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

                ->editColumn('checkbox', function($data) {
                    return "<input type=\"checkbox\" value='".$data->id."' name='check_box' class=\"checkbox data-check\">";
                })
                ->editColumn('first_name', function($data) {
                    return $data->first_name;
                })
                ->editColumn('last_name', function($data) {
                    return $data->last_name;
                })
                ->editColumn('dob', function($data) {
                    return Carbon::parse($data->dob)->format('m-d-Y') ;
                })
                ->editColumn('street', function($data) {
                    return $data->street;
                })
                ->editColumn('state', function($data) {
                    return $data->state;
                })
                ->editColumn('city', function($data) {
                    return $data->city;
                })

                ->editColumn('zip', function($data) {
                    return $data->zip;
                })
                ->editColumn('price', function($data) {
                    return '$'.$data->price;
                })
                ->editColumn('ssn', function($data) {
                    return $data->ssn;
                })
                ->editColumn('dl', function($data) {
                    return $data->dl;
                })
                ->editColumn('dl_issue', function($data) {
                    return Carbon::parse($data->dl_issue)->format('m-d-Y') ;
                })
                ->editColumn('dl_state', function($data) {
                    return $data->dl_state;
                })
                ->editColumn('dl_expiry', function($data) {
                    return Carbon::parse($data->dl_expiry)->format('m-d-Y') ;
                })
                ->editColumn('status', function($data) {
                    return $data->status == 1 ? "Active" : "In-Active";
                })
                ->editColumn('action', function($data) {
                    return '<a href="'.route('fullz.edit', $data->id).'"><i class="fe fe-trash-2"></i></a>';
                })
                ->rawColumns(['checkbox','first_name','last_name','date_of_birth','street','state','city','zip','price','ssn','dl','dl_issue','dl_expiry','status','action'])
                ->make(true);
        }
        return view('fullz-ssn-dl');
    }

    public function store(Request $request){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }

        $fullz_add = new Fullz;
        $fullz_add->first_name = $request->first_name;
        $fullz_add->last_name = $request->last_name;
        $fullz_add->street = $request->street;
        $fullz_add->city = $request->city;
        $fullz_add->state = $request->state;
        $fullz_add->zip = $request->zip;
        $fullz_add->ssn = $request->ssn;
        $fullz_add->dob = Carbon::parse($request->dob)->format('Y-m-d');
        $fullz_add->price = $request->price;
        $fullz_add->status = 1;
        if($request->table_type == 1){
            $fullz_add->type = 1;
        }
        else{
            $fullz_add->dl = $request->dl;
            $fullz_add->dl_state  = $request->dl_state;
            $fullz_add->dl_issue  = Carbon::parse($request->dl_issue)->format('Y-m-d');
            $fullz_add->dl_expiry = Carbon::parse($request->dl_expiry)->format('Y-m-d');
            $fullz_add->type = 2;
        }
        $fullz_add->save();
        return back()->with('success', 'Data has been updated');
    }

    public function upload_csv(Request $request){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }
        if($request->type == 1){
            Excel::import(new FullzSSNImport, $request->file);
            return redirect(route('fullz.ssn'))->with('success', 'Data has been updated');
        }
        else{
            Excel::import(new FullzSSNDLImport, $request->file);
            return redirect(route('fullz.ssn.dl'))->with('success', 'Data has been updated');
        }
    }

    public function edit_list($ids, $type){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }

        $str_arr = explode (",", $ids);
        $fulz_ssn = Fullz::whereIn('id', $str_arr)->get();
        if($type == 'ssn'){
            return view('ssn-edit', compact('fulz_ssn'));
        }
        else if($type == 'ssn+dl'){
            return view('ssn-dl-edit', compact('fulz_ssn'));
        }

    }
    public function update_ssn_table(Request $request){
        // Admin
        if(Auth::user()->user_type != 1){
            return back();
        }
        foreach ($request->ids AS $n => $id){

            $update = Fullz::where('id' , $id)->first();
            $update->first_name = $request->first_name[$n];
            $update->last_name = $request->last_name[$n];
            $update->street = $request->street[$n];
            $update->city = $request->city[$n];
            $update->state = $request->state[$n];
            $update->zip = $request->zip[$n];
            $update->ssn = $request->ssn[$n];
            $update->dob = Carbon::parse($request->dob[$n])->format('Y-m-d');
            $update->price = $request->price[$n];

            if($request->type !== 'ssn'){
                $update->dl = $request->dl[$n];
                $update->dl_state  = $request->dl_state[$n];
                $update->dl_issue  = Carbon::parse($request->dl_issue[$n])->format('Y-m-d');
                $update->dl_expiry = Carbon::parse($request->dl_expiry[$n])->format('Y-m-d');
            }
            $update->save();
        }
        if($request->type !== 'ssn'){
            return redirect(route('fullz.ssn.dl'))->with('success', 'Data has been updated');
        }
        return redirect(route('fullz.ssn'))->with('success', 'Data has been updated');
    }
    public function update_price(Request $request){
        $request->validate([
            "price" =>" required|regex:/^\d+(\.\d{1,2})?$/",
        ]);
        foreach ($request->ids AS $id){
            $price = Fullz::find($id);
            $price->price = $request->price;
            $price->save();
        }
        return response()->json('success');
    }
}
