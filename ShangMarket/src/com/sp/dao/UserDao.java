
package com.sp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sp.bean.User;

public interface UserDao {
	public List<User> quertAllUser();

	public User queryUserById(@Param("id") int id);
}
