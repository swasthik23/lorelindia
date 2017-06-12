package com.li.lorelindia.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.li.lorelindia.dao.AccessDetailsDAO;
import com.li.lorelindia.model.AccessDetails;

@Repository
@EnableTransactionManagement
public class AccessDetailsDAOImpl implements AccessDetailsDAO {
	@Autowired
	SessionFactory sessionfactory;

	@Override
	public String insert_login(AccessDetails l) {
		// TODO Auto-generated method stub
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(l);
		t.commit();
		s.close();
		
		return null;	
	}

}
