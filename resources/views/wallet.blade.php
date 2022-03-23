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
            <h4 class="page-title mb-0">Wallet</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layers mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Wallet</a></li>
            </ol>
        </div>
    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row -->
    <div class="row">
        <div class="col-xl-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Wallet</div>
                </div>
                <form action="{{route('wallet.update', $wallet->user_id)}}" method="POST">
                    @csrf
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">User ID</label>
                                    <input type="text" name="user_id" class="form-control" value="{{isset($wallet->user) ? $wallet->user->id : ""}}"readonly placeholder="User ID" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">Username</label>
                                    <input type="text" id="" class="form-control" value="{{isset($wallet->user) ? $wallet->user->name : ""}}" readonly placeholder="User Name" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">Email</label>
                                    <input type="text" id="" class="form-control" value="{{isset($wallet->user) ? $wallet->user->email : ""}}" readonly placeholder="User Email" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">Current Balance</label>
                                    <input type="text" id="" class="form-control" value="{{isset($wallet) ? $wallet->balance :"0.00"}}" readonly placeholder="Current Balance" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">Update Balance</label>
                                    <input type="text" class="form-control" required name="update_balance" placeholder="0.00" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="form-label">Notes</label>
                                    <input type="text" class="form-control" required name="notes" placeholder="Write notes" >
                                </div>
                            </div>
                        </div>
                    </div>
                    @if(Auth::user()->user_type == 3)
                        @if($check_limit >= 100)
                            <div class="card-footer text-right">
                                <div class="alert alert-light-danger">Account limit has been reached please contact to the admin</div>
                            </div>
                            @else
                            <div class="card-footer text-right">
                                <button type="submit" class="btn  btn-primary">Update</button>
                            </div>
                            @endif
                    @else
                        <div class="card-footer text-right">
                            <button type="submit" class="btn  btn-primary">Update</button>
                        </div>
                    @endif
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
