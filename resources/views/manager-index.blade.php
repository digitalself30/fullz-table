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
        <h4 class="page-title mb-0"></h4>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
            <li class="breadcrumb-item active" aria-current="page"><a href="#">Manager Lists</a></li>
        </ol>
    </div>
    <div class="page-rightheader">
        <div class="btn btn-list">
            <a class="modal-effect btn btn-primary" data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo11">Add Manager</a>
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
                <div class="card-title">Manger Account</div>
            </div>
            <div class="card-body">
                <div class="">
                    <div class="table-responsive">
                        <table id="user-table" class="table table-bordered text-nowrap key-buttons">
                            <thead>
                            <tr class="custom-tr">
                                <th class="border-bottom-0">Name</th>
                                <th class="border-bottom-0">Email</th>
                                <th class="border-bottom-0">Status</th>
                                <th class="border-bottom-0">Created At</th>
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
<div class="modal fade" id="modaldemo11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Manager</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form action="{{route('manager.store')}}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="">
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputPassword1" class="form-label">Name</label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Name">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputPassword1" class="form-label">Email</label>
                                        <input type="email" name="email" class="form-control" placeholder="Enter Email">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="text" name="password" class="form-control" placeholder="Enter Password">
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
    $(function () {
        var table = $('#user-table').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{route('manager.index')}}",
            },
            responsive: false,
            "lengthMenu": [[10, 25, 50, 500, 1000, -1], [10, 25, 50, 500, 1000, "All"]],
            dom: 'lBfrtip',
            ordering: true,
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
            ],
            columns: [
                {data: 'name', name: 'name'},
                {data: 'email', name: 'email'},
                {data: 'status', name: 'status'},
                {data: 'created_at', name: 'created_at'},
                {data: 'action', name: 'action', width:'10%'},
            ]
        });
    });
</script>
@endpush



