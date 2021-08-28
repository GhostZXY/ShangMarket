package com.sp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sp.bean.User;
import com.sp.dao.UserDao;
@Service(value="UserService")
public class UserServiceImp implements UserService{
	@Resource
	UserDao userDao;

	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return userDao.quertAllUser();
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User queryById(int id) {
		// TODO Auto-generated method stub
		return userDao.queryUserById(id);
	}
	@Override
	public boolean addUser(User user) {
		//如果当前 名字为空，代表没注册过。可以注册 
		if(userDao.queryByUsername(user.getU_username()) == null){
			//判断影响的行数，为0返回false。不为0返回true
			return userDao.addUser(user) != 0;
		}
		return false;
	}
	
	//ajax技术u是后台的
	@Override
	public boolean login(User user) {
		User us= userDao.queryByUsername(user.getU_username());
		if(us != null){
			if(us.getU_password().equals(user.getU_password())){
				return true;
			}
		}
		
		return false;
	}
	@Override
	public User findUserByusername(String username) {
		// TODO Auto-generated method stub
		return userDao.queryByUsername(username);
	}
	
	
	
	
}
