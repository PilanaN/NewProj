package com.app.sephatlho.model;

public class OrderInShop {
	
	private String shopName;
	private String dateTime;
	private double totalPrice;
	private String status;

	public OrderInShop(String shopName, String dateTime, double totalPrice,
			String status) {
		super();
		this.shopName = shopName;
		this.dateTime = dateTime;
		this.totalPrice = totalPrice;
		this.status = status;
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

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
