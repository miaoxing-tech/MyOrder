<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="pragma" content="no-cache">

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
	src="<%=request.getContextPath()%>/resources/vendor/datatables/js/jquery.dataTables.js"></script>
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
            "bStateSave": true,
            "bServerSide": true,
            "lengthMenu": [
                [10, 20, 50, 100, 150, -1],
                [10, 20, 50, 100, 150, "All"]
            ],
            "pageLength": 10,
			"select" : {
				style : 'os',
				selector : 'td:first-child'
			},
			"ajax" : { //ajax方式向后台发送请求
				"type" : "GET",
				"url" : "getList",
				"data" : function (data) {
                    return {};
                },//传递的数据
                "dataSrc": function (res) {
                    if (res.status != 0) {
                        return {};
                    }

                    var addResult = function (result, data) {
                        var array = [data.id, data.username, data.cellphone, data.address, data.wechat, data.level];
                        result.push(array);
                        return result;
                    };

                    var result = [];
                    for (var i = 0, ien = res.data.list.length; i < ien; i++) {
                        result = addResult(result, res.data.list[i]);
                    }
                    return result;
                },
				"dataType" : "json",
                "order": [
                    [1, "asc"]
                ]
			}
		});
	});
</script>

</head>

<body>

	<div id="wrapper">

				<%@ include file="common/menu.jsp" %>


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