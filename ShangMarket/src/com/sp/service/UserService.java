
package com.sp.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.sp.bean.Address;
import com.sp.bean.User;

public interface UserService {
	public List<User> findAllUser();

	public User queryById(int id);
	
	public boolean addUser(User user);
	
	public boolean login(User user);
	

	public User findUserByUserName(String user);
	//只改信息，下面的是改信息和图片
	public boolean modifyUserInfo(User user);
	public boolean modifyUserInfoWithHead(User user,MultipartFile head);
	
	public void updateHasStore(int id);
	
	
}
