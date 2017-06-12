package com.li.lorelindia.dao;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.li.lorelindia.model.AccessDetails;

@Service

public interface AccessDetailsDAO {
	public String insert_login(AccessDetails l);
}
