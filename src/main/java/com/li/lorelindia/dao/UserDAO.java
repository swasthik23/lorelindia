package com.li.lorelindia.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.li.lorelindia.model.AccessDetails;
import com.li.lorelindia.model.User;


@Service
public interface UserDAO {
	public String insert_user(User u);
	
	public List<User> ListUser();
}
