<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>买家登录页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<link rel="stylesheet" type="text/css" href="css/header.css" />
		<link rel="stylesheet" type="text/css" href="css/footer.css" />
		<script src="js/jquery-3.0.0.js" type="text/javascript" charset="utf-8"></script>
		<!-- <script src="js/login_verify.js" type="text/javascript" charset="utf-8"></script>
	 -->
	<script type="text/javascript" src="js/jquery-3.0.0.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#login_btn").click(function(){
				var username =$("#u_username").val();
				var password =$("#u_password").val();
				$.ajax({
					url:"products/login.action",
					data:{
						"u_username" :username,
						"u_password" :password
					},
					success : function(result){
						if(result=="success"){
							window.location.href="products/buyerhome.action"
						}else{
							$(".tip").html("登录失败")
						}
					}
				})
			})
		})
	</script>
	
	
	

  </head>
  
  <body>
  
  		<header>
			<div class="logo" style="width: 65px;">
				<a href="home.html">
					<img src="./img/shang.png" />
				</a>
			</div>
		</header>
		<section>
			<img src="img/login_bg.png" />
			<div class="login">
				<h3>用户登录</h3>
				<form action="" method="post">
					<div class="tip"><span class="fa fa-exclamation"></span>
						<font>用户不存在</font>
					</div>
					<p><span class="fa fa-user"></span><input type="text"  name="u_username"  id="u_username" placeholder="会员名/邮箱/手机号" /></p>
					<p><span class="fa fa-lock"></span><input type="password" name="u_password"  id="u_password"  placeholder="请输入登录密码" /></p>
					<p><input type="button" name="login_btn" id="login_btn" value="登录" /></p>
					<span class="tip"></span>
				</form>
				<div class="login_other">
					<a href="#">忘记密码</a>
					<a href="register.html">免费注册</a>
				</div>
			</div>
		</section>
		<footer>
			<div class="friend_link">
				<a href="#">快乐购集团</a>
				<a href="#">高德地图</a>
				<a href="#">font awesome</a>
				<a href="#">虾米</a>
				<a href="#">大麦网</a>
				<a href="#">支付宝</a>
				<a href="#">腾讯</a>
				<a href="#">优酷</a>
				<a href="#">土豆</a>
				<a href="#">网商银行</a>
			</div>
			<div class="about_happlyShop">
				<a href="#">关于快乐购</a>
				<a href="#">合作伙伴</a>
				<a href="#">营销中心</a>
				<a href="#">廉正举报</a>
				<a href="#">联系客服</a>
				<a href="#">开放平台</a>
				<a href="#">诚征英才</a>
				<a href="#">联系我们</a>
				<a href="#">网站地图</a>
				<a href="#">隐私权政策</a>
				<a href="#">法律声明</a>
				<a href="#">知识产权</a>
			</div>
			<p>&copy; 2019-现在 HapplyShop.com 版权所有</p>
		</footer>
  </body>
</html>
