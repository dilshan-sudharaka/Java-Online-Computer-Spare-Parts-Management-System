package com.product;

public class Product {

	private int ID;
	private String name;
	private String category;
	private String brand;
	private double price;
	private int quantity;
	private String availability;
	
	
	public Product(int iD, String name, String category, String brand, double price, int quantity,
			String availability) {
		
		ID = iD;
		this.name = name;
		this.category = category;
		this.brand = brand;
		this.price = price;
		this.quantity = quantity;
		this.availability = availability;
	}


	public int getID() {
		return ID;
	}


	public String getName() {
		return name;
	}


	public String getCategory() {
		return category;
	}


	public String getBrand() {
		return brand;
	}


	public double getPrice() {
		return price;
	}


	public int getQuantity() {
		return quantity;
	}


	public String getAvailability() {
		return availability;
	}

	
	
}
