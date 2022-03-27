@extends('layouts.master')
@section('css')
@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Profile</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"><i class="fe fe-layers mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Profile</a></li>
            </ol>
        </div>
    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row -->
    <div class="row">
        <div class="col-xl-3 col-lg-3 col-md-12">
            <div class="card">
                <form action="{{ route('change.password') }}" method="POST">
                    @csrf
                    <div class="card-header">
                        <div class="card-title">Edit Password</div>
                    </div>
                    <div class="card-body">
                        <div class="text-center mb-5">
                            <div class="widget-user-image">
                                <img alt="User Avatar" class="rounded-circle  mr-3" src="{{URL::asset('assets/images/users/profile2.png')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Old Password</label>
                            <input type="password" name="current_password" class="form-control"   autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label class="form-label">New Password</label>
                            <input type="password" name="new_password" class="form-control" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label class="form-label">Confirm Password</label>
                            <input type="password" name="new_confirm_password" class="form-control" autocomplete="off">
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary">Updated</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Personal Details</h4>
                    <div class="table-responsive">
                        <table class="table mb-0">
                            <tbody>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50">UserName </span>
                                </td>
                                <td class="py-2 px-0">{{Auth::user()->name}}</td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50">Email </span>
                                </td>
                                <td class="py-2 px-0">{{Auth::user()->email}}</td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50">Created At </span>
                                </td>
                                <td class="py-2 px-0">{{\Carbon\Carbon::parse(Auth::user()->created_at)->diffForHumans()}}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div><!-- end app-content-->
    </div>
@endsection
@section('js')
@endsection
