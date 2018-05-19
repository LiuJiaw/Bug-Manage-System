<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <style>a{ text-decoration: none;}</style>
    <title>My JSP 'index.jsp' starting page</title>
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
  <div style="height:100px;width:300px"></div>
  <div align="center">
  <p style="font-size:50px;color:black">bug管理系统</p><br>
  <p style="font-size:30px;color:white">
  <a href="<%=request.getContextPath() %>/user/queryAllUsers.action">用户信息列表</a><br><br>
  <a href="<%=request.getContextPath() %>/project/queryAllProjects.action">项目信息列表</a><br><br>
  <a href="<%=request.getContextPath() %>/pro_bugs/queryAllPro_bugs1.action">Bug信息列表</a><br><br>
  </p>
  </div>
  </body>
</html>
