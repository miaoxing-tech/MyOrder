<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/trip.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default"
						data-toggle="modal" data-target="#addTripModal" id="showAddBtn">添加行程</button>
					<button type="button" class="btn btn-warning btn-default"
						data-toggle="modal" data-target="#editTripModal" id="showEditBtn">修改行程</button>
					<button type="button" class="btn btn-danger btn-default"
						id="deleteBtn">删除行程</button>
					<label style="float: right"><input type="search"
						class="form-control input-default" placeholder="关键字搜索"
						id="searchIn"></label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">行程列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="trip-table">
								<thead>
									<tr>
										<th></th>
										<th>ID</th>
										<th>行程名</th>
										<th>目的地</th>
										<th>出发日期</th>
										<th>结束日期</th>
										<th>备注</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 添加行程 -->
	<div class="modal fade" data-backdrop="static" id="addTripModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加行程</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addTripForm">
						<div class="form-group">
							<label>行程名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写行程名称</p>
						</div>
						<div class="form-group">
							<label>目的地</label> <input type="text" class="form-control"
								name="destination">
							<p class="help-block">这里填写目的地</p>
						</div>
						<div class="form-group">
							<label>出发日期</label> <input type="date" class="form-control"
								name="start">
							<p class="help-block">这里填写出发日期</p>
						</div>
						<div class="form-group">
							<label>结束日期</label> <input type="date" class="form-control"
								name="end">
							<p class="help-block">这里填写结束日期</p>
						</div>
						<div class="form-group">
							<label>备注</label>
							<textarea class="form-control" rows="3" name="comment"></textarea>
							<p class="help-block">这里填写备注</p>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="addTripBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改行程 -->
	<div class="modal fade" data-backdrop="static" id="editTripModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改行程</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="editTripForm">
						<div class="form-group">
							<label>ID</label> <input class="form-control" name="id" readonly>
							<p class="help-block">此项不可修改</p>
						</div>
						<div class="form-group">
							<label>行程名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写行程名称</p>
						</div>
						<div class="form-group">
							<label>目的地</label> <input type="text" class="form-control"
								name="destination">
							<p class="help-block">这里填写目的地</p>
						</div>
						<div class="form-group">
							<label>出发日期</label> <input type="text" class="form-control"
								name="start">
							<p class="help-block">这里填写出发日期</p>
						</div>
						<div class="form-group">
							<label>结束日期</label> <input type="text" class="form-control"
								name="end">
							<p class="help-block">这里填写结束日期</p>
						</div>
						<div class="form-group">
							<label>备注</label>
							<textarea class="form-control" rows="3" name="comment"></textarea>
							<p class="help-block">这里填写备注</p>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="editTripBtn">保存</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>