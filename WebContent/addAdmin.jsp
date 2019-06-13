<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>添加管理员</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<body>

	<form class="layui-form" action="adminAction">
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">管理员</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userName" placeholder="请输入昵称/真实姓名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" type="password" name="password" placeholder="请输入密码"/>
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
	      <input class="layui-input" value="" name="userPhone" placeholder="请输入联系电话"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">家庭地址</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="userPress" placeholder="请输入联系地址"/>
	    </div>
	  </div>
	  
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">立即提交</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
 
          
<script src="js/layui.all.js" charset="utf-8"></script>
<script>
	layui.use('form', function(){
	    var form = layui.form;
	    form.render();
	    form.on('select(formDemo)', function(data){
	        selectFun();
	    //各种基于事件的操作，下面会有进一步介绍
	    //form.render('组件名','lay-filter名')
	});
</script>
</body>
</html>