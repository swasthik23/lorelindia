package com.li.lorelindia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.li.lorelindia.dao.AccessDetailsDAO;
import com.li.lorelindia.dao.UserDAO;
import com.li.lorelindia.model.AccessDetails;
import com.li.lorelindia.model.User;

@Controller
public class UserController {
	@Autowired
	UserDAO udao;
	
	@Autowired
	AccessDetailsDAO adao;

	@RequestMapping("/reggister")
	public ModelAndView gotocustomerregister() {
		ModelAndView mv = new ModelAndView("reggister");
		mv.addObject("User", new User());
		mv.addObject("login", new AccessDetails());
		return mv;
	}

	@RequestMapping(value = "/reguser", method = RequestMethod.POST)
	public ModelAndView insert_user(@ModelAttribute("User") User u) {
		udao.insert_user(u);
		ModelAndView mv=new ModelAndView("index");
		mv.addObject("User", new User());
		return mv;
	}
	
	@RequestMapping(value = "/userlog", method = RequestMethod.POST)
	public ModelAndView login_user(@ModelAttribute("login") AccessDetails l)
	{
		adao.insert_login(l);
		List<User> list=udao.ListUser();
		ModelAndView mv;
		boolean usermatch=false;
		boolean passmatch=false;
		for(User li:list)
		{
			System.out.println(li.getUemail()+"/t"+l.getAemail());
			if(li.getUemail().equals(l.getAemail()))
			{
				usermatch=true;
				break;
			}
			
			if(li.getUpassword().equals(l.getApassword()))
			{
				passmatch=true;
				break;
			}
			
		}
		if(usermatch==false)
		{
			if(passmatch==true)
			{
			mv=new ModelAndView("index");
			}
			else{
				mv=new ModelAndView("reggister");
				mv.addObject("User", new User());
				mv.addObject("login", new AccessDetails());
			}
		}
		else
		{
			mv=new ModelAndView("reggister");
			mv.addObject("User", new User());
			mv.addObject("login", new AccessDetails());
		}
		return mv;
	}
}
