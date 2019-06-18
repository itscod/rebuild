<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/common/layui/css/layui.css">
  <script src="<%= request.getContextPath() %>/common/nui/nui.js" type="text/javascript">
  </script>
</head>
<body>
          
 <br/><br/><br/>
<form class="layui-form" action="" method="post">

		<%
                String tenantId =request.getParameter("tenantId");

        %>

  <div class="layui-form-item">
    <label class="layui-form-label">应用ID</label>
    <div class="layui-input-block">
      <input type="text" name="tenantid" style="width:200px;" autocomplete="off" value="<%=tenantId%>" class="layui-input">
    </div>
  </div>
  

		<%
                String tenantname=request.getParameter("tenantname");

        %>

  <div class="layui-form-item">
    <label class="layui-form-label">应用名称</label>
    <div class="layui-input-block">
      <input type="text" name="tenantname" style="width:200px;" autocomplete="off" value="<%=tenantname%>" class="layui-input">
    </div>
  </div>
  
  		<%
                String createtime=request.getParameter("createtime");

        %>
   <div class="layui-form-item">
    <label class="layui-form-label">创建时间</label>
    <div class="layui-input-block">
      <input type="text" name="createtime" style="width:200px;"  autocomplete="off" value="<%=createtime%>" class="layui-input">
    </div>
  </div>
  
  
  	<%
                String updatetime=request.getParameter("updatetime");

        %>
   <div class="layui-form-item">
    <label class="layui-form-label">更新时间</label>
    <div class="layui-input-block">
      <input type="text" name="updatetime" style="width:200px;"  autocomplete="off" value="<%=updatetime%>" class="layui-input">
    </div>
  </div>
  
  <%
                String binddatasourceflag=request.getParameter("binddatasourceflag");

        %>
   <div class="layui-form-item">
    <label class="layui-form-label">是否绑定数据源</label>
    <div class="layui-input-block">
      <input type="text" name="binddatasourceflag" style="width:200px;"  autocomplete="off" value="<%=binddatasourceflag%>" class="layui-input">
    </div>
  </div>
  
  <%
                String datasource=request.getParameter("datasource");

        %>
  
  <div class="layui-form-item">
    <label class="layui-form-label">数据源</label>
    <div class="layui-input-block">
      <input type="text" name="datasource" style="width:200px;" autocomplete="off" value="<%=datasource%>" class="layui-input">
    </div>
  </div>
  
   <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
    </div>
</form>
   
<script src="<%= request.getContextPath() %>/common/layui/layui.all.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //自定义验证规则
  /* form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
  }); */

  //监听提交
  
  form.on('submit(demo1)', function(data){
	  console.info(data);
	   var json = JSON.stringify(data.field);
	   console.info(json);
	    $.ajax({
	           url:'cn.chinatowercom.statistics.tenant.wfmultitenancybiz.updateWfmultitenancy.biz.ext',
	           type:'POST',
	           data:'{wfmultitenancy:'+json+'}',
	           contentType:'text/json',
	           success:function (msg) {
	               
	           }
	       });
   		 return false;
 	 });  
});
</script>
</body>
</html>
