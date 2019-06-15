<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	 <head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  <title>F-R-U-I-T BG</title>
	  <meta name="renderer" content="webkit">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
	  <meta name="apple-mobile-web-app-capable" content="yes">
	  <meta name="format-detection" content="telephone=no">
	  
	  <link href="layui/css/layui.css" rel="stylesheet" media="all">
	</head>
	<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
	  <div class="layui-header">
	    <div class="layui-logo"><a href="backstageMS.jsp" class="layui-logo" style="font-size:20px">后台管理</a></div>
	    <!-- 头部区域（可配合layui已有的水平导航） -->
	    <ul class="layui-nav layui-layout-left">
	      <li class="layui-nav-item"><a href="bootAdmin.jsp">返回商城</a></li>
	    </ul>
	    <ul class="layui-nav layui-layout-right">
	      <li class="layui-nav-item">
	        ${userName}
	      </li>
	      <li class="layui-nav-item"><a href="logout.action">退出</a></li>
	      <span class="layui-nav-bar" style="left: 76px; top: 55px; width: 0px; opacity: 0;"></span>
	    </ul>
	  </div>
	  
	  <div class="layui-side layui-bg-black">
	    <div class="layui-side-scroll">
	      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
	      <ul class="layui-nav layui-nav-tree" lay-filter="test">
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">商品管理</a>
	          <dl class="layui-nav-child">
	            <dd><a data-url="product.jsp" data-id="1" data-title="商品详情" href="#" class="site-demo-active" data-type="tabAdd">商品详情</a></dd>
	            <dd><a data-url="addProduct.jsp" data-id="2" data-title="添加商品" href="#" class="site-demo-active" data-type="tabAdd">添加商品</a></dd>
	            <dd><a data-url="modProduct.jsp" data-id="3" data-title="修改信息" href="#" class="site-demo-active" data-type="tabAdd">修改信息</a></dd>
	          </dl>
	        </li>
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">库存管理</a>
	          <dl class="layui-nav-child">
	            <dd><a data-url=".jsp" data-id="4" data-title="缺货提醒" href="#" class="site-demo-active" data-type="tabAdd"">缺货提醒</a></dd>
	            <dd><a data-url=".jsp" data-id="5" data-title="修改库存" href="#" class="site-demo-active" data-type="tabAdd">修改库存</a></dd>
	          </dl>
	        </li>
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">管理员</a>
	          <dl class="layui-nav-child">
	          	<dd><a data-url="admin.jsp" data-id="6" data-title="管理员详情" href="#" class="site-demo-active" data-type="tabAdd">管理员详情</a></dd>
	            <dd><a data-url="addAdmin.jsp" data-id="7" data-title="添加管理员" href="#" class="site-demo-active" data-type="tabAdd">添加管理员</a></dd>
	            <dd><a data-url="modAdmin.jsp" data-id="8" data-title="修改信息" href="#" class="site-demo-active" data-type="tabAdd">修改信息</a></dd>
	          </dl>
	        </li>
	     </ul>
	    </div>
	  </div>
	  
	  <div class="layui-body">
	    	<div class="layui-tab" lay-filter="demo" lay-allowclose="true">
                <ul class="layui-tab-title">
                </ul>
                <ul class="rightmenu" style="display: none;position: absolute;">
                    <li data-type="closethis">关闭当前</li>
                    <li data-type="closeall">关闭所有</li>
                </ul>
                <div class="layui-tab-content">
                </div>
            </div>
	  </div>
	  
	  <div class="layui-footer">
		<p style="text-align:center">版权所有 © 2019 F-R-U-I-T 保留所有权利 |粤ICP备14101118号-1</p>
	  </div>
	</div>
	<script src="layui/js/layui.all.js" charset="utf-8"></script>
	<script>
	//JavaScript代码区域
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	</script>
	
	
	</body>
</html>