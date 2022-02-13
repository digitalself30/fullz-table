@extends('layouts.master')
@section('css')
    <!-- Data table css -->
    <link href="{{URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" />
    <link href="{{URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css')}}"  rel="stylesheet">
    <link href="{{URL::asset('assets/plugins/datatable/responsive.bootstrap4.min.css')}}" rel="stylesheet" />
    <!-- Slect2 css -->
    <link href="{{URL::asset('assets/plugins/select2/select2.min.css')}}" rel="stylesheet" />
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
            <h4 class="page-title mb-0">Fullz SSN + DL</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Fullz SSN + DL</a></li>
            </ol>
        </div>
        <div class="page-rightheader">
            <div class="btn btn-list">
                <a class="modal-effect btn btn-primary" data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo8">Add Full SSN + DL</a>
                <a class="modal-effect btn btn-primary" data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo11">Upload via CSV/Excel</a>
            </div>
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
                    <div class="card-title">Fullz SSN + DL</div>
                </div>
                <div class="card-body">
                    <div class="">
                        <div class="table-responsive">
                            <table id="user-table" class="table table-bordered text-nowrap key-buttons">
                                <thead>
                                <tr>
                                    <th class="border-bottom-0">First name</th>
                                    <th class="border-bottom-0">Last name</th>
                                    <th class="border-bottom-0">Street</th>
                                    <th class="border-bottom-0">City</th>
                                    <th class="border-bottom-0">State</th>
                                    <th class="border-bottom-0">Zip</th>
                                    <th class="border-bottom-0">SSN</th>
                                    <th class="border-bottom-0">DOB</th>
                                    <th class="border-bottom-0">DL</th>
                                    <th class="border-bottom-0">DL State</th>
                                    <th class="border-bottom-0">DL Issue</th>
                                    <th class="border-bottom-0">DL Expiry</th>
                                    <th class="border-bottom-0">Price</th>
                                    <th class="border-bottom-0">Status</th>
                                    <th class="border-bottom-0">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
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


    <!-- Modal -->
    <div class="modal fade" id="modaldemo8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Full SSN + DL</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form id="myForm" action="{{route('fullz.store')}}" method="POST">
                    @csrf
                    <input type="hidden" name="table_type" value="2">
                    <div class="modal-body">
                        <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Full SSN + DL Form</h4>
                                </div>

                                <div class="card-body">
                                    <div class="">
                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputEmail1" class="form-label">First name</label>
                                                <input type="text" class="form-control" id="first_name" name="first_name" placeholder="Enter First name">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputEmail1" class="form-label">Last name</label>
                                                <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Enter Last name">
                                            </div>
                                        </div>
                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">Street</label>
                                                <input type="text" class="form-control" id="street" name="street" placeholder="Street">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">City</label>
                                                <input type="text" class="form-control" id="city" name="city" placeholder="City">
                                            </div>
                                        </div>

                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">State</label>
                                                <input type="text" class="form-control" id="state" name="state" placeholder="State">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">Zip</label>
                                                <input type="text" class="form-control" id="zip" name="zip" placeholder="Zip code">
                                            </div>
                                        </div>

                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">SSN</label>
                                                <input type="text" class="form-control" id="ssn" name="ssn" placeholder="Enter SSN">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">Date Of Birth</label>
                                                <input type="text" class="form-control" id="date_of_birth" name="dob" placeholder="Date Of Birth">
                                            </div>

                                        </div>
                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">DL</label>
                                                <input type="text" class="form-control" id="dl" name="dl" placeholder="Enter DL">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="exampleInputPassword1" class="form-label">DL State</label>
                                                <input type="text" class="form-control" id="dl" name="dl_state" placeholder="Enter DL State">
                                            </div>
                                        </div>
                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-4">
                                                <label for="exampleInputPassword1" class="form-label">DL issue</label>
                                                <input type="text" class="form-control" id="dl_issue" name="dl_issue" placeholder="Enter DL issue">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="exampleInputPassword1" class="form-label">DL Expiry</label>
                                                <input type="text" class="form-control" id="dl_expiry" name="dl_expiry" placeholder="Enter DL issue">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="exampleInputPassword1" class="form-label">Price</label>
                                                <div class="input-group" style="display: contents">
                                                     <span class="input-group-append">
													    <button class="btn btn-primary" type="button">$</button>
                                                        <input style="border-radius:0px " type="text" class="form-control" name="price" id="price" placeholder="Enter price">
												    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <!-- Modal -->
    <div class="modal fade" id="modaldemo11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Upload CSV/Excel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form action="{{route('upload.csv')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="type" value="2">
                    <div class="modal-body">
                        <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="">
                                        <div class="form-group col-md-12">
                                            <label for="exampleInputPassword1" class="form-label">Upload CSV/Excel</label>
                                            <input type="file" name="file" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary submit-form">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal -->
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
        $(function() {
            var table=  $('#user-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{route('fullz.ssn.dl')}}"
                },
                responsive: false,
                "lengthMenu": [ [10,25,50,500,1000, -1], [10,25,50,500,1000, "All"] ],
                dom: 'lBfrtip',
                ordering: true,
                buttons: [
                    'copy', 'excel','csv', 'pdf'
                ],
                columns: [
                    { data: 'first_name', name: 'first_name' },
                    { data: 'last_name', name: 'last_name' },
                    { data: 'street', name: 'street' },
                    { data: 'city', name: 'city' },
                    { data: 'state', name: 'state' },
                    { data: 'zip', name: 'zip' },
                    { data: 'ssn', name: 'ssn' },
                    { data: 'dob', name: 'dob' },
                    { data: 'dl', name: 'dl' },
                    { data: 'dl_state', name: 'dl_state' },
                    { data: 'dl_issue', name: 'dl_issue' },
                    { data: 'dl_expiry', name: 'dl_expiry' },
                    { data: 'price', name: 'price' },
                    { data: 'status', name: 'status' },
                    { data: 'action', name: 'action' },
                ]
            });
        });
    </script>
@endpush

