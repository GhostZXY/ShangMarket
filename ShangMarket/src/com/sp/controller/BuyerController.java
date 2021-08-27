package com.sp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.bean.Products;
import com.sp.bean.User;
import com.sp.service.ProductsService;
import com.sp.service.UserService;

@Controller
@RequestMapping("/products")
public class BuyerController {
	@Resource(name="products")
	ProductsService productsService;
	
	@Resource(name="UserService")
	UserService userService;
	
	//查询所有
	@RequestMapping("/buyerhome")
	public String buyerhome(Model model){
		List<Products> productsList=productsService.queryProducts();
		model.addAttribute("products",productsList);
		return "buyerhome";
	}
	
	//此代码查询信息，根据客户端传入的id，进行查询相应的商品信息
	@RequestMapping("/info")
	public String info(Model model,int id){
		model.addAttribute("productsinfo",productsService.queryById(id));
		return "product";
	}
	
	//跳转到注册页面
	@RequestMapping("/toRegister")
	public String toRegister(){
		
		return "register";
	}
	//注册页面提交到数据库成功后返回，根据影响的行数跳转到页面上
	@RequestMapping("/register")
	public String register(User user){
		//如果有影响行数就返回true
		if(userService.addUser(user)){
			return"buyerLogin";
		}
		return "register";
	}
	
	//跳转到登录页面
	@RequestMapping("/toLogin")
	public String toLogin(){
		
		return "buyerLogin";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public String login(User user){
		
		//ajax技术  注解@ResponseBody 代表当前方法返回的是值 字符
		if(userService.login(user)){
			return "success";
		}
		return "failed";
	}
	
	
	
	
	
	
	
	
	public ProductsService getProductsService() {
		return productsService;
	}

	public void setProductsService(ProductsService productsService) {
		this.productsService = productsService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
