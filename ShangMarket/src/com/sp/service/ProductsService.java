package com.sp.service;

import java.util.List;

import com.sp.bean.Products;

public interface ProductsService {
	public List<Products> queryProducts();
	public Products queryById(int id );
}
