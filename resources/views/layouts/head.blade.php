		<!-- Title -->
		<title>Fullz Store - {{Auth::user()->user_type == 1 ? "Admin Panel" : "Dashboard"}}</title>

		<!--Favicon -->
		<link rel="icon" href="{{URL::asset('assets/images/img/favicon.png')}}" type="image/x-icon"/>

		<!--Bootstrap css -->
		<link href="{{URL::asset('assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

		<!-- Style css -->
		<link href="{{URL::asset('assets/css/style.css')}}" rel="stylesheet" />
{{--		<link href="{{URL::asset('assets/css/dark.css')}}" rel="stylesheet" />--}}
		<link href="{{URL::asset('assets/css/skin-modes.css')}}" rel="stylesheet" />

		<!-- Animate css -->
		<link href="{{URL::asset('assets/css/animated.css')}}" rel="stylesheet" />

		<!--Sidemenu css -->
       <link href="{{URL::asset('assets/css/sidemenu.css')}}" rel="stylesheet">

		<!-- P-scroll bar css-->
		<link href="{{URL::asset('assets/plugins/p-scrollbar/p-scrollbar.css')}}" rel="stylesheet" />

		<!---Icons css-->
		<link href="{{URL::asset('assets/css/icons.css')}}" rel="stylesheet" />
		@yield('css')

		<!-- Simplebar css -->
		<link rel="stylesheet" href="{{URL::asset('assets/plugins/simplebar/css/simplebar.css')}}">

	    <!-- Color Skin css -->
		<link id="theme" href="{{URL::asset('assets/colors/color1.css')}}" rel="stylesheet" type="text/css"/>

        <link href="{{URL::asset('assets/plugins/notify/css/jquery.growl.css')}}" rel="stylesheet" />
        <link href="{{URL::asset('assets/plugins/notify/css/notifIt.css')}}" rel="stylesheet" />

        <style>
            .form-control {
                color: #6b6f80 !important;
            }
        </style>
