<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShowAll.jsp' starting page</title>
    
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
  	<h1>显示所有学生</h1>
  	<table><th><td>学号</td><td>姓名</td><td>密码</td></th>
    <s:iterator value="stus" var="r">
		<tr>                   
		<td><s:property value="#r[0]" /></td>
		<td><s:property value="#r[1]" /></td>
		<td><s:property value="#r[2]" /></td>
		</tr>
	</s:iterator> <br>
	<%-- 	    <s:iterator value="stus" status="r">
		          <td><s:property /></td> --%>
  </body>
</html>
