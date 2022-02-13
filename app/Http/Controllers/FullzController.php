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

        if(Auth::user()->user_type != 1){
            return view('401');
        }
        if ($request->ajax()) {

            $data = Fullz::where('status', '=', 1)->where('type', 1)->latest()->get();

            return DataTables::of($data)
                ->addIndexColumn()
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
                    $btn = '<a href="'.route('fullz.edit', $data->id).'"><i class="fe fe-edit-2"></i></a>';
                    $btn .= '<a href="'.route('fullz.destroy', $data->id).'"><i class="fe fe-trash-2"></i></a>';
                    return $btn;
                })
                ->rawColumns(['first_name','last_name','street','city','state','zip','ssn','dob','price','status','action'])
                ->make(true);
        }
        return view('fullz-ssn');
    }

    public function fullz_ssn_dl(Request $request){

        if(Auth::user()->user_type != 1){
            return view('401');
        }
        if ($request->ajax()) {

            $data = Fullz::where('status', '=', 1)->where('type', 2)->latest()->get();

            return DataTables::of($data)
                ->addIndexColumn()
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
                    $btn = '<a href="'.route('fullz.edit', $data->id).'"><i class="fe fe-edit-2"></i></a>';
                    $btn .= '<a href="'.route('fullz.edit', $data->id).'"><i class="fe fe-trash-2"></i></a>';
                    return $btn;
                })
                ->rawColumns(['first_name','last_name','date_of_birth','street','state','city','zip','price','ssn','dl','dl_issue','dl_expiry','status','action'])
                ->make(true);
        }
        return view('fullz-ssn-dl');
    }

    public function store(Request $request){

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
        if($request->type == 1){
            Excel::import(new FullzSSNImport, $request->file);
            return redirect(route('fullz.ssn'))->with('success', 'Data has been updated');
        }
        else{
            Excel::import(new FullzSSNDLImport, $request->file);
            return redirect(route('fullz.ssn.dl'))->with('success', 'Data has been updated');
        }

    }

}
