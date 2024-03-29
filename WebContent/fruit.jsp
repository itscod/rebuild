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
    <table class="layui-hide" id="test" lay-filter="test"></table>
 
<script id="toolbarDemo" type="text/html">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
  </div>
</script>
 
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-xs" lay-event="edit" lay-event="edit" id="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
              
          
<script src="layui/layui.js" charset="utf-8"></script>
 
<script>
layui.use('table', function(){
  var table = layui.table;
  var $ = layui.jquery;
  table.render({
	id: 'fruitTable'
    ,elem: '#test'
    ,url:'fruit_findAll.action'
    ,toolbar: '#toolbarDemo'
    ,title: '商品信息表'
    ,cols: [[
      {type: 'checkbox', fixed: 'left'}
      ,{field:'fruitID', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
      ,{field:'fruitName', title:'水果', width:100}
      ,{field:'kind', title:'种类', width:100}
      ,{field:'origin', title:'产地', width:100}
      ,{field:'price', title:'单价', width:80, unresize: true, sort: true}
      ,{field:'introduce', title:'介绍'}
      ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
    ]]
    ,page: true
  });
  
  //头工具栏事件
  table.on('toolbar(test)', function(obj){
    var checkStatus = table.checkStatus(obj.config.id);
    switch(obj.event){
      case 'getCheckData':
        var data = checkStatus.data;
        layer.alert(JSON.stringify(data));
      break;
      case 'getCheckLength':
        var data = checkStatus.data;
        layer.msg('选中了：'+ data.length + ' 个');
      break;
      case 'isAll':
        layer.msg(checkStatus.isAll ? '全选': '未全选');
      break;
    };
  });
  
  //监听行工具事件
  table.on('tool(test)', function(obj){
    var data = obj.data;
    //console.log(obj)
    if(obj.event === 'del'){
       //重载本级表格
      layer.confirm('您确定删除吗', function(index){
    	  
          obj.del(); //删除行

          layer.close(index);
          
          $.ajax({

              url:"fruit_delete.action",
              
              type: 'post',
              
              data: {
            	  "fruitID": data.fruitID
              },
          
              dataType: "json",
              
              success: function(data){
            	  layer.msg("删除成功!");
              }
              
          });

          /* table.reload('fruitTable',{page:{curr:1}}); //重载表格,第一个参数是表格id */
          
   	   });
      } else if(obj.event === 'edit'){
    	  
    	  /**
    	   * 点击编辑 弹窗 商品信息
    	   */
    	   
    	  layer.open({
    		  
    		  type: 2,
    		  
    		  title: '编辑商品信息',
    		  
    		  shift:1,
    		  
    		  area: ['600px', '450px'],
    		  
    		  shadeClose: true,
    		  
    		  content: 'modFruit.jsp',//iframe的url
    		  
    		  success: function(layero,index) {
    		            var body = layui.layer.getChildFrame('body', index);
    		            console.log(JSON.stringify(data));
    		            //渲染弹出层
    		     body.find("#fruitName").val(data.fruitName);
    		     body.find("#origin").val(data.origin);
    		     body.find("#price").val(data.price);
    		     body.find("#introduce").val(data.introduce);
    		  }
    		 
    		}); 

      }
  });
  
  
});
</script>

</body>
</html>