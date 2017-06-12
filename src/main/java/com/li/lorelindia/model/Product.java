package com.li.lorelindia.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	
	@Id
	public int pid;
	
	String pname;
	
	String pquantity;
	
	String pdescription;
	
	String ppriceperunit;
	
	String pcateory;
	
	String psupplier;
	
	@Transient
	MultipartFile  PImage;
	
	public MultipartFile getPImage() {
		return PImage;
	}
	public void setPImage(MultipartFile pImage) {
		PImage = pImage;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPquantity() {
		return pquantity;
	}
	public void setPquantity(String pquantity) {
		this.pquantity = pquantity;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public String getPpriceperunit() {
		return ppriceperunit;
	}
	public void setPpriceperunit(String ppriceperunit) {
		this.ppriceperunit = ppriceperunit;
	}
	public String getPcateory() {
		return pcateory;
	}
	public void setPcateory(String pcateory) {
		this.pcateory = pcateory;
	}
	public String getPsupplier() {
		return psupplier;
	}
	public void setPsupplier(String psupplier) {
		this.psupplier = psupplier;
	}
	

}
