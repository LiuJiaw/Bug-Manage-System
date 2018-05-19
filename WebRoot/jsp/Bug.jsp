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
    
    <title>My JSP 'Bug.jsp' starting page</title>
    
    <style>a{ text-decoration: none;}</style>
    <script type="text/javascript">
		function addBug(){
			location.href="<%=request.getContextPath() %>/jsp/addBug.jsp";
		}
		function return1(){
			location.href="<%=request.getContextPath() %>/index.jsp";
		}
		function del(id){
			alert("是否确定删除此bug？");
			document.forms[0].action = "<%=request.getContextPath() %>/pro_bugs/deletPro_bugs.action?bug_id="+id;
			document.forms[0].submit();
		}
	</script>
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
    <input type="button" value="新建Bug" onclick="addBug()">
  	<input type="button" value="返回" onclick="history.go(-1)">
  	<form action="<%=request.getContextPath() %>/pro_bugs/deletPro_bugs.action?bug_id=" method="post">
  	<table border="1" width="100%">
  		<tr>
  			<td>BugId</td>
  			<td>BugName</td>
  			<td>所属项目</td>
  			<td>描述信息</td>
  			<td>开发者</td>
  			<td>使用者</td>
  			<td>创建日期</td>
  		</tr>
  		<c:forEach items="${Pro_bugs}" var="bug">
  			<tr>
  			<td>${bug.bug_id }</td>
  			<td>${bug.bug_name}</td>
  			<td>${bug.pro_name}</td>
  			<td>${bug.bug_message}</td>
  			<td>${bug.bug_dev}</td>
  			<td>${bug.bug_user }</td>
  			<td>${bug.create_date}</td>
  			<td class="td3"><a href="javascript:del(${bug.bug_id})">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
  	</form>
  </body>
</html>
