package com.sp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sp.bean.Address;

public interface AddressDao {
	//查询当前用户所有的 地址
	public List<Address> queryAlladd(@Param("id")int id);
}
