package com.app.sephatlho.model;

import java.io.Serializable;

public class Menu implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String fkEmail;
	private String description;
	private double price;
	private int quantity;
	public boolean orderItem;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFkEmail() {
		return fkEmail;
	}
	public void setFkEmail(String fkEmail) {
		this.fkEmail = fkEmail;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public boolean isOrderItem() {
		return orderItem;
	}
	public void setOrderItem(boolean orderItem) {
		this.orderItem = orderItem;
	}

}
