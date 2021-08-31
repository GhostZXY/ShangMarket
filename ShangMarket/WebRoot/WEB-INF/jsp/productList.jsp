<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品列表页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery-3.0.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/product.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<link rel="stylesheet" type="text/css" href="css/header.css" />
		<link rel="stylesheet" type="text/css" href="css/home.css" />
		<link rel="stylesheet" type="text/css" href="css/home_header.css" />
		<link rel="stylesheet" type="text/css" href="css/productList.css" />
		<link rel="stylesheet" type="text/css" href="css/footer.css" />

  </head>
  
  <body>
    	<header>
			<div id="top_nav">
				<div id="nav_log_reg">
					<a href="login.html" id="to_login">您好，请登录</a>
					<a href="register.html" id="to_register">免费注册</a>
				</div>
				<div class="nav_shopping_cart">
					<a href="shoppingcart.html" id="to_shopping_cart">
						<span class="fa fa-shopping-cart"></span> 我的购物车
					</a>
				</div>
				<div id="nav_order">
					<div href="#" id="to_order">
						<span>我的订单</span>
						<ul id="nav_my_order">
							<li>
								<a href="#">进行中订单</a>
							</li>
							<li>
								<a href="#">购买历史</a>
							</li>

						</ul>
					</div>

				</div>
				<div class="nav_seller">
					<a href="#" id="to_seller_center">卖家中心</a>
				</div>

			</div>
			<div class="logo">
				<a href="home.html">
					<img src="img/logo_lg.png" />
				</a>
			</div>
			<div class="search_block">
				<form class="search">
					<span class="fa fa-search"></span>
					<input type="text" name="search_keywords" id="search_keywords" />
					<input type="button" name="search_btn" id="search_btn" value="搜  索" />
				</form>
				<ul class="promotion">
					<li>
						<a href="#">新款连衣裙</a>
						<a href="#">四件套</a>
						<a href="#">时尚女鞋</a>
						<a href="#">男士外套</a>
						<a href="#">新款男鞋</a>
						<a href="#">时尚女包</a>
					</li>
				</ul>
			</div>

		</header>
		<section id="hotsale">

			<ul class="hotsale_products">
				<li>
					<a href="#">
						<img src="img/hyz1.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LoL.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LoL2.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LOL3.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LOL4.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LOL5.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LOL5.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/LOL5.jpg" />
						<div class="product_info">
							<p class="product_name">商品名</p>
							<p class="product_price"><span>￥</span>3388.00</p>
							<p class="product_sales">月销量 213 笔</p>
						</div>
					</a>
				</li>
				<div class="clear"></div>
			</ul>
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
