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
                                                <div class="text-center title-style mb-6">
                                                    <h1 class="mb-2">Login</h1>
                                                    <hr>
                                                    <p class="text-muted">Sign In to your account</p>
                                                </div>
                                                <form action="{{ route('login') }}" method="POST">
                                                @csrf
                                                <hr class="divider my-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="fe fe-user"></i>
                                                        </div>
                                                    </div>
                                                    <input type="text" class="form-control  @error('email') is-invalid @enderror" placeholder="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
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
                                                    <input type="password" class="form-control @error('password') is-invalid @enderror" placeholder="password" name="password" required autocomplete="current-password" >
                                                    @error('password')
                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <button type="submit" class="btn  btn-primary btn-block px-4">Login</button>
                                                    </div>
                                                   @if (Route::has('password.request'))
                                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                                        {{ __('Forgot Your Password?') }}
                                                    </a>
                                                @endif
                                                </div>
                                                </form>
                                                <div class="text-center pt-4">
                                                    <div class="font-weight-normal fs-16">You Don't have an account <a class="btn-link font-weight-normal" href="{{route('register')}}">Register Here</a></div>
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
                                                <img style="height: 100%" src="{{URL::asset('assets/login/login.jpg')}}" alt="img">
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
