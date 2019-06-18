<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layui</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/common/layui/css/layui.css">
 

</head>
<body>

<table class="layui-hide" id="demo" lay-filter="test"></table>
 
 
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

   
<script src="<%= request.getContextPath() %>/common/layui/layui.all.js"></script>
<script>
layui.config({
  version: '1542630986934' //为了更新 js 缓存，可忽略
});
 

layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function(){
  var laydate = layui.laydate //日期
  ,laypage = layui.laypage //分页
  ,layer = layui.layer //弹层
  ,table = layui.table //表格
  ,carousel = layui.carousel //轮播
  ,upload = layui.upload //上传
  ,element = layui.element //元素操作
  ,slider = layui.slider //滑块
  
  
  //监听Tab切换
  element.on('tab(demo)', function(data){
    layer.tips('切换了 '+ data.index +'：'+ this.innerHTML, this, {
      tips: 1
    });
  });
  
  //执行一个 table 实例
  table.render({
    elem: '#demo'
    ,height: 420
    ,url: 'cn.chinatowercom.statistics.tenant.wfmultitenancybiz.queryWfmultitenancys.biz.ext' //数据接口
    ,title: '用户表'
    ,page: true //开启分页
    ,limit:5
    ,limits: [3,5,10,15,20]
    ,toolbar: true //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
    ,defaultToolbar:['exports','print']
    ,cols: [[ //表头
      {type: 'checkbox', fixed: 'left'}
      ,{field: 'tenantId', title: '应用ID',  sort: true, fixed: 'left'}
      ,{field: 'tenantname', title: '应用名称', edit: 'text'}
      ,{field: 'organizationclass', title: '组织机构实现类',  sort: true,edit: 'text'}
      ,{field: 'permissionclass', title: '权限实现类',  sort: true,edit: 'text'}
      ,{field: 'adminname', title: '用户名',  sort: true,edit: 'text'}
      ,{field: 'createtime', title: '创建时间',edit: 'text'}
      ,{field: 'updatetime', title: '更新时间', edit: 'text'}
      ,{field: 'binddatasourceflag', title:'是否绑定数据源', edit: 'text'}
      ,{field: 'datasource', title:'数据源', edit: 'text'}
      ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo',edit: 'text'}
    ]]
    
  });
  
 //监听表格复选框选择
  table.on('checkbox(test)', function(obj){
    console.log(obj);
  });
  //监听工具条
  table.on('tool(test)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.id + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
      //layer.alert('编辑行：<br>'+ JSON.stringify(data))
      layer.open({
        type: 2,
        //title: title, //不显示标题栏
        closeBtn: 2,
        area: ['680px', '90%'],
        shade: 0.8,
        id: (new Date()).valueOf(), //设定一个id，防止重复弹出 时间戳1280977330748
        //btn: ['保存', '取消'],
        btnAlign: 'r',
        moveType: 1, //拖拽模式，0或者1
        content: 'edit.jsp?tenantId=' + data.tenantId+"&tenantname="+ data.tenantname
        +"&createtime="+ data.createtime+ "&updatetime=" + data.updatetime + "&binddatasourceflag=" + data.binddatasourceflag
        + "&datasource=" + data.datasource
     }); 
    }
  }); 
}); 
</script>

 
</body>
</html>
