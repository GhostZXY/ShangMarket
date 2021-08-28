
package com.sp.service;

import java.util.List;

import com.sp.bean.User;

public interface UserService {
	public List<User> findAllUser();

	public User queryById(int id);
	
	public boolean addUser(User user);
	
	public boolean login(User user);
	
	public User findUserByusername(String username);
	
	
}
