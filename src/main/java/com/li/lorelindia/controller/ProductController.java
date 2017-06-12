package com.li.lorelindia.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.li.lorelindia.dao.CategoryDAO;
import com.li.lorelindia.dao.ProductDAO;
import com.li.lorelindia.dao.SupplierDAO;
import com.li.lorelindia.model.Product;
import com.li.lorelindia.model.Supplier;

@Controller
public class ProductController {
	@Autowired
	ProductDAO udao;

	@Autowired
	CategoryDAO cdao;
	
	@Autowired
	SupplierDAO sdao;
	
	@RequestMapping("/Product")
	public ModelAndView gotoProduct() {
		String catlistt=cdao.view_Category();
		String suplist=sdao.view_Supplier();
		String prodlist=udao.view_Product();
		ModelAndView mv = new ModelAndView("Product");
		mv.addObject("Product", new Product());
		mv.addObject("catlistfinal",catlistt);
		mv.addObject("suplistfinal", suplist);
		mv.addObject("productsobject",prodlist);
		mv.addObject("check","True");
		return mv;
	}

	@RequestMapping(value = "/Prouser", params="add")
	public String insert_Product(@ModelAttribute("Product") Product p) {
		udao.insert_Product(p);
		String path="D:\\workspace\\lorelindia\\src\\main\\webapp\\resources\\img\\PImage\\";
		path = path + String.valueOf(p.getPid()) + "" + ".jpg";
		MultipartFile filedet = p.getPImage();
		if (!filedet.isEmpty()) {
			try {
				byte[] bytes = filedet.getBytes();
				System.out.println(bytes.length);
				FileOutputStream fos = new FileOutputStream(new File(path));
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(bytes);
				bs.close();	fos.close();
				Thread.sleep(10000);
				System.out.println("File Uploaded Successfully");
			} catch (Exception e) {
				System.out.println("Exception Arised" + e);
			}	} else {
			System.out.println("File is Empty not Uploaded");
		}	return "redirect:/Product";
    }
	
	@RequestMapping("/allprod")
	public ModelAndView allproducts()
	{
		String prodlist=udao.view_Product();
		ModelAndView mv=new ModelAndView("AllProducts");
		mv.addObject("productsobject",prodlist);
		return mv;
	}
	
	@RequestMapping(value="/removingproduct/{getpid}")
	public String delete_Product(@PathVariable("getpid")int pid,HttpSession session)
	{
		udao.delete_Product(pid);
		return "redirect:/Product";
	}
	
	@RequestMapping(value="/editingproduct")
	public ModelAndView update_Product(@RequestParam("getpid")int pid,HttpSession session) 
{
		String catlistt=cdao.view_Category();
		String suplist=sdao.view_Supplier();
		String prodlist=udao.view_Product();
		Product singglepro = udao.viewOne_Product(pid);
		
		ModelAndView mv= new ModelAndView("Product","Product",singglepro);
		String productgsonlist = udao.view_Product();
		mv.addObject("catlistfinal",catlistt);
		mv.addObject("suplistfinal", suplist);
		mv.addObject("productsobject",prodlist);
		mv.addObject("check","false");
		return mv;
}
	
	@RequestMapping(value = "/Prouser", params="edit")
	public String editproductpage(@ModelAttribute("Product")Product p)
	{
		udao.update_Product(p);
		String path="D:\\workspace\\lorelindia\\src\\main\\webapp\\resources\\img\\PImage\\";
		path = path + String.valueOf(p.getPid()) + "" + ".jpg";
		MultipartFile filedet = p.getPImage();
		if (!filedet.isEmpty()) {
			try {
				byte[] bytes = filedet.getBytes();
				System.out.println(bytes.length);
				FileOutputStream fos = new FileOutputStream(new File(path));
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(bytes);
				bs.close();	fos.close();
				Thread.sleep(10000);
				System.out.println("File Uploaded Successfully");
			} catch (Exception e) {
				System.out.println("Exception Arised" + e);
			}	} else {
			System.out.println("File is Empty not Uploaded");
		}	return "redirect:/Product";
		
	}
	
	@RequestMapping("/singleprod")
	public ModelAndView singleproducts(@RequestParam("getpid")int pid,HttpSession session)
	{
		Gson g=new Gson();
		String prodlist=g.toJson(udao.viewOne_Product(pid));
		ModelAndView mv=new ModelAndView("singleprod");
		mv.addObject("productsobject",prodlist);
		return mv;
	}
}

