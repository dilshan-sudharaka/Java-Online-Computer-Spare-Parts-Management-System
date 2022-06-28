package com.order;

public class Order {

	private int T_ID;
	private String date;
	private String name;
	private String p_id;
	private String category;
	private String brand;
	private String c_name;
	private String c_add;
	private String con_number;
	private double price;
	private int quantity;
	private double to_price;
	
	public Order(int t_ID, String date, String name, String p_id, String category, String brand, String c_name,
			String c_add, String con_number, double price, int quantity, double to_price) {
		
		T_ID = t_ID;
		this.date = date;
		this.name = name;
		this.p_id = p_id;
		this.category = category;
		this.brand = brand;
		this.c_name = c_name;
		this.c_add = c_add;
		this.con_number = con_number;
		this.price = price;
		this.quantity = quantity;
		this.to_price = to_price;
	}

	public int getT_ID() {
		return T_ID;
	}

	public String getDate() {
		return date;
	}

	public String getName() {
		return name;
	}

	public String getP_id() {
		return p_id;
	}

	public String getCategory() {
		return category;
	}

	public String getBrand() {
		return brand;
	}

	public String getC_name() {
		return c_name;
	}

	public String getC_add() {
		return c_add;
	}

	public String getCon_number() {
		return con_number;
	}

	public double getPrice() {
		return price;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getTo_price() {
		return to_price;
	}
	
	
}
