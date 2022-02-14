@extends('layouts.master')
@section('css')

    <style type="text/css">
        th{
            text-transform: inherit !important;
        }
        .dark-mode .modal-footer {
            border-top: 1px solid rgb(115 95 95 / 0%) !important;
        }
    </style>

@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">SSN + DL Edit</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">SSN + DL Edit</a></li>
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
                    <div class="card-title">SSN + DL Edit</div>
                </div>
                <div class="card-body">
                    <form id="myForm" action="{{route('update.ssn.table')}}" method="POST">
                        @csrf
                        <input type="hidden" name="type" value="ssn+dl">
                        <div class="card-body">
                            @foreach($fulz_ssn AS $i=> $item)
                                <div class="row">
                                    <input type="hidden" name="ids[]" value="{{$item->id}}">

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputEmail1" class="form-label">First name</label>
                                        <input type="text" class="form-control" id="first_name" value="{{$item->first_name}}" name="first_name[]" placeholder="Enter First name">
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputEmail1" class="form-label">Last name</label>
                                        <input type="text" class="form-control" id="last_name" value="{{$item->last_name}}" name="last_name[]" placeholder="Enter Last name">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Street</label>
                                        <input type="text" class="form-control" id="street" value="{{$item->street}}" name="street[]" placeholder="Street">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" value="{{$item->city}}" name="city[]" placeholder="City">
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">State</label>
                                        <input type="text" class="form-control" id="state" value="{{$item->state}}" name="state[]" placeholder="State">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Zip</label>
                                        <input type="text" class="form-control" id="zip" value="{{$item->zip}}" name="zip[]" placeholder="Zip code">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">SSN</label>
                                        <input type="text" class="form-control" id="ssn" value="{{$item->ssn}}" name="ssn[]" placeholder="Enter SSN">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Date Of Birth</label>
                                        <input type="text" class="form-control" id="dob" value="{{$item->dob}}" name="dob[]" placeholder="Date Of Birth">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">DL</label>
                                        <input type="text" class="form-control" id="dl" value="{{$item->dl}}" name="dl[]" placeholder="Enter DL">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">DL State</label>
                                        <input type="text" class="form-control" id="dl" value="{{$item->dl_state}}" name="dl_state[]" placeholder="Enter DL State">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">DL issue</label>
                                        <input type="text" class="form-control" id="dl_issue" value="{{$item->dl_issue}}" name="dl_issue[]" placeholder="Enter DL issue">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">DL Expiry</label>
                                        <input type="text" class="form-control" id="dl_expiry" value="{{$item->dl_expiry}}" name="dl_expiry[]" placeholder="Enter DL issue">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Price</label>
                                        <div class="input-group" style="display: contents">
                                         <span class="input-group-append">
                                            <button class="btn btn-primary" type="button">$</button>
                                            <input style="border-radius:0px " type="text" class="form-control" value="{{$item->price}}" name="price[]" id="price" placeholder="Enter price">
                                        </span>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            @endforeach
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
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



