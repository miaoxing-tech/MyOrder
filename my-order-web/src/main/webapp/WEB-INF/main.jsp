<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>MAIN</title>

<!-- Bootstrap Core CSS -->
<link
	href="<%= request.getContextPath() %>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%= request.getContextPath() %>/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<%= request.getContextPath() %>/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="<%= request.getContextPath() %>/resources/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%= request.getContextPath() %>/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- jQuery -->
<script
	src="<%= request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<%= request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script
	src="<%= request.getContextPath() %>/resources/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script
	src="<%= request.getContextPath() %>/resources/vendor/raphael/raphael.min.js"></script>
<script
	src="<%= request.getContextPath() %>/resources/vendor/morrisjs/morris.min.js"></script>
<script
	src="<%= request.getContextPath() %>/resources/data/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script
	src="<%= request.getContextPath() %>/resources/dist/js/sb-admin-2.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">欢迎你，郑琪</a>
		</div>
		<!-- /.navbar-header -->
		<div class="nav navbar-top-links navbar-right" style="margin-top: 11px; margin-right: 20px">
			<li class="dropdown-user">
				<button type="button" class="btn btn-primary btn-sm">
					创建新的订单</button>
			</li>
			<!-- /.dropdown -->
		</div>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">

					<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
							主页</a></li>
					<li><a href="#"><i class="fa fa-table fa-fw"></i> 订单<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="flot.html">全部订单</a></li>
							<li><a href="morris.html">行程</a></li>
							<li><a href="flot.html">团购</a></li>
							<li><a href="morris.html">秒杀</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="<%= request.getContextPath() %>/user/main"><i class="fa fa-user fa-fw"></i>
							用户</a></li>
					<li><a href="forms.html"><i
							class="fa fa-bar-chart-o fa-fw"></i> 统计</a></li>
					<li><a href="forms.html"><i class="fa fa-cog fa-fw"></i>
							设置</a></li>

				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">主页</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-user fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">256</div>
									<div>我的客户</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">查看详细</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-plane fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>我的行程</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">查看详细</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-truck fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>我的团购</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">查看详细</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-red">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-shopping-cart fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">13</div>
									<div>我的秒杀</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">查看详细</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-8">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bar-chart-o fa-fw"></i> 最近半年收益

						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="morris-area-chart"></div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->

					<!-- /.panel -->
				</div>
				<!-- /.col-lg-8 -->
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> 我的备忘录
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="list-group">
								<a href="#" class="list-group-item"> <i
									class="fa fa-comment fa-fw"></i> New Comment <span
									class="pull-right text-muted small"><em>4 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-twitter fa-fw"></i> 3 New Followers <span
									class="pull-right text-muted small"><em>12 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-envelope fa-fw"></i> Message Sent <span
									class="pull-right text-muted small"><em>27 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-tasks fa-fw"></i> New Task <span
									class="pull-right text-muted small"><em>43 minutes
											ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-upload fa-fw"></i> Server Rebooted <span
									class="pull-right text-muted small"><em>11:32 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-bolt fa-fw"></i> Server Crashed! <span
									class="pull-right text-muted small"><em>11:13 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-warning fa-fw"></i> Server Not Responding <span
									class="pull-right text-muted small"><em>10:57 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-shopping-cart fa-fw"></i> New Order Placed <span
									class="pull-right text-muted small"><em>9:49 AM</em> </span>
								</a> <a href="#" class="list-group-item"> <i
									class="fa fa-money fa-fw"></i> Payment Received <span
									class="pull-right text-muted small"><em>Yesterday</em> </span>
								</a>
							</div>
							<!-- /.list-group -->
							<a href="#" class="btn btn-default btn-block">View All Alerts</a>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->

					<!-- /.panel -->

					<!-- /.panel-heading -->

					<!-- /.panel-body -->

					<!-- /.panel-footer -->
				</div>
				<!-- /.panel .chat-panel -->
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->



</body>
</html>