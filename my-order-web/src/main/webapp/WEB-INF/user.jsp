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
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- jQuery -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>
<!-- Custom Theme JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript">
	$(document).ready(function() {
		$('#user-table').DataTable({
			"destroy" : true, //销毁表格对象
			"searching" : false,//禁用搜索（搜索框）
			"lengthChange" : true,
			"paging" : true,//开启表格分页
			"bProcessing" : true,
			"bServerSide" : true,
			"bAutoWidth" : false,
			"deferRender" : true,//延迟渲染
			"iDisplayLength" : 10,
			"iDisplayStart" : 0,

			"select" : {
				style : 'os',
				selector : 'td:first-child'
			},
			"ordering" : false,//全局禁用排序
			"ajax" : { //ajax方式向后台发送请求
				"type" : "GET",
				"url" : "getList",
				"data" : {

				},//传递的数据
				"dataType" : "json"
			},
			"columns" : [//对接收到的json格式数据进行处理，data为json中对应的key
			{
				"id" : "id"
			}, {
				"username" : ""
			}, {
				"cellphone" : "id"
			}, {
				"address" : "id"
			},

			]
		});
	});
</script>

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
		<div class="nav navbar-top-links navbar-right"
			style="margin-top: 11px; margin-right: 20px">
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
					<li><a href="tables.html"><i class="fa fa-user fa-fw"></i>
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
					<button type="button" class="btn btn-primary btn-sm">添加用户</button>
					<button type="button" class="btn btn-primary btn-sm">修改用户</button>
					<button type="button" class="btn btn-primary btn-sm">删除用户</button>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">用户列表</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="user-table">
								<thead>
									<tr>
										<th>ID</th>
										<th>用户名</th>
										<th>手机号</th>
										<th>地址</th>
										<th>微信</th>
										<th>等级</th>
									</tr>
								</thead>
							</table>
							<!-- /.table-responsive -->

						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>

		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->



</body>
</html>