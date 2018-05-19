<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addProject.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	function return1(){
		location.href="<%=request.getContextPath() %>/project/queryAllProjects.action";
	}
	</script>

  </head>
  
  <body>
  <div align="center">
  	<form action="<%=request.getContextPath() %>/project/addProject.action" method="post">
  		<table border="1">
  			<tr>
  				<td>项目名：</td>
  				<td><input type="text" name="pro_name"/></td>
  			</tr>
  			<tr>
  				<td>项目优先级：</td>
  				<td><select name="pro_bugs.bug_id">
  					<option value="1">1</option>
  					<option value="2">2</option>
  					<option value="3">3</option>
  					<option value="4">4</option>
  					<option value="5">5</option>
  					<option value="6">6</option>
  					<option value="6">7</option>
  					<option value="6">8</option>
  					<option value="6">9</option>
  					<option value="6">10</option>
  				</select> </td>
  			</tr>
  			<tr>
  				<td>关键字：</td>
  				<td><input type="text" name="pro_key"/></td>
  			</tr>
  			<tr>
  				<td>描述信息：</td>
  				<td><input type="text" name="message"/></td>
  			</tr>
  			<tr>
  				<td>使用者：</td>
  				<td><input type="text" name="user_name"/></td>
  			</tr>
  			<tr>
  				<td>创建时间：</td>
  				<td><input type="text" name="begin_date"/></td>
  			</tr>
  			<tr>
  				<td></td>
  				<td><input type="submit" value="确定"/><input type="reset" value="重置"/><input type="button" value="返回" onclick="return1()"></td>
  			</tr>
  		</table>
  	</form>
  	</div>
  </body>
</html>
