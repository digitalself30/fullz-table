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
            <h4 class="page-title mb-0">Fullz SSN + DL</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Fullz SSN + DL</a></li>
            </ol>
        </div>
        <div class="page-rightheader">
            <div class="btn btn-list">
                <a class="btn btn-primary" href="{{route('user.fullz.ssn')}}">Fullz SSN</a>
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
                                <option value="Older">Older</option>
                                <option value="Younger">Younger</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="exampleInputPassword1" class="form-label">State <span style="float: right" id="refresh"><i class="fa fa-refresh"></i></span></label>
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
                        <div class="row mt-4">
                            <div class="col-md-4"></div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label class="custom-switch">
                                        <span class="custom-switch-description mr-2">DL Issue Date</span>
                                        <input type="checkbox" id="dl_issue_date" value="1" name="custom-switch-checkbox" class="custom-switch-input">
                                        <span class="custom-switch-indicator custom-switch-indicator-xl"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label class="custom-switch">
                                        <span class="custom-switch-description mr-2">DL Expiry Date</span>
                                        <input type="checkbox" id="dl_expiry_date" value="1" name="custom-switch-checkbox" class="custom-switch-input">
                                        <span class="custom-switch-indicator custom-switch-indicator-xl"></span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                        <div class="table-responsive">
                            <table id="user-table" class="table table-bordered text-nowrap key-buttons">
                                <thead>
                                <tr class="custom-tr">
                                    <th class="border-bottom-0">First name</th>
                                    <th class="border-bottom-0">Date Of Birth</th>
                                    <th class="border-bottom-0">State</th>
                                    <th class="border-bottom-0">City</th>
                                    <th class="border-bottom-0">SSN</th>
                                    <th class="border-bottom-0">DL</th>
                                    <th class="border-bottom-0">DL Issue</th>
                                    <th class="border-bottom-0">DL Expiry</th>
                                    <th class="border-bottom-0">Price</th>
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
                allowClear: true
            });
            $('.dob').select2({
                placeholder:"Select Elder/Younger",
                width: '100%',
                allowClear: true
            });
            $('.state').select2({
                placeholder:"Select State",
                width: '100%',
                allowClear: true
            });

            var dl_issue_date;
            var dl_expiry_date;
            var table=  $('#user-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{route('user.fullz.ssn.dl')}}",
                    data: function (d) {
                        if ($('#dl_issue_date').is(":checked")) {
                             dl_issue_date = 1;
                        }
                        else{
                            dl_issue_date = 0;
                        }

                        if ($('#dl_expiry_date').is(":checked")) {
                            dl_expiry_date = 1;
                        }
                        else{
                            dl_expiry_date = 0;
                        }
                        d.price = $('.price').val();
                        d.dob = $('.dob').val();
                        d.state =  $('.state').val();
                        d.dl_issue_date  =  dl_issue_date;
                        d.dl_expiry_date = dl_expiry_date;
                    }
                },
                responsive: false,
                "lengthMenu": [ [10,25,50,500,1000, -1], [10,25,50,500,1000, "All"] ],
                dom: 'lfrtip',
                ordering: true,
                "order": [[ 3, "desc" ]],
                buttons: [
                    'copy', 'excel','csv', 'pdf'
                ],
                columns: [
                    { data: 'first_name', name: 'first_name',orderable:false },
                    { data: 'dob', name: 'dob',orderable:false },
                    { data: 'state', name: 'state' },
                    { data: 'city', name: 'city' },
                    {data: 'ssn', name: 'ssn'},
                    {data: 'ssn_dl', name: 'ssn_dl'},
                    { data: 'dl_issue', name: 'dl_issue' },
                    { data: 'dl_expiry', name: 'dl_expiry' },
                    { data: 'price', name: 'price' },
                    {data: 'action', name: 'action', width:'10%',orderable:false},
                ]
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
            $("#dl_issue_date").change(function(){
                table.draw();
            });
            $("#dl_expiry_date").change(function(){
                table.draw();
            });
            $("#refresh").click(function(){
                $('.state').val('');
                $('.state').empty();

                $(".price").empty();
                $(".dob").empty();

                table.draw();
            });

        });
        function add_to_cart(id, type) {
            $.ajax({
                type: 'GET',
                url: "{{route('add.to.cart')}}",
                data: {
                    id : id,
                    type:"ssn+dl",
                },
                success: function (response) {
                    if (response !== '') {
                        $('.cart-item-container').append("<span class=\"badge badge-success side-badge cart-item\">" + response + "</span>")
                    }
                    if(type == 'Buy'){
                        window.location.href = "{{route('cart')}}";
                    }
                },
                error: function (data) {
                    console.log('error');
                }
            });
        }

    </script>
@endpush

