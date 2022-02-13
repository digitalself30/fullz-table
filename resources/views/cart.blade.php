@extends('layouts.master')
@section('css')
@endsection
@section('page-header')
    <!--Page header-->
    <div class="page-header">
        <div class="page-leftheader">
            <h4 class="page-title mb-0">Cart</h4>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{route('home')}}"><i class="fe fe-layers mr-2 fs-14"></i>Dashboard</a></li>
                <li class="breadcrumb-item"><a href="#">Cart</a></li>
            </ol>
        </div>
    </div>
    <!--End Page header-->
@endsection
@section('content')
    <!-- Row-->
    @php
        $wallet_balance = $wallet->balance ?? 0.00;
        @endphp
    <div class="row">
        <div class="col-md-12">
            <div class="card overflow-hidden">
                <div class="card-body">
                    <h2 class="font-weight-bold">Cart Item</h2>
                    <div class="table-responsive push">
                        <table class="table table-bordered table-hover text-nowrap">
                            <tr class=" ">
                                <th class="text-center " style="width: 1%"></th>
                                <th class="border-bottom-0">First name</th>
                                <th class="border-bottom-0">Date Of Birth</th>
                                <th class="border-bottom-0">State</th>
                                <th class="border-bottom-0">City</th>
                                <th class="border-bottom-0">Price</th>
                                <th class="border-bottom-0">Action</th>
                            </tr>

                            @php $i =0 @endphp

                            @foreach(Cart::content() AS  $item)
                                @php $table = \App\Models\Fullz::find($item->id); @endphp

                                <tr>
                                    <td class="text-left">{{++$i}}</td>
                                    <td class="text-left">{{$table->first_name}}</td>
                                    <td class="text-left">{{\Carbon\Carbon::parse($table->dob)->format('m-d-Y')}}</td>
                                    <td class="text-left">{{$table->state}}</td>
                                    <td class="text-left">{{$table->city}}</td>
                                    <td class="text-left">{{$table->price}}</td>
                                    <td class="text-left"><a href="{{route('cart.item.remove', $item->rowId)}}"><i class="fa fa-trash" style="font-size: 20px"></i></a></td>
                                </tr>
                                @endforeach


                            <tr>
                                <td colspan="6" class="font-weight-semibold text-right">Subtotal</td>
                                <td class="text-right">${{Cart::subtotal()}}</td>
                            </tr>
                            <tr>
                                <td colspan="6" class="font-weight-semibold text-right">Wallet Amount</td>
                                <td class="text-right">${{$wallet_balance ?? 0.00}}</td>
                            </tr>
                            <tr>
                                <td colspan="6" class="font-weight-bold text-uppercase text-right h4 mb-0">Current Balance</td>
                                <td class="font-weight-bold text-right h4 mb-0">${{$wallet_balance  - Cart::subtotal()}}</td>
                            </tr>
                            @if($wallet_balance - Cart::subtotal() < 0)
                                <div class="alert alert-danger">You dont have sufficient funds!</div>
                            @endif
                            <tr>
                                <td colspan="7" class="text-right">
                                    @if($wallet_balance - Cart::subtotal() > 0 && Cart::count() > 0)
                                        <a href="{{route('buy.now')}}" class="btn btn-primary"><i class="si si-wallet"></i> Pay Now</a>
                                    @endif
                                    <a class="btn btn-danger" href="{{route('cart.empty')}}" ><i class="si si-paper-plane"></i> Cart Empty</a>
                                    <a class="btn btn-info" href="{{route('add.funds')}}" ><i class="fa fa-money"></i> Add Funds</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <p class="text-muted text-center">Thank you very much for doing business with us. We look forward to working with you again!</p>
                </div>
            </div>
        </div>
    </div>
    <!-- End row-->

    </div>
    </div><!-- end app-content-->
    </div>
@endsection
@section('js')
@endsection
