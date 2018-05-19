<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->  
    
	<script type="text/javascript">
	function addUser(){
		location.href="<%=request.getContextPath() %>/jsp/addUser.jsp";
	}
	
	function queryUser(){
		location.href="<%=request.getContextPath() %>/jsp/queryUser.jsp";
	}
	function del(id){
		document.forms[0].action = "<%=request.getContextPath() %>/user/deletUser.action?user_id="+id;
		document.forms[0].submit();
	}
	function return1(){
		location.href="<%=request.getContextPath() %>/index.jsp";
	}
</script>
  </head>
  
  <body>
  	<input type="button" value="新建用户" onclick="addUser()"><input type="button" value="搜索用户" onclick="queryUser()">
  	<input type="button" value="返回" onclick="return1()">
  	<form action="<%=request.getContextPath() %>/user/deletUser.action?user_id=" method="post">
  	<table border="1" width="100%">
  		<tr bgcolor="f6c733">
  			<td>用户名</td>
  			<td>真实姓名</td>
  			<td>密码</td>
  			<td>角色</td>
  			<td>邮箱</td>
  		</tr>
  		<!-- 接收集合数据 -->
  		<c:forEach items="${Users}" var="us">
  			<tr>
  			<td>${us.userName}</td>
  			<td>${us.realName}</td>
  			<td>****</td>
  			<td>${us.user_role.role_name}</td>
  			<td>${us.email}</td>
  			<td class="td3"><a href="javascript:del(${us.user_id})">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
	</form>    
  </body>
</html>
