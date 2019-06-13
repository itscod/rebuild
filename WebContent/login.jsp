<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" href="css/layui.css"  media="all">
	<style>
		body{
			background: url(images/login.jpg);
			background-size: 100% auto;
			background-repeat: no-repeat;
			
		.cut{
			font-size: 14px;
			text-align: center;
		}
		
	</style>
</head>
<body>
 <div style="width: 350px; position: relative; left:35%; margin-top:10%;">
	<form class="layui-form" action="loginAction">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>登录</legend>
		  &nbsp;&nbsp;&nbsp;&nbsp;<br>
		  <label class="cut">>如未注册，<a href="register.jsp" style="color:#009688">请注册</a></label>
		</fieldset>
	
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">用户名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userName" placeholder="请输入昵称/真实姓名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" type="password" value="" name="password" placeholder="请输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">记住密码</label>
	    <div class="layui-input-block">
	      <input name="close" type="checkbox" lay-skin="switch" lay-text="ON|OFF">
	      <a href="#" style="margin-left:50px">忘记密码</a>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">立即登录</button>
	    </div>
	  </div>
	</form>
 </div>
          
<script src="js/layui.all.js" charset="utf-8"></script>

</body>
</html>