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
	
}
