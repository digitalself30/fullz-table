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
            <div class="card box-widget widget-user">
                <div class="widget-user-image mx-auto mt-5"><img alt="User Avatar" class="rounded-circle" src="{{URL::asset('assets/images/users/profile2.png')}}"></div>
                <div class="card-body text-center">
                    <div class="pro-user">
                        @if(Auth::check())
                            <h4 class="pro-user-username text-dark mb-1 font-weight-bold">{{Auth::user()->name}}</h4>
                            <h6 class="pro-user-desc text-muted">{{Auth::user()->email}}</h6>
                        @endif
                        <a href="{{route('user.edit', Auth::id())}}" class="btn btn-primary  mt-3"><i class="fa fa-pencil"></i> Edit Profile</a>

                    </div>
                </div>

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
                                    <span class="font-weight-semibold w-50">Phone Number </span>
                                </td>
                                <td class="py-2 px-0">{{Auth::user()->phone}}</td>
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
