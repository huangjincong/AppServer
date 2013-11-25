package com.evan.app.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.evan.app.dao.IUser1Dao;
import com.evan1.app.po.User1;

public class User1DaoImpl implements IUser1Dao {

	private SessionFactory sessionFactory1;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory1;
	}

	public void setSessionFactory(SessionFactory sessionFactory1) {
		this.sessionFactory1 = sessionFactory1;
	}

	public User1 insertUser1(User1 user) {
		// TODO Auto-generated method stub
		Session s = sessionFactory1.getCurrentSession(); 
		s.save(user);
		return user;
	}

}
