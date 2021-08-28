package com.sp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.bean.User;
import com.sp.service.UserService;
@Controller
@RequestMapping("/seller")
public class SellerController {
	@Resource(name="UserService")
	UserService userService;
	@RequestMapping("/tologin")
	public String toSellerLogin(){
		
		return "sellerLogin";
	}
	@ResponseBody
	@RequestMapping("/login")
	public String sellerLogin(User user,HttpServletResponse response){
		if(userService.login(user)){
			User u=userService.findUserByusername(user.getU_username());
			if (u.getU_hasstore().equals("1")){
				response.addCookie(new Cookie("HASSTORE","true"));
			}else {
				response.addCookie(new Cookie("HASSTORE","false"));
			}
			return "success";
		}
		return "failed";
	}
	
	
	@RequestMapping("/home")
	public String home(){
		return "sellerHome";
		
	}
	@RequestMapping("/toAddStore")
	public String toAddStore(){
		return "addStore";
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
