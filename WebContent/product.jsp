<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>商品信息</title>
		<style type="text/css">
			table {
				border: 1px solid black;
				border-collapse: collapse;
			}
			table thead tr th {
				border: 1px solid black;
				padding: 3px;
				background-color: #cccccc;
			}
			table tbody tr td {
				border: 1px solid black;
				padding: 3px;
			}
		</style>
		<jsp:include page="backstageMS.jsp" flush="true"/>
	</head>
<body> 
	 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		
		<h2>商品信息</h2>
		<s:form action="" theme="simple">
			<table cellspacing="0">
				<thead>
					<tr>
						<th>选择</th>
						<th>水果编号</th>
						<th>水果名</th>
						<th>种类</th>
						<th>产地</th>
						<th>价格</th>
						<th>图片</th>
						<th>介绍</th>
						<th>库存</th>
						<th style="text-align:center">操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="fruits" var="fruit">
						<tr>
							<td><input type="checkbox" name="isbns" value='<s:property value="isbn" />' /></td>
							<td>${fruit.fruitID }</td>
							<td>${fruit.fruitName }</td>
							<td>${fruit.kind }</td>
							<td>${fruit.origin }</td>
							<td>${fruit.price }</td>
							<td>${fruit.images }</td>
							<td>${fruit.introduce }</td>
							<td>${fruit.stock }</td>
							<td>
								<a href="${pageContext.request.contextPath }/">更新</a>
								<a>|</a>
								<a href="${pageContext.request.contextPath }/">删除</a>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<s:submit value="Remove" /><a href="${pageContext.request.contextPath }/">添加</a>
		</s:form>
	</div> 
</body>
</html>