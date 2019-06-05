<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>backstageMS</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="../js/jquery-1.9.0.min.js"></script>
<script src="../js/bootstrap.js"></script>
</head>
<body>
	<div class="container-fluid" id="container">
		<div id="header">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#bs-navbar" type="button" aria-controls="bs-navbar"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="navbar-brand">
					<span class="glyphicon glyphicon-book"></span>
				</div>
			</div>
			<nav id="bs-navbar" class="collapse navbar-collapse navbar-inverse"
				role="navigation">
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<ul class="nav navbar-nav">
				<li><a href="boot.jsp">商城首页</a></li>
				<li><a href="">商品详情</a></li>
				<li><a href="">缺货提醒</a></li>
				<li><a href="">添加管理员</a></li>
				<li><a href=""></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li id="flag"><h5 style="color: gray;">
						<%
							if (session.getAttribute("role") != null) {
								String role = null;
								String name = null;
								name = (String) session.getAttribute("username");
								role = (String) session.getAttribute("role");
								out.println(name + "(" + role + ")");
							} else {
								out.print("游客");
							}
						%>
					</h5></li>
			</ul>
			</nav>
			<div class="embed-responsive embed-responsive-16by9">
				<iframe class="embed-responsive-item" src="default.jsp" id="Frame" name="Frame"></iframe>
			</div>
		</div>
	</div>
</body>
</html>