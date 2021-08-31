package com.sp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.MultipartFilter;

import com.sp.bean.Address;
import com.sp.bean.Products;
import com.sp.bean.User;
import com.sp.service.AddressService;
import com.sp.service.ProductsService;
import com.sp.service.UserService;

@Controller
@RequestMapping("/products")
public class BuyerController {
	@Resource(name="products")
	ProductsService productsService;
	
	@Resource(name="UserService")
	UserService userService;
	
	@Resource(name="AddressSercice")
	AddressService addressService;
	
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
	
	//ajax技术  注解@ResponseBody 代表当前方法返回的是值 字符
	@ResponseBody
	@RequestMapping("/login")
	public String login(User user,HttpServletResponse respon){
		if(userService.login(user)){
			Cookie cookie =new Cookie("LOGINNAME",user.getU_username());
			respon.addCookie(cookie);
			return "success";
		}
		return "failed";
	}
	
	@RequestMapping("/toModify")
	public String toModify(Model model,String loginName){
		model.addAttribute("userInfo",userService.findUserByUserName(loginName));
		return "buyerModify";
	}
	
	//跳转到商品列表页
	@RequestMapping("/productList")
	public String toproductList(){
		
		
		return "productList";
	}
	//跳转到用户信息修改页
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modify(String u_username,String u_password,String u_nickname, 
			@RequestParam("u_head")MultipartFile u_head){
		User user=new User();
		user.setU_username(u_username);
		user.setU_password(u_password);
		user.setU_nickname(u_nickname);
		
		if(u_head.getOriginalFilename().equals("")){
			//只改信息
			userService.modifyUserInfo(user);
		}else{
			//。该信息和图片
			userService.modifyUserInfoWithHead(user, u_head);
		}
		return "redirect:/products/buyerhome.action";
	}
	@RequestMapping("/tosite")
	public String site(Model model,String username){
		User user=userService.findUserByUserName(username);
		List<Address> addlist= addressService.findAlladdress(user.getU_id());
		model.addAttribute("addressList",addlist);
		return "size";
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
