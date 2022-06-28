package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDBUtil {

	public static List<Product> validate(String id) {
		
		
		ArrayList<Product> pro = new ArrayList<>();
		
		// create database connection
		
		String url = "jdbc:mysql://localhost:3306/ocspms";
		String user = "root";
		String pass = "dilshan";
		
		
		// validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from product where id = '"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int ID = rs.getInt(1);
				String name = rs.getString(2);
				String category = rs.getString(3);
				String brand = rs.getString(4);
				double price = rs.getDouble(5);
				int quantity = rs.getInt(6);
				String availability = rs.getString(7);
				
				Product p = new Product(ID, name, category, brand, price, quantity, availability);
				
				pro.add(p);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return pro;
		
		
		
		
	}

}
