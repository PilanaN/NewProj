package com.app.sephatlho.model;

import java.io.Serializable;


public class Customer implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
    private String name;
	private String surname;
	private String phoneNumber;
	private String email;
	private Login login;
	private String idNumber;
	
	public Customer(int id, String name, String surname, String phoneNumber,
			String email) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}

	public Customer(int id, String name, String surname, String phoneNumber,
			String email, Login login) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.login = login;
	}

	public Customer(int id, String name, String surname, String phoneNumber,
			String email, Login login, String idNumber) {
		super();
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.login = login;
		this.idNumber = idNumber;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	
	@Override
	public String toString() {
		String strCustomer = "Customer: " + getName() + " " + getSurname() 
				+ "\nPhone:\t" + getPhoneNumber() + "\nEmail:\t" + getEmail();
		return strCustomer;
	}
	
}
