package com.app.sephatlho.model;

public class CustomerOrderDetails {

	private String shopName;
	private String itemDescription;
	private double itemPrice;

	public CustomerOrderDetails(String shopName, String itemDescription,
			double itemPrice) {
		super();
		this.shopName = shopName;
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public double getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}

}
