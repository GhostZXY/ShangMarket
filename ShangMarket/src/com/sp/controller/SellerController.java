package com.sp.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.bean.Stores;
import com.sp.bean.User;
import com.sp.service.StoresService;
//卖家相关业务
import com.sp.service.UserService;
@Controller
@RequestMapping("/seller")
public class SellerController {
	//卖家
	@Resource(name="storesService")
	StoresService storesService;
	
	@Resource(name="UserService")
	UserService userService;
	
	
	@RequestMapping("/tologin")
	public String toSellerLogin(){
		return "sellerLogin";
	}
	
	
	//先判断，卖家是否登录成功和失败，在去数据库里查询当前的卖家状态是否有店铺
	//此处在判断，如果有那么就存入Cookie中，把他的状态存入进去，然后前端ajax进行取出来，根据响应的页面
	//是注册店铺页面，还是店铺页面
	@ResponseBody
	@RequestMapping("/login")
	public String sellerLogin(User user,HttpServletResponse response){
		if(userService.login(user)){
			User u =userService.findUserByUserName(user.getU_username());
			response.addCookie(new Cookie("LOGINNAME",user.getU_username()));
			if(u.getU_hasstore().equals("1")){
				response.addCookie(new Cookie("HASSTORE", "true"));
			}else{
				response.addCookie(new Cookie("HASSTORE", "false"));
			}
			return "success";
		}
		
		return "failed";
	}
	
	@RequestMapping("/home")
	public String home(){
		return "sellerHome";
	}
	//去注册页
	@RequestMapping("/toAddStore")
	public String toAddStore(){
		return "addStore";
	}
	//注册页注册
	@RequestMapping("/addStores")
	public String addStores(Stores stores,HttpServletRequest request){
		Cookie [] cookie= request.getCookies();
		String username="";
		for(Cookie cookie1:cookie){
			if(cookie1.getName().equals("LOGINNAME")){
				username=cookie1.getValue();
			}
		}
		User user=userService.findUserByUserName(username);
		stores.setU_id(user.getU_id());
		if(storesService.addStores(stores)){
			userService.updateHasStore(user.getU_id());
			return "sellerHome";
		}else{
			return "addStore";
		}
		
	}
	
	
	
	
	
	

	public StoresService getStoresService() {
		return storesService;
	}


	public void setStoresService(StoresService storesService) {
		this.storesService = storesService;
	}


	public UserService getUserService() {
		return userService;
	}


	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	
	
	
}

