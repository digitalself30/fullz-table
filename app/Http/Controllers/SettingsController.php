<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function settings(){
        $setting = Setting::first();
        return view('settings', compact('setting'));
    }
    public function setting_store(Request $request){
        $setting = Setting::first();
        $setting->api_key = $request->api_key;
        $setting->telegram_link = $request->telegram_link;
        $setting->save();

        return back()->with('success', 'Settings has been updated successfully');
    }
}
