<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<!-- Meta data -->
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta content="Admin Panel HTML template" name="description">
		<meta content="Private Limited" name="author">
		<meta name="keywords" content=""/>
		@include('layouts.custom-head')
	</head>
	<body class="h-100vh page-style1 dark-mode">
		@yield('content')
		@include('layouts.custom-footer-scripts')
	</body>
</html>
