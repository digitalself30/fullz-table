@extends('layouts.master3')
@section('css')
    <!-- INTERNAL telephoneinput css-->
    <link rel="stylesheet" href="{{URL::asset('assets/plugins/telephoneinput/telephoneinput.css')}}">
    <style>
        #mobile-number, .intl-tel-input{
            width: 100% !important;
        }
    </style>
@endsection
@section('content')
<div class="page">
            <div class="page-single">
                <div class="p-5">
                    <div class="row">
                        <div class="col mx-auto">
                            <div class="row justify-content-center">
                                <div class="col-lg-9 col-xl-8">
                                    <div class="card-group mb-0">
                                        <div class="card p-4">
                                            <div class="card-body">
                                                <div class="text-center title-style mb-6">
                                                <h1 class="mb-2">Register</h1>
                                                <hr>
                                                <p class="text-muted">Create New Account</p>
                                            </div>
                                            <form method="POST" action="{{ route('register') }}">
                                            @csrf
                                            <hr class="divider my-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="fe fe-user"></i>
                                                    </div>
                                                </div>
                                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" placeholder="Username" value="{{ old('name') }}" required autocomplete="name" autofocus>
                                                 @error('name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="fe fe-mail"></i>
                                                    </div>
                                                </div>
                                                 <input id="email" type="email" placeholder="Email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                                                  @error('email')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                            </div>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="fe fe-lock"></i>
                                                    </div>
                                                </div>
                                                 <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" name="password" required autocomplete="new-password">
                                                 @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>

                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="fe fe-lock"></i>
                                                    </div>
                                                </div>
                                                     <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password" required autocomplete="new-password">
                                            </div>
                                            <div class="form-group mt-4 mb-4">
                                                <div class="captcha">
                                                    <span>{!! captcha_img() !!}</span>
                                                    <button type="button" class="btn btn-danger" class="reload" id="reload">
                                                        ↻
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="form-group mb-4">
                                                <input id="captcha" type="text" class="form-control" placeholder="Enter Captcha" name="captcha">
                                            </div>
                                            @error('captcha')
                                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                                            @enderror

                                            <div class="form-group">
                                                <label class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" />
                                                    <span class="custom-control-label"><a class="modal-effect " data-effect="effect-flip-horizontal" data-toggle="modal" href="#modaldemo100">Agree the terms & regulations</a></span>
                                                </label>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <button type="submit" class="btn  btn-primary btn-block px-4">Create New Account</button>
                                                </div>
                                            </div>
                                        </form>
                                            <div class="text-center pt-4">
                                                <div class="font-weight-normal fs-16">You Already have an account <a class="btn-link font-weight-normal" href="{{route('login')}}">Login Here</a></div>
                                            </div>
                                            </div>
                                        </div>
                                       <div class="card d-md-down-none page-content mt-0">
                                            <div class="text-center justify-content-center page-single-content">
                                                <div class="box">
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                    <div></div>
                                                </div>
                                                <img style="height: 100%" src="{{URL::asset('assets/images/img/login.png')}}" alt="img">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<div class="modal fade show" id="modaldemo100" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Terms & regulations</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Terms & regulations</h4>
                        </div>

                        <div class="card-body">
{{--                            {!!  $content->content !!}--}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>    <!-- Modal -->

@endsection
@section('js')
    <!--INTERNAL telephoneinput js-->
    <script src="{{URL::asset('assets/plugins/telephoneinput/telephoneinput.js')}}"></script>
    <script src="{{URL::asset('assets/plugins/telephoneinput/inttelephoneinput.js')}}"></script>

@endsection
@push('scripts')
    <script type="text/javascript">
        $('#reload').click(function () {
            $.ajax({
                type: 'GET',
                url: '{{route('reload.captcha')}}',
                success: function (data) {
                    $(".captcha span").html(data.captcha);
                }
            });
        });
    </script>
@endpush
