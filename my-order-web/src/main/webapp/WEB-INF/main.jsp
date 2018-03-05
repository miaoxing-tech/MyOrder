<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="common/header.jsp"%>

<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

</head>

<body>

	<div id="wrapper">

		<%@ include file="common/menu.jsp"%>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">主页</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-user fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">${data.userCount}</div>
									<div>我的客户</div>
								</div>
							</div>
						</div>
						<a href="<%=request.getContextPath()%>/user/main">
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
									<div class="huge">${data.tripCount}</div>
									<div>我的行程</div>
								</div>
							</div>
						</div>
						<a href="<%=request.getContextPath()%>/trip/main">
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
									<div class="huge">${data.tuanCount}</div>
									<div>我的团购</div>
								</div>
							</div>
						</div>
						<a href="<%=request.getContextPath()%>/tuan/main">
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
									<div class="huge">${data.seckillCount}</div>
									<div>我的秒杀</div>
								</div>
							</div>
						</div>
						<a href="<%=request.getContextPath()%>/seckill/main">
							<div class="panel-footer">
								<span class="pull-left">查看详细</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> 最近半年收益
                        </div>
                        <div class="panel-body">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-bar-chart"></div>
                            </div>
                        </div>
                    </div>
				</div>
				
				<div class="col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> 我的备忘录
						</div>
						<div class="panel-body">
							<div class="list-group" id="noteList"></div>
							<a href="<%=request.getContextPath()%>/note/main"
								class="btn btn-default btn-block">更多</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>