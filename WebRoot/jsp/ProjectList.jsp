<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'project.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
    <style>a{ text-decoration: none;}</style>
<script type="text/javascript">
	function addProject(){
		location.href="<%=request.getContextPath() %>/jsp/addProject.jsp";
	}
	function del(id){
		alert("是否确定删除此项目？");
		alert("删除此项目，则所有与此项目相关的bug也将会被删除");
		document.forms[0].action = "<%=request.getContextPath() %>/project/deletProject.action?pro_id="+id;
		document.forms[0].submit();
	}
	function UserList(){
		location.href="<%=request.getContextPath() %>/user/queryAllUsers.action";
	}
	function exit(){
		location.href="<%=request.getContextPath() %>/jsp/queryUser.jsp";
	}
	function bug(id){
		document.forms[0].action = "<%=request.getContextPath() %>/project/deletProject.action?user_id="+id;
		document.forms[0].submit();
	}
	function return1(){
		location.href="<%=request.getContextPath() %>/index.jsp";
	}
</script>	
  </head>
  
  <body>
    <input type="button" value="新建项目" onclick="addProject()">
    <input type="button" value="用户管理" onclick="UserList()">
    <input type="button" value="返回主页面" onclick="return1()">
    <form action="<%=request.getContextPath() %>/project/deletProject.action?pro_id=" method="post">
  	<table border="1" width="100%">
  		<tr>
  			<td>ID</td>
  			<td>项目名称</td>
  			<td>优先级</td>
  			<td>关键字</td>
  			<td>描述信息</td>
  			<td>使用人</td>
  			<td>创建日期</td>
  		</tr>
  		<c:forEach items="${Projects}" var="pr">
  			<tr>
  			<td>${pr.pro_id}</td>
  			<td>${pr.pro_name}</td>
  			<td>${pr.priority}</td>  
  			<td>${pr.pro_key}</td>
  			<td>${pr.message}</td>
  			<td>${pr.user_name }</td>
  			<td>${pr.begin_date}</td>
  			<td><a href="<%=request.getContextPath() %>/pro_bugs/queryAllPro_bugs.action?name=${ pr.pro_name }">Bug信息</a></td>
  			<td><a href="javascript:del(${pr.pro_id})">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
  	</form>
  </body>
</html>
