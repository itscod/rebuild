<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">

		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<meta name="viewport" content="width=device-width, initial-scale=1">

		<meta name="description" content="">

		<meta name="author" content="">

		<link rel="icon" href="../../favicon.ico">


		<title></title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

 		<link href="css/dashboard.css" rel="stylesheet">

		<script src="js/ie-emulation-modes-warning.js"></script>
	
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">

			<div class="container-fluid" style="background-color:#f3f2f0">

				<div class="navbar-header">

					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

				<span class="sr-only">Toggle navigation</span> <span

					class="icon-bar"></span> <span class="icon-bar"></span> <span

					class="icon-bar"></span>

			</button>

					<a class="navbar-brand" href="backstageMS.jsp" style="font-size:20px;color:black;margin-left:20px">后台管理</a>
					&nbsp;&nbsp;
					(<s:property value="#session.userName" />) 
				</div>
				<div class="col-md-5 column" style="text-align:center;font-size:13px;margin-top:15px">
				为各种场合本地水果配送及水果礼盒提供定制服务！</div>

			</div>

		</nav>

 

		<div class="container-fluid" style="margin-top:20px;">

			<div class="row">

				<div class="col-sm-3 col-md-2 sidebar">

					<ul class="nav nav-sidebar">

						<li>

							<a href="boot.jsp">返回商城 </a>

						</li>
						
						<li>

							<a href="boot.jsp">返回商城 </a>

						</li>

						<li>

							<a href="product.jsp">商品详情</a>

						</li>

						<li>

							<a href="#">缺货提醒</a>

						</li>

						<li>

							<a href="admin.jsp">添加管理员</a>

						</li>
						
						<li>

							<a href="logout.action">注销</a>

						</li>

					</ul>


				</div>

				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"></div>

			</div>

		</div>

 

		<!-- Bootstrap core JavaScript

    ================================================== -->

		<!-- Placed at the end of the document so the pages load faster -->

		<script src="js/jquery.min.js"></script>

		<script>

			window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')

		</script>

		<script src="js/bootstrap.min.js"></script>

		<script src="js/holder.min.js"></script>

		<script src="js/ie10-viewport-bug-workaround.js"></script>

	</body>

 

</html>
