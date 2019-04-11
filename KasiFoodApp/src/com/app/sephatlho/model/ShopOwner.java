package com.app.sephatlho.model;

import java.io.Serializable;

public class ShopOwner implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String surname;
	private String phoneNumber;
	private String shopname;
	private String address;
	private String email;
	private String idNo;
	private Login login;
	
	public ShopOwner(int id, String name, String surname, String phoneNumber,
			String shopname, String address, String email) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.shopname = shopname;
		this.address = address;
		this.email = email;
	}

	public ShopOwner(int id, String name, String surname, String phoneNumber,
			String shopname, String address, String email, Login login) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.shopname = shopname;
		this.address = address;
		this.email = email;
		this.login = login;
	}
	
	public ShopOwner(int id, String name, String surname, String phoneNumber,
			String shopname, String address, String email, String idNo,
			Login login) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.shopname = shopname;
		this.address = address;
		this.email = email;
		this.idNo = idNo;
		this.login = login;
	}
	
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
	
	public String getSurname() {
		return surname;
	}
	
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getShopname() {
		return shopname;
	}
	
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getIdNo() {
		return idNo;
	}
	
	public void setIdNo(String idNo) {
		this.idNo = idNo;
	}
	
	public Login getLogin() {
		return login;
	}
	
	public void setLogin(Login login) {
		this.login = login;
	}

}
