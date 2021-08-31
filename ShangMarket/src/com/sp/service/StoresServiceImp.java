package com.sp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sp.bean.Stores;
import com.sp.dao.StoresDao;

@Service(value="storesService")
public class StoresServiceImp implements StoresService{
	@Resource
	StoresDao storesDao;
	
	
	
	
	@Override
	public boolean addStores(Stores stores) {
		// TODO Auto-generated method stub
		return storesDao.addStores(stores)!=0;
	}
	
	
	
	
	
	
	
	
	public StoresDao getStoresDao() {
		return storesDao;
	}
	public void setStoresDao(StoresDao storesDao) {
		this.storesDao = storesDao;
	}

	
	
		
}
