package com.sp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sp.bean.Products;
import com.sp.dao.ProductsDao;
@Service(value="products")
public class ProductsServiceImp implements ProductsService{
	@Resource
	ProductsDao productsDao;
	
	@Override
	public List<Products> queryProducts() {
		// TODO Auto-generated method stub
		return productsDao.queryAllProducts();
	}

	public ProductsDao getProductsDao() {
		return productsDao;
	}

	public void setProductsDao(ProductsDao productsDao) {
		this.productsDao = productsDao;
	}

	@Override
	public Products queryById(int id) {
		// TODO Auto-generated method stub
		return productsDao.queryProductsById(id);
	}
	
	

}
