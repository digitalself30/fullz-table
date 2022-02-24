@extends('layouts.master3')
@section('css')
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
                                                <h1 class="mb-2">Forgot Password</h1>
                                                @if (session('status'))
                                                    <div class="alert alert-success" role="alert">
                                                        {{ session('status') }}
                                                    </div>
                                                @endif
                                                <form method="POST" action="{{ route('password.email') }}">
                                                    @csrf
                                                    <hr class="divider my-6">
                                                    <div class="input-group mb-4">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="fe fe-mail"></i>
                                                            </div>
                                                        </div>
                                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                                        @error('email')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" />
                                                            <span class="custom-control-label"><a href="{{url('/' . $page='terms')}}">Agree the terms and policy</a></span>
                                                        </label>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <button type="submit" class="btn btn-primary btn-block px-4"><i class="fe fe-send"></i> Send</button>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                        <div class="card text-white bg-white d-md-down-none page-content mt-0">
                                            <div class="text-center justify-content-center page-single-content">
                                                <div class="box">
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
@endsection
@section('js')
@endsection
