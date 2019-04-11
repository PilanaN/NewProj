package com.app.sephatlho.model;

import java.io.Serializable;

public class ShopOrder implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7609262758530373587L;
	private int customerId;
	private String shopName;
	private String dateTime;
	private double total;
	private String customerName;
	private String customerLastname;
	private String customerPhone;
	private String customerEmail;
	private String orderStatus;
	
	public ShopOrder() {
		super();
	}

	public ShopOrder(String shopName, String dateTime, double total,
			String customerName, String customerLastname, String customerPhone,
			String customerEmail) {
		super();
		this.shopName = shopName;
		this.dateTime = dateTime;
		this.total = total;
		this.customerName = customerName;
		this.customerLastname = customerLastname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
	}

	public ShopOrder(int customerId, String shopName, String dateTime,
			double total, String customerName, String customerLastname,
			String customerPhone, String customerEmail) {
		super();
		this.customerId = customerId;
		this.shopName = shopName;
		this.dateTime = dateTime;
		this.total = total;
		this.customerName = customerName;
		this.customerLastname = customerLastname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
	}

	public ShopOrder(int customerId, String shopName, String dateTime,
			double total, String customerName, String customerLastname,
			String customerPhone, String customerEmail, String orderStatus) {
		super();
		this.customerId = customerId;
		this.shopName = shopName;
		this.dateTime = dateTime;
		this.total = total;
		this.customerName = customerName;
		this.customerLastname = customerLastname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.orderStatus = orderStatus;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerLastname() {
		return customerLastname;
	}

	public void setCustomerLastname(String customerLastname) {
		this.customerLastname = customerLastname;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

}
