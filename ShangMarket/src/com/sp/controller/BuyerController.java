package com.sp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/buyer")
public class BuyerController {
	
	@RequestMapping("/home")
	public  String home(){
		return "buyerhome";
	}
}
