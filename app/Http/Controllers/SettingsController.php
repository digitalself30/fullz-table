<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Auth;


class SettingsController extends Controller
{
    public function settings(){

        if (Auth::user()->user_type !== 1) {
            return back()->with('error', 'You are not authorized');
        }
        $setting = Setting::first();
        return view('settings', compact('setting'));
    }
    public function setting_store(Request $request){
        if (Auth::user()->user_type !== 1) {
            return back()->with('error', 'You are not authorized');
        }
        $setting = Setting::first();
        $setting->api_key = $request->api_key;
        $setting->telegram_link = $request->telegram_link;
        $setting->telegram_group_link = $request->telegram_group_link;
        $setting->save();

        return back()->with('success', 'Settings has been updated successfully');
    }


}
