package com.li.lorelindia.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.google.gson.Gson;
import com.li.lorelindia.dao.ProductDAO;
import com.li.lorelindia.model.Product;
import com.li.lorelindia.model.Supplier;

@Repository
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	
	@Override
	public String insert_Product(Product p) {
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(p);
		t.commit();
		s.close();
		
		return null;	
	}

	@Override
	public String view_Product() {
		// TODO Auto-generated method stub
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		List<Product> prolistobj=s.createQuery("from Product").list();
		Gson g=new Gson();
		String prolist=g.toJson(prolistobj);
		t.commit();
		s.close();
		return prolist;
	}

	@Override
	public String delete_Product(int pid) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Product pp=(Product)s.get(Product.class,pid);
		s.delete(pp);
		t.commit();
		s.close();
		return null;
			
	}

	@Override
	public Product viewOne_Product(int pid) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Product p=(Product)s.get(Product.class,pid);
		// Gson g=new Gson();
		// String onesupgson=g.toJson(p);
		t.commit();
		s.close();
		return p;
		
	}

	@Override
	public String update_Product(Product p) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.update(p);
		t.commit();
		s.close();
		return null;
	}

	
}
