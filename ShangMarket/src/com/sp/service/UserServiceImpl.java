package com.sp.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.sp.bean.User;
import com.sp.dao.UserDao;

@Service(value="UserService")
public class UserServiceImpl implements UserService {
	
	
	@Resource
	UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return userDao.quertAllUser();
	}
	
}
