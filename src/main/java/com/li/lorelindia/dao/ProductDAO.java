package com.li.lorelindia.dao;

import org.springframework.stereotype.Service;

import com.li.lorelindia.model.Product;
import com.li.lorelindia.model.Supplier;


@Service
public interface ProductDAO {
	public String insert_Product(Product p);
	public String view_Product();
	public String delete_Product(int pid);
	public Product viewOne_Product(int pid);
	public String update_Product(Product p);
}
