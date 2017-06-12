package com.li.lorelindia.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.google.gson.Gson;
import com.li.lorelindia.dao.SupplierDAO;
import com.li.lorelindia.model.Category;
import com.li.lorelindia.model.Supplier;

@Repository
@EnableTransactionManagement
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	  
	@Override
	public String insert_Supplier(Supplier su) {
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(su);
		t.commit();
		s.close();
		
		return null;	
	}
	
	@Override
	public String view_Supplier() {
		// TODO Auto-generated method stub
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		List<Supplier> suplistobj=s.createQuery("from Supplier").list();
		Gson g=new Gson();
		String suplistgson=g.toJson(suplistobj);
		t.commit();
		s.close();
		return suplistgson;
	}

	@Override
	public String delete_Supplier(int id) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Supplier sp=(Supplier)s.get(Supplier.class,id);
		s.delete(sp);
		t.commit();
		s.close();
		return null;
	
	}
	
	@Override
	public Supplier viewOne_Supplier(int id) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Supplier sp=(Supplier)s.get(Supplier.class,id);
		// Gson g=new Gson();
		// String onesupgson=g.toJson(sp);
		t.commit();
		s.close();
		return sp;
		
	}

	@Override
	public String update_Supplier(Supplier su) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.update(su);
		t.commit();
		s.close();
		return null;
	}

	
	
}
