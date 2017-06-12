package com.li.lorelindia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.li.lorelindia.dao.CategoryDAO;
import com.li.lorelindia.model.Category;
import com.li.lorelindia.model.Supplier;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO udao;

	@RequestMapping("/Category")
	public ModelAndView gotoCategory() {
		String catlistt=udao.view_Category();
		ModelAndView mv = new ModelAndView("Category");
		mv.addObject("Category", new Category());
		mv.addObject("catlistfinal",catlistt);
		mv.addObject("check","true");
		return mv;
	}

	@RequestMapping(value = "/Catuser", params="add")
	public ModelAndView insert_Category(@ModelAttribute("Category") Category c) {
		udao.insert_Category(c);
		String catlistt=udao.view_Category();
		ModelAndView mv=new ModelAndView("Category");
		mv.addObject("Category", new Category());
		mv.addObject("catlistfinal", catlistt);
		mv.addObject("check","true");
		return mv;
		
	}
	
	@RequestMapping(value="/removingcategory/{getcid}")
	public String delete_Category(@PathVariable("getcid")int cid,HttpSession session)
	{
		udao.delete_Category(cid);
		return "redirect:/Category";
	}
	
	@RequestMapping(value="/editingcategory")
	public ModelAndView update_Category(@RequestParam("getcid")int cid,HttpSession session) 
{
		Category singglecat = udao.viewOne_Category(cid);
		
		ModelAndView mv= new ModelAndView("Category","Category",singglecat);
		String categorygsonlist = udao.view_Category();
		mv.addObject("catlistfinal",categorygsonlist);
		mv.addObject("check","false");
		return mv;
}

	@RequestMapping(value = "/Catuser", params="edit")
	public String editcategorypage(@ModelAttribute("Category")Category c)
	{
		udao.update_Category(c);
		return "redirect:/Category";
		
	}
}
