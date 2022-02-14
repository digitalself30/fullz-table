@extends('layouts.master')
@section('css')
    <link href="{{URL::asset('assets/plugins/sweet-alert/jquery.sweet-modal.min.css')}}" rel="stylesheet" />
    <link href="{{URL::asset('assets/plugins/sweet-alert/sweetalert.css')}}" rel="stylesheet" />

    <style type="text/css">
        th{
            text-transform: inherit !important;
        }
        .form-control {
            color: #6b6f80;
        }
    </style>

@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Add Funds</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Add Funds</a></li>
            </ol>
        </div>
    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Add Funds</div>
                </div>
                <div class="card-body">
                    <form id="myForm" action="{{route('funds.store')}}" method="POST">
                        @csrf
                        <div class="card-body">
                            <div class="">
                                <div class="" style="display: flex;justify-content: space-between;">
                                    <div class="form-group col-md-6">
                                        <label for="exampleInputEmail1" class="form-label">Enter Amount</label>
                                        <div class="d-flex">
                                            <div class="input-group wd-150">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M15.55 11l2.76-5H6.16l2.37 5z" opacity=".3"></path><path d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.37-.66-.11-1.48-.87-1.48H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                                                    </div><!-- input-group-text -->
                                                </div><!-- input-group-prepend -->
                                                <select class="form-control" name="amount">
                                                    <option value="2">$2</option>
                                                    <option value="5">$5</option>
                                                    <option value="10">$10</option>
                                                    <option value="20">$20</option>
                                                    <option value="50">$50</option>
                                                    <option value="100">$100</option>
                                                </select>
                                                <button class="btn btn btn-primary br-tl-0 br-bl-0" id="setTimeButton">USD</button>
                                            </div><!-- input-group -->
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="exampleInputEmail1" class="form-label">Order Number</label>
                                        <div class="d-flex">
                                            <div class="input-group wd-150">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="fa fa-qrcode"></i>
                                                    </div><!-- input-group-text -->
                                                </div><!-- input-group-prepend -->
                                                <input class="form-control" type="text" name="order_number" value="{{uniqid().rand(111,999)}}" autocomplete="off" readonly>
                                            </div><!-- input-group -->
                                        </div>
                                    </div>
                                </div>
                                <div class="" style="display: flex;justify-content: space-between;">
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputPassword1" class="form-label">Notes (Optional)</label>
                                        <textarea  class="form-control" name="notes"  placeholder="Enter your notes"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Proceed</button>
                        </div>
                    </form>
                </div>
            </div>
            <!--/div-->
        </div>
    </div>
    <!-- /Row -->

    </div>
    </div><!-- end app-content-->
    </div>

@endsection

@section('js')

@endsection

@push('scripts')
    <script>

    </script>
@endpush



