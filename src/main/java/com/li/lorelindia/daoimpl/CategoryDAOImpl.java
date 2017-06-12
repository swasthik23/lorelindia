package com.li.lorelindia.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.google.gson.Gson;
import com.li.lorelindia.dao.CategoryDAO;
import com.li.lorelindia.model.Category;
import com.li.lorelindia.model.Supplier;

@Repository
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	
	@Override
	public String insert_Category(Category c) {
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(c);
		t.commit();
		s.close();
		
		return null;	
	}

	@Override
	public String view_Category() {
		Session s=sessionfactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		List<Category> catlistobj=s.createQuery("from Category").list();
		Gson g=new Gson();
		String catlistgson=g.toJson(catlistobj);
		t.commit();
		s.close();
		return catlistgson;
	}

	@Override
	public String delete_Category(int cid) {
		// TODO Auto-generated method stub
			Session s = sessionfactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			Category cp=(Category)s.get(Category.class,cid);
			s.delete(cp);
			t.commit();
			s.close();
			return null;
		
	}

	@Override
	public Category viewOne_Category(int id) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Category ct=(Category)s.get(Category.class,id);
		// Gson g=new Gson();
		// String onesupgson=g.toJson(ct);
		t.commit();
		s.close();
		return ct;
		
	}
	
	@Override
	public String update_Category(Category c) {
		// TODO Auto-generated method stub
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.update(c);
		t.commit();
		s.close();
		return null;
	}
}
