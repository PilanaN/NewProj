package com.app.sephatlho.model;

public class Order {
	
	//menuDesc, price,tblcustomer.name,tblcustomer.lastname,tblcustomer.phone,tblcustomer.email,tblcustomer.id_num,tblshopowner.shopName,tblshopowner.email,tblshopowner.address,date_Time,status

	
	private int orderId;
	private String itemDescription;
	private double itemPrice;
	private int quantity;
	private String customerName;
	private String customerSurname;
	private String customerPhone;
	private String customerEmail;
	private String customerIdNo;
	private String shopName;
	private String shopOwnerEmail;
	private String shopOwnerAddress;
	private String orderDateTime;
	private String orderStatus;
    private double totalPrice;
    
    public boolean selected;
    
    public Order() {
		// TODO Auto-generated constructor stub
	}

	public Order(int orderId, String itemDescription, double itemPrice,
			int quantity, String customerName, String customerSurname,
			String customerPhone, String customerEmail, String customerIdNo,
			String shopName, String shopOwnerEmail, String shopOwnerAddress,
			String orderDateTime, String orderStatus) {
		super();
		this.orderId = orderId;
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
		this.quantity = quantity;
		this.customerName = customerName;
		this.customerSurname = customerSurname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.customerIdNo = customerIdNo;
		this.shopName = shopName;
		this.shopOwnerEmail = shopOwnerEmail;
		this.shopOwnerAddress = shopOwnerAddress;
		this.orderDateTime = orderDateTime;
		this.orderStatus = orderStatus;
	}

	public Order(int orderId, String itemDescription, double itemPrice,
			int quantity, String customerName, String customerSurname,
			String customerPhone, String customerEmail, String customerIdNo,
			String shopName, String shopOwnerEmail, String shopOwnerAddress,
			String orderDateTime, String orderStatus, double totalPrice) {
		super();
		this.orderId = orderId;
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
		this.quantity = quantity;
		this.customerName = customerName;
		this.customerSurname = customerSurname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.customerIdNo = customerIdNo;
		this.shopName = shopName;
		this.shopOwnerEmail = shopOwnerEmail;
		this.shopOwnerAddress = shopOwnerAddress;
		this.orderDateTime = orderDateTime;
		this.orderStatus = orderStatus;
		this.totalPrice = totalPrice;
	}

	public Order(int orderId, String itemDescription, double itemPrice,
			int quantity, String customerName, String customerSurname,
			String customerPhone, String customerEmail, String customerIdNo,
			String shopName, String shopOwnerEmail, String shopOwnerAddress,
			String orderDateTime, String orderStatus, double totalPrice,
			boolean selected) {
		super();
		this.orderId = orderId;
		this.itemDescription = itemDescription;
		this.itemPrice = itemPrice;
		this.quantity = quantity;
		this.customerName = customerName;
		this.customerSurname = customerSurname;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.customerIdNo = customerIdNo;
		this.shopName = shopName;
		this.shopOwnerEmail = shopOwnerEmail;
		this.shopOwnerAddress = shopOwnerAddress;
		this.orderDateTime = orderDateTime;
		this.orderStatus = orderStatus;
		this.totalPrice = totalPrice;
		this.selected = selected;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerSurname() {
		return customerSurname;
	}

	public void setCustomerSurname(String customerSurname) {
		this.customerSurname = customerSurname;
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

	public String getCustomerIdNo() {
		return customerIdNo;
	}

	public void setCustomerIdNo(String customerIdNo) {
		this.customerIdNo = customerIdNo;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopOwnerEmail() {
		return shopOwnerEmail;
	}

	public void setShopOwnerEmail(String shopOwnerEmail) {
		this.shopOwnerEmail = shopOwnerEmail;
	}

	public String getShopOwnerAddress() {
		return shopOwnerAddress;
	}

	public void setShopOwnerAddress(String shopOwnerAddress) {
		this.shopOwnerAddress = shopOwnerAddress;
	}

	public String getOrderDateTime() {
		return orderDateTime;
	}

	public void setOrderDateTime(String orderDateTime) {
		this.orderDateTime = orderDateTime;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public boolean isSelected() {
		return selected;
	}

	public void setSelected(boolean selected) {
		this.selected = selected;
	}

}
