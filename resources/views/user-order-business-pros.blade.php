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
        #user-table .custom-tr{
            background-color: #705ec8 !important;
            color: #fff !important;
            font-size: 22px !important;
            font-weight: 900 !important;
        }
        #user-table .custom-tr th {
            color: #fff !important;
        }
    </style>

@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Business Sold Lines</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Sold Lines</a></li>
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
                    <div class="card-title">Business Sold Lines</div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="user-table" class="table card-table table-vcenter text-nowrap">
                            <thead>
                            <tr class="custom-tr">
                                <th>ID</th>
                                <th>Username</th>
                                <th>Company Name</th>
                                <th>EIN</th>
                                <th>Creation date</th>
                                <th>Owner</th>
                                <th>State</th>
                                <th>City</th>
                                <th>Article of Organization</th>
                                <th>Annual Report</th>
                                <th>Price</th>
                                <th>Download</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php $total =0 @endphp
                            @foreach($orders AS $i=> $order)
                                <tr>
                                    <th scope="row">{{++$i}}</th>
                                    <th scope="row">{{$order->user->name}}</th>
                                    <td>{{$order->business_pros->company_name}}</td>
                                    <td>{{$order->business_pros->ein}}</td>
                                    <td>{{\Carbon\Carbon::parse($order->business_pros->creation_date)->format('m-d-Y')}}</td>
                                    <td>{{$order->business_pros->owner}}</td>
                                    <td>{{$order->business_pros->state}}</td>
                                    <td>{{$order->business_pros->city}}</td>
                                    <td>{{$order->business_pros->article_of_organization}}</td>
                                    <td>{{$order->business_pros->annual_report}}</td>
                                    <td>{{$order->business_pros->price}}</td>
                                    <td style="text-align: center; font-size: 22px"><a href="{{route('download.business.pros', $order->id)}}" download><i class="fa fa-cloud-download"></i></a></td>
                                </tr>
                                @php $total += $order->business_pros->price @endphp
                            @endforeach
                            <tr>
                                <td colspan="10">Total</td>
                                <td>{{$total}}</td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    {{ $orders->links( "pagination::bootstrap-4") }}
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



