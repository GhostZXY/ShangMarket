package com.sp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sp.bean.Products;
import com.sp.service.BuyerService;
@Controller
@RequestMapping("/buyer")
public class BuyerController {
	@Resource(name="BuyerService")
	BuyerService buyerService;
	
	@RequestMapping("/all")
	public  String all(Model model){
		List<Products> productsList =buyerService.findAllBuyer();
		model.addAttribute("productsList",productsList);
		return "buyerall";
	}
	
	
	public BuyerService getBuyerService() {
		return buyerService;
	}
	public void setBuyerService(BuyerService buyerService) {
		this.buyerService = buyerService;
	}
	
	
}
