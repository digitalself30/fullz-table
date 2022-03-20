<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<!-- Meta data -->
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta content="Fullz Store" name="description">
		<meta name="keywords" content=""/>
		@include('layouts.custom-head')
{{--        {!! RecaptchaV3::initJs() !!}--}}
	</head>
	<body class="h-100vh page-style1 dark-mode">
		@yield('content')
		@include('layouts.custom-footer-scripts')
        @stack('scripts')
	</body>
</html>
