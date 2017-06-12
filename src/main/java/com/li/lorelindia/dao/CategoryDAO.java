package com.li.lorelindia.dao;

import org.springframework.stereotype.Service;

import com.li.lorelindia.model.Category;
import com.li.lorelindia.model.Supplier;


@Service
public interface CategoryDAO {
	public String insert_Category(Category c);
	public String view_Category();
	public Category viewOne_Category(int id);
	public String delete_Category(int cid);
	public String update_Category(Category c);
}
