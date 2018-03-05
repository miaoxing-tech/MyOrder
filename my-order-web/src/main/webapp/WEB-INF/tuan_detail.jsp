<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>
<script type="text/javascript">
var tuanStr = '${data}';
var tuan = $.parseJSON(tuanStr);</script>

<script src="<%=request.getContextPath()%>/resources/js/tuan_detail.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12" id="tuanInfo">
					
				</div>
			</div>
			<div class="row" style="padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default"
						data-toggle="modal" data-target="#addOrderModal" id="showAddBtn">添加订单</button>
					<button type="button" class="btn btn-warning btn-default"
						data-toggle="modal" data-target="#editOrderModal" id="showEditBtn">修改订单</button>
					<button type="button" class="btn btn-danger btn-default"
						id="deleteBtn">删除订单</button>
					<label style="float: right"><input type="search"
						class="form-control input-default" placeholder="关键字搜索"
						id="searchIn"></label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">订单列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="order-table">
								<thead>
									<tr>
										<th></th>
										<th>ID</th>
										<th>用户名</th>
										<th>商品名称</th>
										<th>商品品牌</th>
										<th>商品备注</th>
										<th>单价</th>
										<th>总价</th>
										<th>数量</th>
										<th>订单状态</th>
										<th>所属行程</th>
										<th>所属秒杀</th>
										<th>所属团购</th>
										<th>创建时间</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 添加订单 -->
	<div class="modal fade" data-backdrop="static" id="addOrderModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加订单</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addOrderForm">
						<div class="form-group">
							<label>用户名</label> <select class="form-control" name="userID">
							</select>
							<p class="help-block">请选择订单所属用户</p>
						</div>
						<div class="form-group">
							<label>商品名称</label> <input type="text" class="form-control"
								name="product">
							<p class="help-block">这里填写商品名称</p>
						</div>
						<div class="form-group">
							<label>商品品牌</label> <input type="text" class="form-control"
								name="brand">
							<p class="help-block">这里填写商品品牌</p>
						</div>
						<div class="form-group">
							<label>商品备注</label>
							<textarea class="form-control" rows="3" name="comment"></textarea>
							<p class="help-block">这里填写商品备注</p>
						</div>
						<div class="form-group">
							<label>单价</label> <input type="text" class="form-control"
								name="price">
							<p class="help-block">这里填写单价，精确到分</p>
						</div>
						<div class="form-group">
							<label>数量</label> <input type="text" class="form-control"
								name="quantity">
							<p class="help-block">这里填写数量</p>
						</div>
						<div class="form-group">
							<label>总价</label> <input type="text" class="form-control"
								name="total">
							<p class="help-block">这里填写总价，精确到分</p>
						</div>
						<div class="form-group">
							<label>所属行程</label> <select class="form-control" name="tripID">
							</select>
							<p class="help-block">请选择订单所属行程</p>
						</div>
						<div class="form-group">
							<label>所属秒杀</label> <select class="form-control" name="seckillID">
							</select>
							<p class="help-block">请选择订单所属秒杀</p>
						</div>
						<div class="form-group">
							<label>所属团购</label> <select class="form-control" name="tuanID">
							</select>
							<p class="help-block">请选择订单所属团购</p>
						</div>
						<div class="form-group">
							<label>订单状态</label> <select class="form-control" name="status">
								<option value="1">未付款</option>
								<option value="2">未发货</option>
								<option value="3">已发货</option>
								<option value="4">已完成</option>
								<option value="0">已关闭</option>
							</select>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="addOrderBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改订单 -->
	<div class="modal fade" data-backdrop="static" id="editOrderModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改订单</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="editOrderForm">
						<div class="form-group">
							<label>ID</label> <input class="form-control" name="id" readonly>
							<p class="help-block">此项不可修改</p>
						</div>
						<div class="form-group">
							<label>用户名</label> <select class="form-control" name="userID">
							</select>
							<p class="help-block">请选择订单所属用户</p>
						</div>
						<div class="form-group">
							<label>商品名称</label> <input type="text" class="form-control"
								name="product">
							<p class="help-block">这里填写商品名称</p>
						</div>
						<div class="form-group">
							<label>商品品牌</label> <input type="text" class="form-control"
								name="brand">
							<p class="help-block">这里填写商品品牌</p>
						</div>
						<div class="form-group">
							<label>商品备注</label>
							<textarea class="form-control" rows="3" name="comment"></textarea>
							<p class="help-block">这里填写商品备注</p>
						</div>
						<div class="form-group">
							<label>单价</label> <input type="text" class="form-control"
								name="price">
							<p class="help-block">这里填写单价，精确到分</p>
						</div>
						<div class="form-group">
							<label>数量</label> <input type="text" class="form-control"
								name="quantity">
							<p class="help-block">这里填写数量</p>
						</div>
						<div class="form-group">
							<label>总价</label> <input type="text" class="form-control"
								name="total">
							<p class="help-block">这里填写总价，精确到分</p>
						</div>
						<div class="form-group">
							<label>所属行程</label> <select class="form-control" name="tripID">
							</select>
							<p class="help-block">请选择订单所属行程</p>
						</div>
						<div class="form-group">
							<label>所属行程</label> <select class="form-control" name="seckillID">
							</select>
							<p class="help-block">请选择订单所属行程</p>
						</div>
						<div class="form-group">
							<label>所属团购</label> <select class="form-control" name="tuanID">
							</select>
							<p class="help-block">请选择订单所属团购</p>
						</div>
						<div class="form-group">
							<label>订单状态</label> <select class="form-control" name="status">
								<option value="1">未付款</option>
								<option value="2">未发货</option>
								<option value="3">已发货</option>
								<option value="4">已完成</option>
								<option value="0">已关闭</option>
							</select>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="editOrderBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>