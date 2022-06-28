package com.order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderProcessDBUtil {

	public static boolean insertOrderDetails(String orDate, String name, String p_id, String category, String brand,
			String c_name, String c_add, String con_number, double price, int quantity, double to_price) {
		
		
		boolean isSuccess = false;
		
		// create database connection
		String url = "jdbc:mysql://localhost:3306/ocspms";
		String user = "root";
		String pass = "dilshan";
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into test values(0, '"+orDate+"', '"+name+"', '"+p_id+"', '"+category+"', '"+brand+"', '"+c_name+"', '"+c_add+"', '"+con_number+"', '"+price+"', '"+quantity+"', '"+to_price+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	public static List<Order> getOrderDetails(String c_name) {
		
		ArrayList<Order> ord = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/ocspms";
		String user = "root";
		String pass = "dilshan";
		
		// validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from test where c_name='"+c_name+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int T_ID = rs.getInt(1);
				String date = rs.getString(2);
				String name = rs.getString(3);
				String P_id = rs.getString(4);
				String category = rs.getString(5);
				String brand = rs.getString(6);
				String C_name = rs.getString(7);
				String c_add = rs.getString(8);
				String con_number = rs.getString(9);
				double price = rs.getDouble(10);
				int quantity = rs.getInt(11);
				double to_price = rs.getDouble(12);
				
				Order o = new Order(T_ID, date, name, P_id, category, brand, C_name, c_add, con_number, price, quantity, to_price);
				
				ord.add(o);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return ord;
	}
	
	
	
	
	
	
	
	
	
	
	

	public static void updateProductTable(String p_id, int current_quantity) {
		
		// create database connection
		String url = "jdbc:mysql://localhost:3306/ocspms";
		String user = "root";
		String pass = "dilshan";
		
		
				
				
		try {
					
			Class.forName("com.mysql.jdbc.Driver");
					
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update product set quantity='"+current_quantity+"' where id = '"+p_id+"'";
			stmt.executeUpdate(sql);
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
	

}
