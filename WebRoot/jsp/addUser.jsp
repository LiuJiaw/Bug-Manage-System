<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div align="center">
  	<form action="<%=request.getContextPath() %>/user/addUser.action" method="post">
  		<table border="1">
  			<tr>
  				<td>用户名：</td>
  				<td><input type="text" name="userName"/></td>
  			</tr>
  			<tr>
  				<td>密码：</td>
  				<td><input type="password" name="pwd"/></td>
  			</tr>
  			<tr>
  				<td>真实姓名：</td>
  				<td><input type="text" name="realName"/></td>
  			</tr>
  			<tr>
  				<td>角色：</td>
  				<td><select name="user_role.role_id">
  					<option value="1">管理员</option>
  					<option value="2">普通用户</option>
  				</select> </td>
  			</tr>
  			<tr>
  				<td>邮箱：</td>
  				<td><input type="text" name="email"/></td>
  			</tr>
  			<tr>
  				<td></td>
  				<td><input type="submit" value="确定"/><input type="reset" value="重置"/></td>
  			</tr>
  		
  		</table>
  	</form>
    </div>
  </body>
</html>
