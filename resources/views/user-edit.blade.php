@extends('layouts.master')
@section('css')
    <!-- INTERNAL Select2 css -->
    <link href="{{URL::asset('assets/plugins/select2/select2.min.css')}}" rel="stylesheet" />
    <style>
        .form-control {
            color: #e9e9eb !important;
        }
    </style>
@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Edit Profile</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layers mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Edit Profile</a></li>
            </ol>
        </div>

    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row -->
    <div class="row">
        <div class="col-xl-3 col-lg-4">
            <div class="card box-widget widget-user">
                <div class="widget-user-image mx-auto mt-5"><img alt="User Avatar" class="rounded-circle" src="{{URL::asset('assets/images/users/profile2.png')}}"></div>
                <div class="card-body text-center pt-2">
                    <div class="pro-user">
                        <h3 class="pro-user-username text-dark mb-1 fs-22">{{$user->name}}</h3>
                        <h6 class="pro-user-desc text-muted">{{$user->email}}</h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-8">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Edit Profile</div>
                </div>
                <form action="{{route('user.update')}}" method="POST">
                    @csrf
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6 col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Username</label>
                                    <input type="text" id="username" class="form-control"  value="{{$user->name}}" readonly>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Email address</label>
                                    <input type="email" class="form-control" value="{{$user->email}}" placeholder="Email" readonly>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Phone Number (Eg. +12124567890)</label>
                                    <input type="text" class="form-control" name="phone" value="{{$user->phone}}" placeholder="Phone Number">
                                </div>
                            </div>

                            @if(Auth::user()->user_type == 1)
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="form-label">Password</label>
                                        <input type="text" id="temp_password" class="form-control" readonly value="{{Crypt::decrypt($user->temp_password)}}">
                                    </div>
                                </div>
                                @else
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="form-label">Password</label>
                                        <input type="text" id="password" name="password" class="form-control"  value="">
                                    </div>
                                </div>
                            @endif


                        </div>

                    </div>
                    <div class="card-footer text-right">
                        <button type="submit" class="btn  btn-primary">Updated</button>
                        <a href="#" class="btn btn-danger">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Row-->

    </div>
    </div><!-- end app-content-->
    </div>
@endsection
@section('js')
    <!-- INTERNAL Select2 js -->
    <script src="{{URL::asset('assets/plugins/select2/select2.full.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/select2.js')}}"></script>

@endsection
