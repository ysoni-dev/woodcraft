package com.niit.model;

public class Fcart {
	

	public Fcart(String item_name, int price, int quantity, String image) {
		super();
		this.item_name = item_name;
		this.price = price;
		this.quantity = quantity;
		this.image = image;
		
	}
	
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	String item_name;
	int price;
	int  quantity;
	String image;
}
