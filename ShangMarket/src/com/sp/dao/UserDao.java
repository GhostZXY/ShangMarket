
package com.sp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sp.bean.User;

public interface UserDao {
	public List<User> quertAllUser();

	public User queryUserById(@Param("id") int id);
	//注册
	public int addUser(User user);
	//校验是否重名
	public User queryByUsername(@Param("u_username")String u_username);
	//修改
	public int updateUser(User user);
	//如果长传图片的 修改
	public int updateUserWithPic(User user);
	//修改用户状态
	public int updateHasStore(@Param("id")int id);
	
}
