package com.sp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sp.bean.User;
import com.sp.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name="UserService")
	UserService userService;
	
	@RequestMapping("/home")
	public String home(Model model){
		List<User> userList=userService.findAllUser();
		model.addAttribute("userList",userList);
		return "home";
	}
	
	@RequestMapping("/info")
	public String info(Model model,int id){
		model.addAttribute("userinfo",userService.queryById(id));
		return "userinfo";
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
