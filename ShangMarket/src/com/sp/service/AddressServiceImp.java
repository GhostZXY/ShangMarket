package com.sp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sp.bean.Address;
import com.sp.dao.AddressDao;
@Service(value="AddressSercice")
public class AddressServiceImp implements AddressService {
	@Resource
	AddressDao addressDao;

	@Override
	public List<Address> findAlladdress(int id) {
		// TODO Auto-generated method stub
		return addressDao.queryAlladd(id);
	}

	
	
	public AddressDao getAddressDao() {
		return addressDao;
	}
	public void setAddressDao(AddressDao addressDao) {
		this.addressDao = addressDao;
	}
}
