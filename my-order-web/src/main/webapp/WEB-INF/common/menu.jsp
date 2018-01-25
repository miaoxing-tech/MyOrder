<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">欢迎你，郑琪</a>
	</div>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">

				<li><a href="<%= request.getContextPath() %>/main"><i
						class="fa fa-dashboard fa-fw"></i> 主页</a></li>
				<li><a href="#"><i class="fa fa-table fa-fw"></i> 订单<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="<%= request.getContextPath() %>/order/main">全部订单</a></li>
						<li><a href="<%= request.getContextPath() %>/trip/main">行程</a></li>
						<li><a href="<%= request.getContextPath() %>/tuan/main">团购</a></li>
						<li><a href="<%= request.getContextPath() %>/seckill/main">秒杀</a></li>
					</ul></li>
				<li><a href="<%= request.getContextPath() %>/user/main"><i
						class="fa fa-user fa-fw"></i> 用户</a></li>
				<li><a href="<%= request.getContextPath() %>/statistics/main"><i
						class="fa fa-bar-chart-o fa-fw"></i> 统计</a></li>
				<li><a href="<%= request.getContextPath() %>/note/main"><i
						class="fa fa-list fa-fw"></i> 备忘录</a></li>

			</ul>
		</div>
	</div>
</nav>