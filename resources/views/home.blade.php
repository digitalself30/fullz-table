@extends('layouts.master')
@section('page-header')
    <style>
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
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Hi! Welcome Back</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/' . $page='#')}}"><i class="fe fe-home mr-2 fs-14"></i>Home</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="{{url('/' . $page='#')}}">Sales Dashboard</a></li>
            </ol>
        </div>
    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row-1 -->
    <div class="row">
        <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
            <div class="card overflow-hidden dash1-card border-0">
                <div class="card-body">
                    <p class=" mb-1 ">Total User</p>
                    <h2 class="mb-1 number-font">{{$total_user}}</h2>
                    <span class="ratio bg-warning">100%</span>
                </div>
                <div id="spark1"></div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
            <div class="card overflow-hidden dash1-card border-0">
                <div class="card-body">
                    <p class=" mb-1 ">Total Sold Lines</p>
                    <h2 class="mb-1 number-font">{{$total_sold_lines}}</h2>
                    <span class="ratio bg-success">100%</span>
                </div>
                <div id="spark2"></div>
            </div>

        </div>
        <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
            <div class="card overflow-hidden dash1-card border-0">
                <div class="card-body">
                    <p class=" mb-1 ">This Month</p>
                    <h2 class="mb-1 number-font">${{$this_month_spent}}</h2>
                    <span class="ratio bg-success">100%</span>
                </div>
                <div id="spark3"></div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
            <div class="card overflow-hidden dash1-card border-0">
                <div class="card-body">
                    <p class=" mb-1">Total Income</p>
                    <h2 class="mb-1 number-font">${{$total_income}}</h2>
                    <span class="ratio bg-success">53%</span>
                </div>
                <div id="spark4"></div>
            </div>
        </div>
    </div>
    <!-- End Row-1 -->

    <!-- Row-2 -->
    <div class="row">
        <div class="col-xl-4 col-lg-4 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Recent Activity</h3>
                </div>
                <div class="card-body">
                    <div class="latest-timeline scrollbar3" id="scrollbar3" style="overflow: auto">
                        <ul class="timeline mb-0">
                            @if(count($activity_logs) > 0)
                                @foreach($activity_logs AS $activity_log)
                                    <li class="mt-0">
                                        <div class="d-flex"><span class="time-data">{{ucfirst($activity_log->log_name)}}</span><span class="ml-auto text-muted fs-11">{{\Carbon\Carbon::parse($activity_log->created_at)->diffForHumans()}}</span></div>
                                        <p class="text-muted fs-12"><span class="text-info">{{ isset($activity_log->causer) ? ucfirst($activity_log->causer->name) : ""}}</span> {{$activity_log->description}}</p>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-8 col-lg-8 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Add Funds</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="user-table" class="table card-table table-vcenter text-nowrap">
                            <thead>
                            <tr class="custom-tr">
                                <th>ID</th>
                                <th>Transaction ID</th>
                                <th>Username</th>
                                <th>Type</th>
                                <th>Source</th>
                                <th>Amount</th>
                                <th>Created At</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($transactions AS $i => $transaction)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$transaction->transaction_no}}</td>
                                    <td>{{$transaction->user->name}}</td>
                                    <td>{{$transaction->type}}</td>
                                    <td>{{$transaction->source}}</td>
                                    <td>${{$transaction->amount}}</td>
                                    <td>{{\Carbon\Carbon::parse($transaction->created_at)->diffForHumans()}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    {{ $transactions->links( "pagination::bootstrap-4") }}
                </div>
            </div>
        </div>
    </div>
    <!-- End Row-2 -->

    </div>
    </div>
    <!-- End app-content-->
    </div>
@endsection
@section('js')

    <!--INTERNAL Peitychart js-->
    <script src="{{URL::asset('assets/plugins/peitychart/jquery.peity.min.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/peitychart/peitychart.init.js')}}"></script>

    <!--INTERNAL Apexchart js-->
    <script src="{{URL::asset('assets/js/apexcharts.js')}}"></script>

    <!--INTERNAL ECharts js-->
    <script src="{{URL::asset('assets/plugins/echarts/echarts.js')}}"></script>

    <!--INTERNAL Chart js -->
    <script src="{{URL::asset('assets/plugins/chart/chart.bundle.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/chart/utils.js')}}"></script>

    <!-- INTERNAL Select2 js -->
    <script src="{{URL::asset('assets/plugins/select2/select2.full.min.js')}}"></script>
    <script src="{{URL::asset('assets/js/select2.js')}}"></script>

    <!--INTERNAL Moment js-->
    <script src="{{URL::asset('assets/plugins/moment/moment.js')}}"></script>

    <!--INTERNAL Index js-->
    <script src="{{URL::asset('assets/js/index1.js')}}"></script>
@endsection
