package com.shop.forms;

import org.apache.struts.action.ActionForm;

public class ProductForm extends ActionForm {

	private static final long serialVersionUID = -6186865283194975749L;
	private int id;
	private String name;
	private double price;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
	public String toString() {
		return this.id + this.name+this.price;
		
	}
	

}
