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
  <link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<body>      
    <div class="layui-form layui-border-box layui-table-view" style=" " lay-filter="LAY-table-1" lay-id="test">
	
	<div class="layui-table-tool">
		<div class="layui-table-tool-temp">
			<div class="layui-btn-container">
				 <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
				 <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
				 <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
		    </div> 
	 	</div>
	 	<div class="layui-table-tool-self">
			<div title="筛选列" class="layui-inline" lay-event="LAYTABLE_COLS">
				<i class="layui-icon layui-icon-cols" style="background-image:url(images/col.PNG)"></i>
			</div>
			<div title="打印" class="layui-inline" lay-event="LAYTABLE_PRINT">
				<i class="layui-icon layui-icon-print" style="background-image:url(images/printf.PNG)"></i>
			</div>
		</div>
	</div>
	<table class="layui-table" border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th class=" layui-table-col-special" data-key="1-0-0" data-field="0" data-unresize="true">
				<div class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
					<input name="layTableCheckbox" type="checkbox" lay-filter="layTableAllChoose" lay-skin="primary">
					<div class="layui-unselect layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon layui-icon-ok"></i>
					</div>
				</div>
				</th>
				<th class="layui-table-col-special" data-key="1-0-1" data-field="userID" data-unresize="true">
				<div class="layui-table-cell laytable-cell-1-0-1">
					<span>管理员ID</span>
				</div>
				</th>
				<th class="layui-table-col-special" data-key="1-0-2" data-field="userName">
				<div class="layui-table-cell laytable-cell-1-0-2">
					<span>管理员</span>
				</div>
				</th>
				<th class="layui-table-col-special" data-key="1-0-3" data-field="sex">
				<div class="layui-table-cell laytable-cell-1-0-3">
					<span>性别</span>
				</div>
				</th>
				<th class="layui-table-col-special" data-key="1-0-4" data-field="userPhone">
					<div class="layui-table-cell laytable-cell-1-0-4">
						<span>电话号码</span>
					</div>
				</th>
				<th class="layui-table-col-special" data-key="1-0-5" data-field="userPress">
					<div class="layui-table-cell laytable-cell-1-0-5">
						<span>家庭住址</span>
					</div>
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th class=" layui-table-col-special" data-key="1-0-0" data-field="0" data-unresize="true">
				<div class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
					<input name="layTableCheckbox" type="checkbox" lay-filter="layTableAllChoose" lay-skin="primary">
					<div class="layui-unselect layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon layui-icon-ok"></i>
					</div>
				</div>
				</th>
				<th></th>
			</tr>
		</tbody>
		<tfoot>
			<div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-1">
				<a class="layui-laypage-prev layui-disabled" href="javascript:;" data-page="0">
					<i class="layui-icon"></i>
				</a>
				
				<span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span>
				<a href="javascript:;" data-page="2">2</a>
				<a href="javascript:;" data-page="3">3</a>
				<span class="layui-laypage-spr">…</span>
				<a title="尾页" class="layui-laypage-last" href="javascript:;" data-page="20">20</a>
				<a class="layui-laypage-next" href="javascript:;" data-page="2">
					<i class="layui-icon"></i>
				</a>
				<span class="layui-laypage-skip">到第
					<input class="layui-input" type="text" min="1" value="1">页
					<button class="layui-laypage-btn" type="button">确定</button>
				</span>
				<span class="layui-laypage-count">共10 条</span>
				<span class="layui-laypage-limits">
					<select lay-ignore="">
						<option value="3">1 条/页</option>
						<option value="3">3 条/页</option>
						<option value="5" selected="">5 条/页</option>
						<option value="10">10 条/页</option>
					</select>
				</span>
			</div>
		</tfoot>
	</table>
	
	</div>

	<script src="js/layui.all.js" charset="utf-8"></script>
	<script src="js/laypage.js" charset="utf-8"></script>
	
	<script>
	layui.use('table', function(){
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
	      layer.confirm('确定删除吗？', function(index){
	        obj.del();
	        layer.close(index);
	      });
	    } else if(obj.event === 'edit'){
	      layer.prompt({
	        formType: 2
	        ,value: data.email
	      }, function(value, index){
	        obj.update({
	          email: value
	        });
	        layer.close(index);
	      });
	    }
	  });
	});
	</script>
</body>
</html>