<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name='csrf-token' content="{{csrf_token()}}">
	<title>Taspen - {{$page_menu}}</title>

	<!-- favicon -->
	<link rel="icon" href="{{asset('assets/images/taspen4.png')}}" type="image/x-icon"/>
	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/global_assets/css/icons/icomoon/styles.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/css/bootstrap_limitless.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/css/layout.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/css/components.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/css/colors.min.css')}}" rel="stylesheet" type="text/css">
	<link href="{{asset('limitless/global_assets/css/icons/fontawesome/styles.min.css')}}" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script src="{{asset('limitless/global_assets/js/main/jquery.min.js')}}"></script>
	<script src="{{asset('limitless/global_assets/js/main/bootstrap.bundle.min.js')}}"></script>
	<script src="{{asset('limitless/global_assets/js/plugins/loaders/blockui.min.js')}}"></script>
	<!-- /core JS files -->

	@yield('js_header')
	{{-- progress --}}
	<link href="{{asset('assets/css/progress.css')}}" rel="stylesheet" type="text/css">
	<!-- Theme JS files -->
	<script src="{{asset('limitless/js/app.js')}}"></script>
	<!-- /theme JS files -->

</head>
<body>
	<div id="spinner" style="display:none;">
		<img alt="Loading" class="img_loader" src="{{asset('assets/loader/loader7.gif') }}" />
	</div>
	<!-- Main navbar -->
	<div class="navbar navbar-expand-md navbar-dark">
		<div class="navbar-brand">
			<a href="../full/index.html" class="d-inline-block">
				<img src="{{asset('assets/images/taspen3.png')}}" alt="">
			</a>
		</div>
		<div class="d-md-none">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
				<i class="icon-tree5"></i>
			</button>
			<button class="navbar-toggler sidebar-mobile-main-toggle" type="button">
				<i class="icon-paragraph-justify3"></i>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbar-mobile">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a href="#" class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
						<i class="icon-paragraph-justify3"></i>
					</a>
				</li>
			</ul>

			<ul class="navbar-nav ml-auto">


				<li class="nav-item dropdown dropdown-user">
					<a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
						<img src="{{url('limitless/global_assets/images/image.png')}}" class="rounded-circle mr-2" height="34" alt="">
						<span>{{$user->name}}</span>
					</a>

					<div class="dropdown-menu dropdown-menu-right">
						<a href="{{url('logout')}}" class="dropdown-item"><i class="icon-switch2"></i> Logout</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->

	<!-- Page content -->
	<div class="page-content">
		<!-- Main sidebar -->
		<div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">

			<!-- Sidebar mobile toggler -->
			<div class="sidebar-mobile-toggler text-center">
				<a href="#" class="sidebar-mobile-main-toggle">
					<i class="icon-arrow-left8"></i>
				</a>
				Navigation
				<a href="#" class="sidebar-mobile-expand">
					<i class="icon-screen-full"></i>
					<i class="icon-screen-normal"></i>
				</a>
			</div>
			<!-- /sidebar mobile toggler -->


			<!-- Sidebar content -->
			<div class="sidebar-content">

				<!-- User menu -->
				<div class="sidebar-user">
					<div class="card-body">
						<div class="media">
							<div class="mr-3">
								<a href="#"><img src="{{url('limitless/global_assets/images/image.png')}}" width="38" height="38" class="rounded-circle" alt=""></a>
							</div>

							<div class="media-body">
								<div class="media-title font-weight-semibold">{{Auth::user()->name}}</div>
								<div class="font-size-xs opacity-50">
									Administrator
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /user menu -->


				<!-- Main navigation -->
				<div class="card card-sidebar-mobile">
					<ul class="nav nav-sidebar" data-nav-type="accordion">

						<!-- Main -->
						<li class="nav-item-header"><div class="text-uppercase font-size-xs line-height-xs">Main Navigation</div> <i class="icon-menu" title="Main"></i></li>
						<li class="nav-item">
							<a href="{{url($user->role.'/dashboard')}}" class="nav-link">
								<i class="icon-home4"></i>
								<span>Dashboard</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="{{url('logout')}}" class="nav-link">
								<i class="text text-danger icon-exit"></i>
								<span class="text text-danger">Logout</span>
							</a>
						</li>
						<!-- /main -->
					</ul>
				</div>
				<!-- /main navigation -->

			</div>
			<!-- /sidebar content -->

		</div>
		<!-- /main sidebar -->

		<div class="content-wrapper">
			@yield('content')
		</div>
	</div>
	@yield('js_footer')
	<script>
	$(document).ready(function () {
		$("#spinner").hide();
		setTimeout('$(".alert").fadeOut()',5000);
		const loc = window.location.href;
		// console.log(loc);
		$(".nav a[href='"+loc+"']").parent('li').addClass('active');
		$(".nav a[href='"+loc+"']").closest('ul').parent('li').addClass('active');
		$(".nav a[href='"+loc+"']").addClass('active');
		$(".nav a[href='"+loc+"']").closest('ul').css('display','block');
		$("a[href*=http] :not([download])").attr("onclick","go_tohref()");
	});
	function go_tohref() {
		$('#spinner').show();
		// document.getElementById("PreLoaderBar").style.display = "block";
	}
	</script>
</div>
<!-- /page content -->

</body>
</html>
