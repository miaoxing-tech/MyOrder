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

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default" data-toggle="modal" data-target="#addUserModal" id="showAddBtn">添加用户</button>
					<button type="button" class="btn btn-warning btn-default" data-toggle="modal" data-target="#editUserModal" id="showEditBtn">修改用户</button>
					<button type="button" class="btn btn-danger btn-default">删除用户</button>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">用户列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="user-table">
								<thead>
									<tr>
										<th></th>
										<th>ID</th>
										<th>用户名</th>
										<th>手机号</th>
										<th>地址</th>
										<th>微信</th>
										<th>等级</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 添加用户 -->
	<div class="modal fade" data-backdrop="static" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addUserForm">
						<div class="form-group">
							<label>用户名</label> <input type="text" class="form-control" name="username">
							<p class="help-block">这里填写用户的真实姓名</p>
						</div>
						<div class="form-group">
							<label>手机号</label> <input type="text" class="form-control" name="cellphone">
							<p class="help-block">这里填写用户的手机号</p>
						</div>
						<div class="form-group">
							<label>微信号</label> <input type="text" class="form-control" name="wechat">
							<p class="help-block">这里填写用户的微信号</p>
						</div>
						<div class="form-group">
							<label>地址</label>
							<textarea class="form-control" rows="3" name="address"></textarea>
							<p class="help-block">这里填写用户的收货地址</p>
						</div>
						<div class="form-group">
                                            <label>等级</label>
                                            <select class="form-control" name="level">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="addUserBtn">保存</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 修改用户 -->
	<div class="modal fade" data-backdrop="static" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改用户</h4>
				</div>
				<div class="modal-body">
					<form role="form">
						<div class="form-group">
							<label>用户名</label> <input class="form-control">
							<p class="help-block">这里填写用户的真实姓名</p>
						</div>
						<div class="form-group">
							<label>手机号</label> <input class="form-control">
							<p class="help-block">这里填写用户的手机号</p>
						</div>
						<div class="form-group">
							<label>微信号</label> <input class="form-control">
							<p class="help-block">这里填写用户的微信号</p>
						</div>
						<div class="form-group">
							<label>地址</label>
							<textarea class="form-control" rows="3"></textarea>
							<p class="help-block">这里填写用户的收货地址</p>
						</div>
						<div class="form-group">
                                            <label>等级</label>
                                            <select class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="editUserBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>