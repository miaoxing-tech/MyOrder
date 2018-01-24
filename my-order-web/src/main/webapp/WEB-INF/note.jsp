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