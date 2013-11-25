package com.evan.app.service.impl;

import com.evan.app.dao.IUser1Dao;
import com.evan.app.dao.IUser2Dao;
import com.evan.app.service.IUserService;
import com.evan1.app.po.User1;
import com.evan2.app.po.User2;

public class UserServiceImpl implements IUserService {

	private IUser1Dao user1Dao;
	private IUser2Dao user2Dao;
	
	public IUser1Dao getUser1Dao() {
		return user1Dao;
	}

	public void setUser1Dao(IUser1Dao user1Dao) {
		this.user1Dao = user1Dao;
	}

	public IUser2Dao getUser2Dao() {
		return user2Dao;
	}

	public void setUser2Dao(IUser2Dao user2Dao) {
		this.user2Dao = user2Dao;
	}

	public void insertUser1AndUser2(User1 user) {
		// TODO Auto-generated method stub
		try{
			System.out.println("insertUser1AndUser2 方法开始执行");
			User1 user1=user1Dao.insertUser1(user);
			User2 user2=new User2();
			user2Dao.insertUser2(user2);
		}
		catch(Exception e){
			System.err.println("service 抛出异常");
		}
	}

}
