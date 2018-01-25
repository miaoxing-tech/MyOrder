<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/tuan.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default"
						data-toggle="modal" data-target="#addTuanModal" id="showAddBtn">添加团购</button>
					<button type="button" class="btn btn-warning btn-default"
						data-toggle="modal" data-target="#editTuanModal" id="showEditBtn">修改团购</button>
					<button type="button" class="btn btn-danger btn-default"
						id="deleteBtn">删除团购</button>
					<label style="float: right"><input type="search"
						class="form-control input-default" placeholder="关键字搜索"
						id="searchIn"></label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">团购列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="tuan-table">
								<thead>
									<tr>
										<th></th>
										<th>ID</th>
										<th>团购名</th>
										<th>商品</th>
										<th>品牌</th>
										<th>单价</th>
										<th>备注</th>
										<th>操作</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 添加团购 -->
	<div class="modal fade" data-backdrop="static" id="addTuanModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加团购</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addTuanForm">
						<div class="form-group">
							<label>团购名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写团购名称</p>
						</div>
						<div class="form-group">
							<label>商品</label> <input type="text" class="form-control"
								name="product">
							<p class="help-block">这里填写商品名称</p>
						</div>
						<div class="form-group">
							<label>品牌</label> <input type="text" class="form-control"
								name="brand">
							<p class="help-block">这里填写商品品牌</p>
						</div>
						<div class="form-group">
							<label>单价</label> <input type="text" class="form-control"
								name="price">
							<p class="help-block">这里填写商品单价</p>
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
					<button type="button" class="btn btn-primary" id="addTuanBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改团购 -->
	<div class="modal fade" data-backdrop="static" id="editTuanModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改团购</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="editTuanForm">
						<div class="form-group">
							<label>ID</label> <input class="form-control" name="id" readonly>
							<p class="help-block">此项不可修改</p>
						</div>
						<div class="form-group">
							<label>团购名</label> <input type="text" class="form-control"
								name="name">
							<p class="help-block">这里填写团购名称</p>
						</div>
						<div class="form-group">
							<label>商品</label> <input type="text" class="form-control"
								name="product">
							<p class="help-block">这里填写商品名称</p>
						</div>
						<div class="form-group">
							<label>品牌</label> <input type="text" class="form-control"
								name="brand">
							<p class="help-block">这里填写商品品牌</p>
						</div>
						<div class="form-group">
							<label>单价</label> <input type="text" class="form-control"
								name="price">
							<p class="help-block">这里填写商品单价</p>
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
					<button type="button" class="btn btn-primary" id="editTuanBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>