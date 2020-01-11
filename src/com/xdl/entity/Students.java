package com.xdl.entity;

public class Students {
int id;
String name;
String password;
String phone;
String email;

public Students() {
	super();
}
public Students(String name, String password, String phone, String email ) {
	super();
	this.name = name;
	this.password = password;
	this.phone = phone;
	this.email = email;

}
public Students(int id, String name, String password, String phone, String email) {
	super();
	this.id=id;
	this.name = name;
	this.password = password;
	this.phone = phone;
	this.email = email;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
public String toString() {
	return "Students [id=" + id + ", name=" + name + ", password=" + password + ", phone=" + phone + ", email=" + email + "]";
}
}
