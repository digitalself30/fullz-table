<?php

namespace App\Http\Controllers;

use App\Exports\FullzSSNExport;
use App\Imports\FullzSSNDLImport;
use App\Imports\FullzSSNImport;
use App\Models\BusinessPro;
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
    public function business_pros(Request $request){

        if ($request->ajax()) {
            $data = BusinessPro::latest()->get();

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
                ->editColumn('file_path', function($data) {
                    return '<a href="'.asset('storage/business-pros/'.$data->file_path).'" download><li class="icons-list-item" style="line-height: initial; height: initial; margin: initial;"><svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0z" fill="none"/><path d="M19.35 10.04C18.67 6.59 15.64 4 12 4 9.11 4 6.6 5.64 5.35 8.04 2.34 8.36 0 10.91 0 14c0 3.31 2.69 6 6 6h13c2.76 0 5-2.24 5-5 0-2.64-2.05-4.78-4.65-4.96zM17 13l-5 5-5-5h3V9h4v4h3z"/></svg></li></a>';

                })
                ->editColumn('action', function($data) {
                    return '<a href="'.route('business.pros.delete', $data->id).'"><li class="icons-list-item" style="line-height: initial; height: initial; margin: initial;"><svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M8 9h8v10H8z" opacity=".3"></path><path d="M15.5 4l-1-1h-5l-1 1H5v2h14V4zM6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM8 9h8v10H8V9z"></path></svg></li></a>';
                })
                ->rawColumns(['file_path','action'])
                ->make(true);
        }
        return view('business-pros');
    }
    public function business_pros_store(Request $request){
        $this->validate($request,[
            'company_name' => 'required',
            'ein'  => 'required',
            'creation_date'  => 'required',
            'owner'  => 'required',
            'state'  => 'required',
            'city'  => 'required',
            'article_of_organization'  => 'required',
            'annual_report'  => 'required',
            'price'  => 'required',
        ]);

        // file handle upload
        if($request->hasFile('zip_file')){
            // Get filename with the extension
            $filenameWithExt = $request->file('zip_file')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('zip_file')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('zip_file')->storeAs('public/business-pros', $fileNameToStore);
        } else {
            $name  = str_replace(' ','_', $request->company_name);
            $fileNameToStore = $name.'.zip';
        }
        // create business pros
        $business = new BusinessPro();
        $business->company_name = $request->company_name;
        $business->ein  = $request->ein;
        $business->creation_date  = $request->creation_date;
        $business->owner  = $request->owner;
        $business->state  = $request->state;
        $business->city  = $request->city;
        $business->article_of_organization  = $request->article_of_organization;
        $business->annual_report  = $request->annual_report;
        $business->price  = $request->price;
        $business->file_path = $fileNameToStore;
        $business->save();

        return back()->with('success', 'Data has been updated');
    }

    public function business_pros_delete($id){
        BusinessPro::find($id)->delete();
        return back()->with('success', 'Data has been deleted');
    }
}
