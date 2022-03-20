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
        .edit-and-price-btn-container{
            position: absolute;
            right: 20px;
            top: 2px;
        }
        .edit-and-price{
            display: none;
            width: 170px;
        }
        .delete-btn{
            display: none;
        }
        #user-table-ssn .custom-tr{
            background-color: #705ec8 !important;
            color: #fff !important;
            font-size: 22px !important;
            font-weight: 900 !important;
        }
        #user-table-ssn .custom-tr th {
            color: #fff !important;
        }
    </style>

@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Fullz SSN</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Fullz SSN</a></li>
            </ol>
        </div>
        <div class="page-rightheader">
            <div class="btn btn-list">
                <a class="modal-effect btn btn-primary" data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo8">Add Full SSN</a>
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
                    <div class="card-title">Fullz SSN</div>
                    <div class="page-rightheader">
                        <div class="btn btn-list edit-and-price-btn-container">
                            <a class="modal-effect btn btn-primary edit-and-price" data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo99">Update Price</a>
                            <a class="btn btn-primary edit-btn edit-and-price" >Edit</a>
                            @if(Auth::user()->user_type == 1)
                                <a class="btn btn-danger delete-btn" >Delete</a>
                            @endif
                        </div>
                    </div>

                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="exampleInputPassword1" class="form-label">Price</label>
                            <select class="users form-control select2 custom-select price" name="">
                                <option value=""></option>
                                <option value="Lowest">Lowest</option>
                                <option value="Highest">Highest</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleInputPassword1" class="form-label">DOB</label>
                            <select class="users form-control select2 custom-select dob" name="">
                                <option value=""></option>
                                <option value="Elder">Elder</option>
                                <option value="Younger">Younger</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleInputPassword1" class="form-label">State</label>
                            <select class="users form-control select2 custom-select state" name="">
                                <option value=""></option>
                                <option value="AL">AL</option>
                                <option value="AK">AK</option>
                                <option value="AS">AS</option>
                                <option value="AZ">AZ</option>
                                <option value="AR">AR</option>
                                <option value="CA">CA</option>
                                <option value="CO">CO</option>
                                <option value="CT">CT</option>
                                <option value="DE">DE</option>
                                <option value="DC">DC</option>
                                <option value="FL">FL</option>
                                <option value="GA">GA</option>
                                <option value="GU">GU</option>
                                <option value="HI">HI</option>
                                <option value="ID">ID</option>
                                <option value="IL">IL</option>
                                <option value="IN">IN</option>
                                <option value="IA">IA</option>
                                <option value="KS">KS</option>
                                <option value="KY">KY</option>
                                <option value="LA">LA</option>
                                <option value="ME">ME</option>
                                <option value="MD">MD</option>
                                <option value="MA">MA</option>
                                <option value="MI">MI</option>
                                <option value="MN">MN</option>
                                <option value="MS">MS</option>
                                <option value="MO">MO</option>
                                <option value="MT">MT</option>
                                <option value="NE">NE</option>
                                <option value="NV">NV</option>
                                <option value="NH">NH</option>
                                <option value="NJ">NJ</option>
                                <option value="NM">NM</option>
                                <option value="NY">NY</option>
                                <option value="NC">NC</option>
                                <option value="ND">ND</option>
                                <option value="MP">MP</option>
                                <option value="OH">OH</option>
                                <option value="OK">OK</option>
                                <option value="OR">OR</option>
                                <option value="PA">PA</option>
                                <option value="PR">PR</option>
                                <option value="RI">RI</option>
                                <option value="SC">SC</option>
                                <option value="SD">SD</option>
                                <option value="TN">TN</option>
                                <option value="TX">TX</option>
                                <option value="UT">UT</option>
                                <option value="VT">VT</option>
                                <option value="VA">VA</option>
                                <option value="VI">VI</option>
                                <option value="WA">WA</option>
                                <option value="WV">WV</option>
                                <option value="WI">WI</option>
                                <option value="WY">WY</option>
                            </select>
                        </div>
                    </div>
                    <div class="">
                        <div class="table-responsive">
                            <table id="user-table-ssn" class="table table-bordered text-nowrap key-buttons">

                                <thead>
                                <tr class="custom-tr">
                                    <th class="border-bottom-0"><input type="checkbox" class="checkbox" id="select-all"></th>
                                    <th class="border-bottom-0">First name</th>
                                    <th class="border-bottom-0">Last name</th>
                                    <th class="border-bottom-0">Street</th>
                                    <th class="border-bottom-0">City</th>
                                    <th class="border-bottom-0">State</th>
                                    <th class="border-bottom-0">Zip</th>
                                    <th class="border-bottom-0">SSN</th>
                                    <th class="border-bottom-0">DOB</th>
                                    <th class="border-bottom-0">Price</th>
                                    <th class="border-bottom-0">Status</th>
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
                    <h5 class="modal-title" id="exampleModalLabel">Fullz SSN</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form id="myForm" action="{{route('fullz.store')}}" method="POST">
                    @csrf
                    <input type="hidden" name="table_type" value="1">
                    <div class="modal-body">
                        <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Full SSN Form</h4>
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
                                                <input type="text" class="form-control" id="dob" name="dob" placeholder="Date Of Birth">
                                            </div>
                                        </div>
                                        <div class="" style="display: flex;justify-content: space-between;">
                                            <div class="form-group col-md-6">
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
                    <input type="hidden" name="type" value="1">
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

    <!-- Modal -->
    <div class="modal fade" id="modaldemo99" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update Price</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="">
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputPassword1" class="form-label">Price</label>
                                        <input type="text" id="bulk-price" name="price" class="form-control" placeholder="Price">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary submit-form bulk-price-update">Submit</button>
                </div>
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

            $('.price').select2({
                placeholder:"Select Lowest/Highest",
                width: '100%',
            });
            $('.dob').select2({
                placeholder:"Select Elder/Younger",
                width: '100%',
            });
            $('.state').select2({
                placeholder:"Select State",
                width: '100%',
            });

            var auth = "{{Auth::user()->user_type == 1 ? "B":""}}";
            var table =  $('#user-table-ssn').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{route('fullz.ssn')}}",
                    data: function (d) {
                        d.price = $('.price').val();
                        d.dob = $('.dob').val();
                        d.state =  $('.state').val();
                    }
                },
                responsive: false,
                "lengthMenu": [ [10,25,50,500,1000, -1], [10,25,50,500,1000, "All"] ],
                dom: 'l'+auth+'frtip',
                ordering: true,
                buttons: [
                    'copy', 'excel','csv', 'pdf'
                ],
                columns: [
                    { data: 'checkbox',  name: 'checkbox' , searchable: false, orderable: false, },
                    { data: 'first_name', name: 'first_name' },
                    { data: 'last_name', name: 'last_name' },
                    { data: 'street', name: 'street' },
                    { data: 'city', name: 'city' },
                    { data: 'state', name: 'state' },
                    { data: 'zip', name: 'zip' },
                    { data: 'ssn', name: 'ssn' },
                    { data: 'dob', name: 'dob' },
                    { data: 'price', name: 'price' },
                    { data: 'status', name: 'status' },
                ],

            });
            $(".price").change(function(){
                table.draw();
            });
            $(".dob").change(function(){
                table.draw();
            });
            $(".state").change(function(){
                table.draw();
            });

            $("#select-all").click(function() {

                var isChecked = $(this).prop('checked');
                var array = [];

                $(".data-check").prop('checked', isChecked);

                if (isChecked) {
                    $(".data-check").prop('checked', isChecked);
                    $.each($("input[name='check_box']:checked"), function(){
                        array.push($(this).val());
                    });
                    $('.edit-btn').show();
                    $('.delete-btn').show();
                    $('.edit-and-price').show();
                }
                else {
                    $(".data-check").prop('', isChecked);

                    $.each($("input[name='check_box']:checked"), function(){
                        array.push($(this).val());
                    });
                    $('.edit-btn').hide();
                    $('.delete-btn').hide();
                    $('.edit-and-price').hide();
                }
            });
            $('#user-table-ssn tbody').on('click', '.data-check', function () {
                var array = [];
                $.each($("input[name='check_box']:checked"), function(){
                    array.push($(this).val());
                });
                if (array.length > 0){
                    $('.edit-and-price').show();
                    $('.delete-btn').show();
                }
                else{
                    $('.edit-and-price').show();
                    $('.delete-btn').show();
                    $('.delete-btn').show();
                }
            });
            $(".edit-btn").click(function() {

                var array = [];
                $.each($("input[name='check_box']:checked"), function(){
                    array.push($(this).val());
                });
                window.location.href = "{{route('edit.list')}}/"+array+"/ssn";
            });
            $(".delete-btn").click(function() {

                var array = [];
                $.each($("input[name='check_box']:checked"), function(){
                    array.push($(this).val());
                });

                $.ajax({
                    type: 'GET',
                    url: "{{route('fullz.destroy')}}",
                    data: {
                        ids : array,
                        type : "ssn",
                    },
                    success: function (response) {
                        window.location.href = "{{route('fullz.ssn')}}";
                    },
                    error: function (data) {
                        console.log('error');
                    }
                });
            });

            $(".bulk-price-update").click(function() {
                var array = [];
                $.each($("input[name='check_box']:checked"), function(){
                    array.push($(this).val());
                });

                $.ajax({
                    type: 'GET',
                    url: "{{route('update.price')}}",
                    data: {
                        ids : array,
                        price : $('#bulk-price').val(),
                    },
                    success: function (response) {
                        window.location.href = "{{route('fullz.ssn')}}";
                    },
                    error: function (data) {
                        console.log('error');
                    }
                });
            });
        });



    </script>
@endpush



