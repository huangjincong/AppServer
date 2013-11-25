package com.evan.app.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.evan.app.dao.IUser2Dao;
import com.evan2.app.po.User2;

public class User2DaoImpl implements IUser2Dao {

	private SessionFactory sessionFactory2;
	public SessionFactory getSessionFactory2() {
		return sessionFactory2;
	}
	public void setSessionFactory2(SessionFactory sessionFactory2) {
		this.sessionFactory2 = sessionFactory2;
	}
	public User2 insertUser2(User2 user) {
		// TODO Auto-generated method stub
		Session s = sessionFactory2.getCurrentSession(); 
		s.save(user);
		return user;
	}

}
