package com.li.lorelindia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayController {
	
	@RequestMapping(value={"/","","/index"})
	public String gotoindex()
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String gotoaboutus()
	{
		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String gotocontactus()
	{
		return "contactus";
	}

		
	@RequestMapping("/Supplier details")
	public String gotoSupplierdetails()
	{
		return "Supplier details";
	}
	
	@RequestMapping("/AllProducts")
	public String gotoAllProducts()
	{
		return "AllProducts";
	}
}
