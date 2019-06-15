<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F-R-U-I-T BG</title>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>

	<form class="layui-form" action="adminAction">
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">管理员</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userName" placeholder="请输入修改的昵称/真实姓名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" type="password" name="password" placeholder="请输入修改的密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">确认密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" type="password" name="passw_confirm" placeholder="请再次输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">电话号码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userPhone" placeholder="请输入修改的联系电话"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">家庭地址</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userPress" placeholder="请输入修改的联系地址"/>
	    </div>
	  </div>
	  
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">提交修改</button>
	    </div>
	  </div>
	</form>
 
          
<script src="layui/js/layui.js" charset="utf-8"></script>
<script>
	layui.use('form',function(){
	        var form = layui.form
	        form.render('radio');
	});
</script>
</body>
</html>