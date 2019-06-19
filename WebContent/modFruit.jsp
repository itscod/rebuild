<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>F-R-U-I-T BG</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>

	<form class="layui-form" action="fruit_edit.action">
  
	  <div class="layui-form-item ">
	    <label class="layui-form-label">水果名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" id="fruitName" name="fruits.fruitName" readonly/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">水果品种</label>
	    <div class="layui-input-inline">
	    <select name="fruits.kind" lay-filter="kind" >
	    	<option value="">请选择水果的品种</option>
	    	<option value="进口">进口</option>
	    	<option value="精品">精品</option>
	    </select>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">原产地</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" id="origin" name="fruits.origin"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">单价</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" id="price" name="fruits.price"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">介绍</label>
	    <div class="layui-input-block" width="200px">
	      <textarea class="layui-textarea" id="introduce" name="fruits.introduce" width="200px"></textarea>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="edit" id="submit" lay-submit="">提交修改</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
 
          
<script src="layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;
        form.render('select','kind');
        //各种基于事件的操作，下面会有进一步介绍
        //form.render('组件名','lay-filter名')
    
    
    //传值回页面并且关闭
	    var index = parent.layer.getFrameIndex(window.name);
	    from.on('submit(edit)',function(data){
	    	var loading = layui.load(0,{shade: false});
	    	//提交到数据库进行修改
	    	$.post('fruit_edit.action',data.field,function(data){
	    		console.log(data);
	    		if(data.integer > 0){
	    			layer.close(loading);
	    			//重载页面
	    			window.parent.location.reload();
	    			layer.msg('修改成功！');
	    			//关闭
	    			var index = parent.layui.getFrameIndex(window,name);
	    			parent.layer.close(index);
	    			
	    		}
	    	});
	    	return false;
	    });
    });
</script>
</body>
</html>