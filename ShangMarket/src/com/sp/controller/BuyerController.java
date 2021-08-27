package com.sp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sp.bean.Products;
import com.sp.service.ProductsService;

@Controller
@RequestMapping("/products")
public class BuyerController {
	@Resource(name="products")
	ProductsService productsService;
	
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
	

	public ProductsService getProductsService() {
		return productsService;
	}

	public void setProductsService(ProductsService productsService) {
		this.productsService = productsService;
	}
	
}
