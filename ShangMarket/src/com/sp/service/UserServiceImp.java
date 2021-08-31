
package com.sp.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.bean.Address;
import com.sp.bean.User;
import com.sp.dao.AddressDao;
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
	public User findUserByUserName(String user) {
		// TODO Auto-generated method stub
		return userDao.queryByUsername(user);
	}
	//修改信息
	@Override
	public boolean modifyUserInfo(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user)!=0;
	}
	//修改信息并且修改头像
	@Override
	public boolean modifyUserInfoWithHead(User user, MultipartFile head) {
		if(modifyUserInfo(user)){
			Date date= new Date();
			//,lastIndexOf(".")
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
			String sux = head.getOriginalFilename().substring(head.getOriginalFilename().lastIndexOf("."));
			String new_name= sdf.format(date)+UUID.randomUUID()+sux;
			File file=new File("D:\\pic\\head\\"+new_name);
			try {
				head.transferTo(file);
				user.setU_head_old("/pic/head/"+new_name);
				return userDao.updateUserWithPic(user)!=0;
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return false;
		
	}
	@Override
	public void updateHasStore(int id) {
		userDao.updateHasStore(id);
		
	}
	
	
	
}
