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

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>买家商城页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery-3.0.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<link rel="stylesheet" type="text/css" href="css/home.css" />
	<link rel="stylesheet" type="text/css" href="css/home_header.css" />
	<link rel="stylesheet" type="text/css" href="css/footer.css" />

  </head>
  
  <body>
 <%--  <%if(loginName.equals("")){ %>
  	<a href="products/toLogin.action">登录</a>
  	<a href="products/toRegister.action">注册</a>
  	<%}else{ %>
  	<p>您好，<a href="products/toModify.action?loginName=<%=loginName %>"><%=loginName %></a></p>
  	<% }%>
  	<!--此循环 中a标签中跳转到对应的点击结果。id=值。商品查询出来啊--> --%>
   
    
    <header>
			<div id="top_nav">
				<div id="nav_log_reg">
				 <%if(loginName.equals("")){ %>
				 <a href="products/toLogin.action" id="to_register">登录</a>
  				<a href="products/toRegister.action" id="to_register">注册</a>
  				<%}else{ %>
					<a href="products/toModify.action?loginName=<%=loginName %>" id="to_login">您好，<%=loginName %></a>
				<% }%>
					
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
			<div id="logo">
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
		<div class="content">
			<nav id="nav_horizontal">
				<p>主题市场</p>
				<ul>
					<li>
						<a href="#">推广1</a>
					</li>
					<li>
						<a href="#">推广2</a>
					</li>
					<li>
						<a href="#">推广3</a>
					</li>
					<li>
						<a href="#">推广4</a>
					</li>
					<li>
						<a href="#">推广5</a>
					</li>
					<li>
						<a href="#">推广6</a>
					</li>
				</ul>
			</nav>
			<article id="nav_banner">
				<nav id="nav_first_category">
					<ul>
						<li>
							<a href="#">手办 </a>/
							<a href="#">模型</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">男装 </a>/
							<a href="#">男鞋</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">美妆 </a>/
							<a href="#">箱包</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">手机 </a>/
							<a href="#">数码</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">大家电 </a>/
							<a href="#">运动户外</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">零食 </a>/
							<a href="#">生鲜</a>
							<span>&gt;</span>
						</li>
						<li>
							<a href="#">医药保健 </a>/
							<a href="#">进口产品</a>
							<span>&gt;</span>
						</li>

					</ul>

				</nav>
				<div id="nav_second_category">
					<div id="nav_left">
						<h3 class="cate_first">
						<a href="#">手办</a>
					</h3>
						<ul class="cate_second">
							<li>
								<a href="#">上装</a>
								<p class="cate_third">
									<a href="#">T恤</a>
									<a href="#">衬衫</a>
									<a href="#">卫衣</a>
									<a href="#">雪纺衫</a>
									<a href="#">毛衣</a>
									<a href="#">马甲</a>
								</p>
							</li>
							<li>
								<a href="#">女裙</a>
								<p class="cate_third">
									<a href="#">连衣裙</a>
									<a href="#">半身裙</a>
									<a href="#">旗袍</a>
								</p>
							</li>
							<li>
								<a href="#">女裤</a>
								<p class="cate_third">
									<a href="#">休闲裤</a>
									<a href="#">牛仔裤</a>
									<a href="#">西装裤</a>
								</p>
							</li>
							<li>
								<a href="#">外套</a>
								<p class="cate_third">
									<a href="#">短外套</a>
									<a href="#">风衣</a>
									<a href="#">西装</a>
									<a href="#">毛呢大衣</a>
									<a href="#">棉衣棉服</a>
									<a href="#">羽绒服</a>
									<a href="#">皮草</a>
									<a href="#">皮衣</a>
								</p>
							</li>
						</ul>

					</div>
					<div id="nav_right">
						<h3 class="cate_first">
						<a href="#">模型</a>
					</h3>
					
						<ul class="cate_second">
							<li>
								<a href="products/productList.action">英雄联盟系列</a>
							</li>
							<li>
								<a href="#">海贼王系列</a>
							</li>
							<li>
								<a href="#">火影忍者系列</a>
							</li>
	
							<c:forEach items="${products}" var="products">
	    					<li>
	    						<p><a href="products/info.action?id=${products.p_id}">${products.p_name}</a>  </p>
	    					<li>
	    					</c:forEach>
						</ul>

					</div>

				</div>
				<div class="banner">
					<ul class="banner_content">
						<li>
							<a href="#"><img src="img/banner1.jpg" /></a>
						</li>
						<li>
							<a href="#"><img src="img/banner2.jpg" /></a>
						</li>
						<li>
							<a href="#"><img src="img/banner3.jpg" /></a>
						</li>
						<li>
							<a href="#"><img src="img/banner4.jpg" /></a>
						</li>

					</ul>
				</div>
			</article>
			<p class="section_title">猜你喜欢</p>
			<section id="recommend">
				<div class="recommend_products">
					<ul>
						<li>
							<a href="#">
								<img src="img/hyz1.jpg" />
								<p>佐助</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/PS4.jpg" />
								<p>PlayStation4</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/switch.jpg" />
								<p>Nintendo Switch</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/hy1.jpg" />
								<p>火影卡哇伊</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/高跟鞋.jpg" />
								<p>夏日高跟鞋</p>
							</a>
						</li>

					</ul>
				</div>
			</section>
			<p class="section_title">热销商品</p>
			<section id="hotsale">

				<ul class="hotsale_products">
				
					<li>
						<a href="#">
							<img src="img/hyz1.jpg" />
							<div class="product_info">
								<p class="product_name">佐助</p>
								<p class="product_price"><span>￥</span>3388.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="img/gao.jpg" />
							<div class="product_info">
								<p class="product_name">高达</p>
								<p class="product_price"><span>￥</span>2388.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="img/LoL2.jpg" />
							<div class="product_info">
								<p class="product_name">大元素</p>
								<p class="product_price"><span>￥</span>1388.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					
					<li>
					
						<a href="#">
							<img src="img/lu3.jpg" />
							<div class="product_info">
								<p class="product_name">路飞</p>
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
								<p class="product_price"><span>￥</span>388.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="img/LOL4.jpg" />
							<div class="product_info">
								<p class="product_name">戏命师</p>
								<p class="product_price"><span>￥</span>199999.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="img/LoL.jpg" />
							<div class="product_info">
								<p class="product_name">阿狸</p>
								<p class="product_price"><span>￥</span>288.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="img/LOL3.jpg" />
							<div class="product_info">
								<p class="product_name">佛罗弋</p>
								<p class="product_price"><span>￥</span>188.00</p>
								<p class="product_sales">月销量 213 笔</p>
							</div>
						</a>
					</li>
					<c:forEach items="${products}" var="products">
	    					<li>
	    						<a href="products/info.action?id=${products.p_id}">${products.p_name}</a>
	    					<li>
	    			</c:forEach>
					<div class="clear"></div>
				</ul>
			</section>
		</div>
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
    
    
    
  </body>
</html>
