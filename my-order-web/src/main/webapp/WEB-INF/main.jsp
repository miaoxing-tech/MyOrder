<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/user.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp" %>

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