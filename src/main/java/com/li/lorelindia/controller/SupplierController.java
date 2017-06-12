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

import com.li.lorelindia.dao.SupplierDAO;
import com.li.lorelindia.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO sdao;

	@RequestMapping("/Supplier")
	public ModelAndView gotoSupplier() {
		String suplist=sdao.view_Supplier();
		ModelAndView mv = new ModelAndView("Supplier");
		mv.addObject("Supplier", new Supplier());
		mv.addObject("suplistfinal", suplist);
		mv.addObject("check","true");
		return mv;
	}

	@RequestMapping(value = "/Supuser", params="add")
	public ModelAndView insert_Supplier(@ModelAttribute("Supplier") Supplier su) {
		sdao.insert_Supplier(su);
		String suplist=sdao.view_Supplier();
		ModelAndView mv=new ModelAndView("Supplier");
		mv.addObject("Supplier", new Supplier());
		mv.addObject("suplistfinal", suplist);
		mv.addObject("check","true");
		return mv;
		
	}
	
	
	@RequestMapping(value="/removingsupplier/{getsid}")
	public String delete_Supplier(@PathVariable("getsid")int sid,HttpSession session)
	{
		sdao.delete_Supplier(sid);
		return "redirect:/Supplier";
	}
	
	
	@RequestMapping(value="/editingsupplier")
	public ModelAndView update_Supplier(@RequestParam("getsid")int sid,HttpSession session) 
{
		Supplier singglesup = sdao.viewOne_Supplier(sid);
		
		ModelAndView mv= new ModelAndView("Supplier","Supplier",singglesup);
		String suppliergsonlist = sdao.view_Supplier();
		mv.addObject("suplistfinal",suppliergsonlist);
		mv.addObject("check","false");
		return mv;
}
	
	@RequestMapping(value = "/Supuser", params="edit")
	public String editsupplierpage(@ModelAttribute("Supplier")Supplier su)
	{
		sdao.update_Supplier(su);
		return "redirect:/Supplier";
		
	}
}
