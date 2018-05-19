<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addBug.jsp' starting page</title>
    
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
    <div align = "center">
    
  	<form action="<%=request.getContextPath() %>/project/addBug.action" method="post">
    <table border="1" >
  			<tr>
  				<td>Bug-name：</td>
  				<td><input type="text" name="bug_name"/></td>
  			</tr>
  			<tr>
  				<td>所属项目名称：</td>
  				<td><input type="text" name="pro_name"/></td>
  			</tr>
  			<tr>
  				<td>描述信息：</td>
  				<td><input type="text" name="bug_message"/></td>
  			</tr>
  			<tr>
  				<td>开发者：</td>
  				<td><input type="text" name="bug_dev"/></td>
  			</tr>
  			<tr>
  				<td>使用者：</td>
  				<td><input type="text" name="bug_user"/></td>
  			</tr>
  			<tr>
  				<td>提交日期：</td>
  				<td><input type="text" name="create_date"/></td>
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
