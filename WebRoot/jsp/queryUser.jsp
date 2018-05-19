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
    
    <title>My JSP 'queryUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function queryUser(){
		location.href="<%=request.getContextPath() %>/jsp/queryUser.jsp";
	}
	function return2(){
		location.href="<%=request.getContextPath() %>/jsp/UserList.jsp";
	}
	function return1(){
		location.href="<%=request.getContextPath() %>/index.jsp";
	}
	</script>
  </head>
  
  <body>
  <form action="<%=request.getContextPath() %>/user/ queryUserByItems.action" method="post">
  	 用户名：<input type="text" name="userName"/><br/>
  	 真实名：<input type="text" name="realName"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	 <br>
  	 <input type="submit" value="搜索">
  	 <input type="button" value="返回项目列表" onclick="return2()">
  	 <input type="button" value="返回主页面" onclick="return1()">
  	 <br/>
  	 <br/>
  	  	<table border="1" width="100%">
  		<tr>
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
