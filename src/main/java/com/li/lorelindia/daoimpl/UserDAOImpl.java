package com.li.lorelindia.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.li.lorelindia.dao.UserDAO;
import com.li.lorelindia.model.AccessDetails;
import com.li.lorelindia.model.User;

@Repository
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	
	@Override
	public String insert_user(User u) {
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(u);
		t.commit();
		s.close();
		
		return null;	
	}

	@Override
	public List<User> ListUser() {
		// TODO Auto-generated method stub
		List<User> list=sessionfactory.getCurrentSession().createQuery("from User u").list();
		return list;
	}

}
