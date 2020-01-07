<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>SIMKERJA - TASPEN</title>

	<!-- favicon -->
	<link rel="icon" href="{{asset('assets/images/taspen4.png')}}" type="image/x-icon"/>

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/global_assets/css/icons/icomoon/styles.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless//css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless//css/bootstrap_limitless.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless//css/layout.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless//css/components.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless//css/colors.min.css')}}" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script src="{{asset('limitless/global_assets/js/main/jquery.min.js')}}"></script>
	<script src="{{asset('limitless/global_assets/js/main/bootstrap.bundle.min.js')}}"></script>
	<script src="{{asset('limitless/global_assets/js/plugins/loaders/blockui.min.js')}}"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script src="{{asset('limitless/js/app.js')}}"></script>
	<script>
			$(document).ready(function(){
			  setTimeout('$(".alert").fadeOut()',4000);
			});
		  </script>
	<!-- /theme JS files -->

</head>

<body>

	<!-- Main navbar -->
	{{-- <div class="navbar navbar-expand-md navbar-dark">
		<div class="navbar-brand">
			<a href="index.html" class="d-inline-block">
				<img src="{{asset('limitless/global_assets/images/logo_light.png')}}" alt="">
			</a>
		</div>

		<div class="d-md-none">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
				<i class="icon-tree5"></i>
			</button>
		</div>

	</div> --}}
	<!-- /main navbar -->


	<!-- Page content -->
	<div class="page-content">

		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Content area -->
			<div class="content d-flex justify-content-center align-items-center">
				<div class="row">

				</div>
				<!-- Login form -->
				<form class="login-form" action="{{route('login')}}" method="POST">

						@if(Session::has('message'))
						<div class="alert alert-{{Session::get('panel')}} border-0 alert-dismissible">
						  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						  <span class="font-weight-semibold">{{Session::get('message')}}</span>
						  {{-- Success alert preview. This alert is dismissable. --}}
						</div>
					  @endif
					{{csrf_field()}}
					<div class="card mb-0">
						<div class="card-body">
							<div class="text-center mb-3">
								<div class="row align-items-center">
									<div class="col-md-6">
										<img src="{{asset('assets/images/bumn.png')}}" width="70">
									</div>
									<div class="col-md-6">
										<img src="{{asset('assets/images/taspen4.png')}}" width="70">
									</div>
								</div>
								<hr>
								<h5 class="mb-0">Aplikasi Simkerja Pekerja PT Taspen Persero</h5>
								<span class="d-block text-muted">Enter your credential below</span>
							</div>

							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="text" class="form-control" placeholder="Username/NIK" name="username" value="{{old('username')}}">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>

							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="Password" name="password">
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Sign in <i class="icon-circle-right2 ml-2"></i></button>
							</div>

							<div class="text-center">
								<a href="{{ route('password.request') }}">Forgot password?</a>
							</div>
						</div>
					</div>
				</form>
				<!-- /login form -->

			</div>
			<!-- /content area -->
		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->

</body>
</html>
