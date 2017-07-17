package com.chinasoft.dhw.service;

import com.chinasoft.dhw.dao.UserDao;
import com.chinasoft.dhw.dao.UserDaoImpl;
import com.chinasoft.dhw.entity.User;

public class UserSeviceImpl implements UserSevice{

	@Override
	public boolean login(User user) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		User users = userDao.selectLoginPw(user);
		if(users!=null){
			return true;
		}
		return false;
	}
	public boolean register(User user){
		UserDao userDao = new UserDaoImpl();
		User users = userDao.selectLoginPw(user);
		if(users==null){
			userDao.addUser(user);
			return true;
		}
		return false;
	}

}
