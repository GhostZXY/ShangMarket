<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userinfo.jsp' starting page</title>
    
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
  	<!--用户详细信息 啊啊 啊-->
   		账户名：${userinfo.u_username}<br>
   		昵称：${userinfo.u_nickname}<br>
   		是否开店：${userinfo.u_hasstore}<br>
   		身份：${userinfo.u_type}<br>
   		头像：${userinfo.u_head_new}<br>
   		审核状态：${userinfo.u_head_status}
   		
   		
   		
  </body>
</html>
