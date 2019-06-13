<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
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
	<form class="layui-form" action="registerAction" method="post">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>注册</legend>
		  &nbsp;&nbsp;&nbsp;&nbsp;<br>
		  <label class="cut">>如已注册，<a href="login.jsp" style="color:#009688">请登录</a></label>
		</fieldset>
	
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">用户名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="userName" placeholder="请输入昵称/真实姓名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="password" type="password" placeholder="请输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">确认密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" type="password" name="passw_confirm" placeholder="请再次输入密码"/>
	    </div>
	  </div>
				            
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">联系电话</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="userPhone" placeholder="请输入联系电话"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">家庭住址</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="userPress" placeholder="请输入联系地址"/>
	    </div>
	  </div>
	  
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" type="submit" >立即注册</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
 </div>
          
<script src="js/layui.all.js" charset="utf-8"></script>

</body>
</html>