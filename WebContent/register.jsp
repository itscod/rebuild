<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>


<%=request.getContextPath() %>

<!DOCTYPE HTML>

<html>

  <head>

 

    <title>注册</title>

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
        .register,.reset{
            color: white;
            height: 38px;
            width: 170px;
            background-color: #2b669a;
        }
        .title{
        	font-size: 20px;
        	margin-left:80px;
        }
        
    </style>

  </head>

  

  <body>

		<div class="container">
		    
		    <div class="row clearfix">
		    	<div class="col-md-12 column">
		    		<div>
		    			<label class="title">注册</label>&nbsp;&nbsp;&nbsp;&nbsp;
		    			<label class="cut">>如已注册，<a href="login.jsp">请登录</a></label>
		    		</div>
				    <div class="row">
				    	<form class="form-horizontal col-md-offset-4 col-md-4" action="registerAction" method="post">
				            <div class="form-group">
				                <label for="inputText3" class="col-sm-2 control-label">用户名</label>
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
				                <label for="inputPassword4" class="col-sm-2 control-label">确认密码</label>
				                <div class="col-sm-10">
				                    <input type="password" class="form-control" id="passw_confirm" name="passw_confirm" placeholder="请再次输入密码">
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="inputSex" class="col-sm-2 control-label">性别</label>
				                <div class="col-sm-10">
				                    <input name="sex" type="radio" value="男" checked />男
									<input name="sex" type="radio" value="女"/>女
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="inputText" class="col-sm-2 control-label">联系电话</label>
				                <div class="col-sm-10">
				                    <input type="text" class="form-control" id="inputText" name="userPhone" placeholder="请输入联系电话">
				                </div>
				            </div>
				            <div class="form-group">
				                <label for="inputText" class="col-sm-2 control-label">地址</label>
				                <div class="col-sm-10">
				                    <input type="text" class="form-control" id="inputText" name="userPress" placeholder="请输入地址">
				                </div>
				            </div>
				            <div class="form-group">
				                <div class="col-sm-offset-2 col-sm-10">
				                	<button type="reset" class="btn btn-default reset ">重填</button>
				                	<button type="submit" class="col-sm-10 btn btn-default register">注册</button>
				                </div>
				            </div>
				        </form>
				    </div>
				</div>
			</div>
		</div>

	</body>

</html>
