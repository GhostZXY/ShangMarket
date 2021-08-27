package com.sp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sp.bean.Products;

public interface ProductsDao {
	//查询所有商品
	public List<Products> queryAllProducts();
	//根据id查询商品详细信息
	public Products queryProductsById(@Param("id") int id);
}
