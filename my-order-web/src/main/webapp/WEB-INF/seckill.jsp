<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/seckill.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default"
						data-toggle="modal" data-target="#addSeckillModal" id="showAddBtn">添加秒杀</button>
					<button type="button" class="btn btn-warning btn-default"
						data-toggle="modal" data-target="#editSeckillModal" id="showEditBtn">修改秒杀</button>
					<button type="button" class="btn btn-danger btn-default"
						id="deleteBtn">删除秒杀</button>
					<label style="float: right"><input type="search"
						class="form-control input-default" placeholder="关键字搜索"
						id="searchIn"></label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">秒杀列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-sSeckilled table-bordered table-hover"
								id="seckill-table">
								<thead>
									<tr>
										<th></th>
										<th>ID</th>
										<th>秒杀名</th>
										<th>开始时间</th>
										<th>结束时间</th>
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
	<!-- 添加秒杀 -->
	<div class="modal fade" data-backdrop="static" id="addSeckillModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加秒杀</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addSeckillForm">
						<div class="form-group">
							<label>秒杀名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写秒杀名称</p>
						</div>
						<div class="form-group">
							<label>开始时间</label> <input type="datetime-local" class="form-control"
								name="start">
							<p class="help-block">这里填写出发日期</p>
						</div>
						<div class="form-group">
							<label>结束时间</label> <input type="datetime-local" class="form-control"
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
					<button type="button" class="btn btn-primary" id="addSeckillBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改秒杀 -->
	<div class="modal fade" data-backdrop="static" id="editSeckillModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改秒杀</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="editSeckillForm">
						<div class="form-group">
							<label>ID</label> <input class="form-control" name="id" readonly>
							<p class="help-block">此项不可修改</p>
						</div>
						<div class="form-group">
							<label>秒杀名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写秒杀名称</p>
						</div>
						<div class="form-group">
							<label>开始时间</label> <input type="text" class="form-control"
								name="start">
							<p class="help-block">这里填写开始时间</p>
						</div>
						<div class="form-group">
							<label>结束时间</label> <input type="text" class="form-control"
								name="end">
							<p class="help-block">这里填写结束时间</p>
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
					<button type="button" class="btn btn-primary" id="editSeckillBtn">保存</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>