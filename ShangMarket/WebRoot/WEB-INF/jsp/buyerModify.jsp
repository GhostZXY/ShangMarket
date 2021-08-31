<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buyerModify.jsp' starting page</title>
    
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
    <form action="products/modify.action" method="post" enctype="multipart/form-data">
    	用户名：<input type="hidden" name="u_username" id="u_username" value="${userInfo.u_username}"/><br>
    	密码：<input type="password" name="u_password" id="u_password" value="${userInfo.u_password}"><br>
    	昵称：<input type="text" name="u_nickname" id="u_nickname" value="${userInfo.u_nickname}"><br>
    	<input type="file" id="u_head" name="u_head" /><br>
    	<img src="${userInfo.u_head_old}">
    	<a href="products/tosite.action?username=${userInfo.u_username}">地址管理</a>
    	<input type="submit" value="修改" name="修改">
    	
    </form>
  </body>
</html>
