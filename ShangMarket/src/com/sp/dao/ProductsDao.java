package com.sp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sp.bean.Products;

public interface ProductsDao {
	//��ѯ������Ʒ
	public List<Products> queryAllProducts();
	//����id��ѯ��Ʒ��ϸ��Ϣ
	public Products queryProductsById(@Param("id") int id);
}
