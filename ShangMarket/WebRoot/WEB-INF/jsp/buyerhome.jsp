<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	Cookie[] cookies = request.getCookies();
	String loginName ="";
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("LOGINNAME")){
			loginName =cookie.getValue();		
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buyerhome.jsp' starting page</title>
    
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
  <%if(loginName.equals("")){ %>
  	<a href="products/toLogin.action">登录</a>
  	<a href="products/toRegister.action">注册</a>
  	<%}else{ %>
  	<p>您好，<a href="products/toModify.action?loginName=<%=loginName %>"><%=loginName %></a></p>
  	<% }%>
  	<!--此循环 中a标签中跳转到对应的点击结果。id=值。商品查询出来啊-->
    <c:forEach items="${products}" var="products">
    	<p><a href="products/info.action?id=${products.p_id}">${products.p_name}</a>  </p>
    	
    </c:forEach>
  </body>
</html>
