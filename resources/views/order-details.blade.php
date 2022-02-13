@extends('layouts.master')
@section('css')
    <!-- Data table css -->
    <link href="{{URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" />
    <link href="{{URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css')}}"  rel="stylesheet">
    <link href="{{URL::asset('assets/plugins/datatable/responsive.bootstrap4.min.css')}}" rel="stylesheet" />
    <!-- Slect2 css -->
    <link href="{{URL::asset('assets/plugins/select2/select2.min.css')}}" rel="stylesheet" />
    <!--- INTERNAL Sweetalert css-->
    <link href="{{URL::asset('assets/plugins/sweet-alert/jquery.sweet-modal.min.css')}}" rel="stylesheet" />
    <link href="{{URL::asset('assets/plugins/sweet-alert/sweetalert.css')}}" rel="stylesheet" />

    <style type="text/css">
        th{
            text-transform: inherit !important;
        }
    </style>

@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Order Details</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Order Details</a></li>
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
                    <div class="card-title">Order Details</div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table card-table table-vcenter text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Type</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Street</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Zip</th>
                                <th>SSN</th>
                                <th>DOB</th>
                                <th>DL</th>
                                <th>DL State</th>
                                <th>DL Issue</th>
                                <th>DL Expiry</th>
                                <th>Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($orders AS $i=> $order)
                            <tr>
                                <th scope="row">{{++$i}}</th>
                                <td>{{$order->fullz_table->type == 1 ? "SSN": "SSN + DL"}}</td>
                                <td>{{$order->fullz_table->first_name}}</td>
                                <td>{{$order->fullz_table->last_name}}</td>
                                <td>{{$order->fullz_table->street}}</td>
                                <td>{{$order->fullz_table->city}}</td>
                                <td>{{$order->fullz_table->state}}</td>
                                <td>{{$order->fullz_table->zip}}</td>
                                <td>{{$order->fullz_table->ssn}}</td>
                                <td>{{\Carbon\Carbon::parse($order->fullz_table->dob)->format('m-d-Y')}}</td>
                                <td>{{$order->fullz_table->dl}}</td>
                                <td>{{$order->fullz_table->dl_state}}</td>
                                <td>{{\Carbon\Carbon::parse($order->fullz_table->dl_issue)->format('m-d-Y')}}</td>
                                <td>{{\Carbon\Carbon::parse($order->fullz_table->dl_expiry)->format('m-d-Y')}}</td>
                                <td>{{$order->fullz_table->price}}</td>
                            </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{ $orders->links( "pagination::bootstrap-4") }}
                    </div>
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
    <!-- INTERNAL Data tables -->
    <script src="{{URL::asset('assets/plugins/datatable/js/jquery.dataTables.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/dataTables.bootstrap4.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/jszip.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/pdfmake.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/vfs_fonts.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/buttons.html5.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/buttons.print.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/js/buttons.colVis.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/datatable/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/datatables.js')}}"></script>

    <!-- INTERNAL Select2 js -->
    <script src="{{URL::asset('assets/plugins/select2/select2.full.min.js')}}"></script>
@endsection

@push('scripts')
    <script>

    </script>
@endpush



