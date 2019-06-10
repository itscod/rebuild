
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>


<%=request.getContextPath() %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

  <head>

 

    <title>登录</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta http-equiv="pragma" content="no-cache">

	<meta http-equiv="cache-control" content="no-cache">

	<meta http-equiv="expires" content="0">    

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

	<meta http-equiv="description" content="This is my page">

	<!--

	<link rel="stylesheet" type="text/css" href="styles.css">

	-->
	<link rel="stylesheet" href="css/bootstrap.min.css">  
	<script src="js/jquery-1.9.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
 	<style>
		body{
			background: url(images/login.jpg);
			background-size: 100% 100%;
			background-repeat: no-repeat;
		}
		.container{
			width:450px;
		}
        .login {
            color: white;
            height: 38px;
            width: 170px;
            background-color: #2b669a;
        }
        .title{
        	font-size: 20px;
        	margin-left:80px;
        }
        .cut{
        	float:right;
        	font-size:13px;
        	margin-right:150px;
        	margin-top:5px;
        }
    </style>

  </head>

  

  <body>

		<div class="container">
		    
		    <div class="row clearfix">
		    	<div class="col-md-12 column">
		    		<div>
		    			<label class="title">登录</label>&nbsp;&nbsp;&nbsp;&nbsp;
		    			<label class="cut">>如未注册，<a href="register.jsp">请注册</a></label>
		    		</div>
				    <div class="row">
				    	<form class="form-horizontal col-md-offset-4 col-md-4" action="loginAction" method="post">
				            <div class="form-group">
				                <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
				                <div class="col-sm-10">
				                    <input type="text" class="form-control" name="userName" placeholder="请输入用户名">
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
				                <div class="col-sm-10">
				                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="请输入密码">
				                </div>
				            </div>
				            <div class="form-group">
				                <div class="col-sm-offset-2 col-sm-10">
				                    <div class="checkbox">
				                        <label style="margin-right:50px">
				                            <input type="checkbox">记住密码
				                        </label>
				                        <label>
				                        	<a href="#">忘记密码</a>
				                        </label>
				                    </div>
				                </div>
				            </div>
				            <div class="form-group">
				                <div class="col-sm-offset-2 col-sm-10">
				                    <button type="submit" class="btn btn-default login ">登录</button>
				                </div>
				            </div>
				        </form>
				    </div>
				</div>
			</div>
		</div>

	</body>

</html>
