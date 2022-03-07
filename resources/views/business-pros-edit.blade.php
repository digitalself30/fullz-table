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
            <h4 class="page-title mb-0">Business Pros  Edit</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layout mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page"><a href="#">Business Pros Edit</a></li>
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
                    <div class="card-title">Business Pros Edit</div>
                </div>
                <div class="card-body">
                    <form id="myForm" action="{{route('update.business.pro')}}" method="POST">
                        @csrf
                        <div class="card-body">
                            @foreach($business_pros AS $i=> $item)
                                <div class="row">
                                    <input type="hidden" name="ids[]" value="{{$item->id}}">

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputEmail1" class="form-label">Business name</label>
                                        <input type="text" class="form-control" id="company_name" value="{{$item->company_name}}" name="company_name[]" placeholder="Enter Business name">
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputEmail1" class="form-label">EIN</label>
                                        <input type="text" class="form-control" id="ein" value="{{$item->ein}}" name="ein[]" placeholder="Enter EIN">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Creation Date</label>
                                        <input type="date" class="form-control" id="creation_date" value="{{$item->creation_date}}" name="creation_date[]" placeholder="Creation Date">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Owner</label>
                                        <input type="text" class="form-control" id="owner" value="{{$item->owner}}" name="owner[]" placeholder="Owner">
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">State</label>
                                        <input type="text" class="form-control" id="state" value="{{$item->state}}" name="state[]" placeholder="State">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">City</label>
                                        <input type="text" class="form-control" id="city" value="{{$item->city}}" name="city[]" placeholder="City">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Article of organization</label>
                                        <input type="text" class="form-control" id="article_of_organization" value="{{$item->article_of_organization}}" name="article_of_organization[]" placeholder="Article Of Organization">
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label for="exampleInputPassword1" class="form-label">Annual Report</label>
                                        <input type="text" class="form-control" id="annual_report" value="{{$item->annual_report}}" name="annual_report[]" placeholder="Enter Annual Report">
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



