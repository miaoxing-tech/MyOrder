<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/note.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row" style="padding-top: 15px; padding-bottom: 15px">
				<div class="col-lg-12">
					<button type="button" class="btn btn-success btn-default"
						data-toggle="modal" data-target="#addNoteModal" id="showAddBtn">添加备忘录</button>
					<button type="button" class="btn btn-warning btn-default"
						data-toggle="modal" data-target="#editNoteModal" id="showEditBtn">修改备忘录</button>
					<button type="button" class="btn btn-danger btn-default" id="deleteBtn">删除备忘录</button>
					<label style="float: right"><input type="search"
						class="form-control input-default" placeholder="关键字搜索"
						id="searchIn"></label>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">备忘录列表</div>
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover"
								id="note-table">
								<thead>
									<tr>
										<th width="5%"></th>
										<th width="5%">ID</th>
										<th width="80%">内容</th>
										<th width="10%">创建时间</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 添加备忘录 -->
	<div class="modal fade" data-backdrop="static" id="addNoteModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加备忘录</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="addNoteForm">
						<div class="form-group">
							<label>地址</label>
							<textarea class="form-control" rows="10" name="content"></textarea>
							<p class="help-block">这里填写备忘录的内容</p>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="addNoteBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改备忘录 -->
	<div class="modal fade" data-backdrop="static" id="editNoteModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改备忘录</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="editNoteForm">
						<div class="form-group">
							<label>地址</label>
							<textarea class="form-control" rows="10" name="content"></textarea>
							<p class="help-block">这里填写备忘录的内容</p>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="editNoteBtn">保存</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>