
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!-- s标签不要空格!!!!!! -->

<%@taglib prefix="s"  uri="/struts-tags" %>

<%=request.getContextPath() %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

  <head>

 

    <title>My JSP 'index.jsp' starting page</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta http-equiv="pragma" content="no-cache">

	<meta http-equiv="cache-control" content="no-cache">

	<meta http-equiv="expires" content="0">    

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

	<meta http-equiv="description" content="This is my page">

	<!--

	<link rel="stylesheet" type="text/css" href="styles.css">

	-->

 

  </head>

  

  <body bgcolor="#CCCCFF">

		<s:form action="loginAction" methon="post">

		<table align="center" width ="100%">

			<tr>

				<td align="right" width="50%">

					<img src="../images/cc.gif" alt="为之则易, 不为则难"

					height="80"/>

				</td>

				<td align="left" width="50%">

					<h1>个人信息管理系统</h1>

				</td>

			</tr>

			<tr>

				<td colspan="2">

					<hr align="center" width="100%" size="20"

					color="green"/>

				</td>

			</tr>

			<tr>

				<td width="30%" align="center">

					<img src="../images/a.jpg" alt="长城"  height="280"/>

				</td>

				<td width="70%">

					<table border ="5" align= "center" bgcolor="#99aadd">

						<tr>

							<td>

								<s:textfield name="userName"

								lable="登录名" size="16"/>

							</td>

						</tr>

						<tr>

							<td>

								<s:password name="password"

								lable="登录密码" size="18"/>

							</td>

						</tr>

						<tr>

							<td colspan="2" align="center">

								<input type="submit"	 value="确定">

								     

								<input type="reset" value="清空">

							</td>

						</tr>

						<tr>

							<td colspan="2" align="center">

								<s:a href="http://localhost:8080/Information_system/login/register.jsp">注册</s:a>

							</td>

						</tr>

					</table>

				</td>

			</tr>

		</table>

	</s:form>

		

	</body>

</html>
