package com.chinasoft.dhw.service;

import java.util.List;

import com.chinasoft.dhw.dao.ShopDao;
import com.chinasoft.dhw.dao.ShopDaoImpl;
import com.chinasoft.dhw.dao.UserDao;
import com.chinasoft.dhw.dao.UserDaoImpl;
import com.chinasoft.dhw.entity.ShopCart;
import com.chinasoft.dhw.entity.User;

public class ShopSeviceImpl implements ShopSevice{

	@Override
	public void add(ShopCart shopcart) {
		ShopDao shopDao = new ShopDaoImpl();
	    shopDao.add(shopcart);		
	}
	public List<ShopCart> get(){
		ShopDao shopDao = new ShopDaoImpl();
		List<ShopCart> list = shopDao.get();
		return list;
	}

}
