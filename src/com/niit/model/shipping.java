package com.niit.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class shipping {

	@Column
	String  name;
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
	String password;
}
