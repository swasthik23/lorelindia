package com.li.lorelindia.dao;

import org.springframework.stereotype.Service;

import com.li.lorelindia.model.Supplier;


@Service
public interface SupplierDAO {
	public String insert_Supplier(Supplier su);
	public String view_Supplier();
	public Supplier viewOne_Supplier(int id);
	public String delete_Supplier(int sid);
	public String update_Supplier(Supplier su);
	
}
