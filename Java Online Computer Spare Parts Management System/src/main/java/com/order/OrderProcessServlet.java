package com.order;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderProcessServlet")
public class OrderProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Date date = Calendar.getInstance().getTime();  
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
        String orDate = dateFormat.format(date);
        
        String name = request.getParameter("name");
        String p_id = request.getParameter("ID");
        String category = request.getParameter("category");
        String brand = request.getParameter("brand");
        String c_name = request.getParameter("c_name");
        String c_add = request.getParameter("c_add");
        String con_number = request.getParameter("con_number");
        
        String s_qu = request.getParameter("s_quantity");
        int store_quantity = Integer.parseInt(s_qu);
        
        String pr = request.getParameter("price");
        double price = Double.parseDouble(pr);
        
        String qu = request.getParameter("quantity");
        int quantity = Integer.parseInt(qu);
        
        double to_price = price * quantity;
        
        int current_quantity = store_quantity - quantity;
        
        
        boolean isTrue;
        
        
        isTrue = OrderProcessDBUtil.insertOrderDetails(orDate, name, p_id, category, brand, c_name, c_add, con_number, price, quantity, to_price);
        
        
		if(isTrue == true) {
			
			try {
				List<Order> ordDetails = OrderProcessDBUtil.getOrderDetails(c_name);
				request.setAttribute("ordDetails", ordDetails);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			try {
				OrderProcessDBUtil.updateProductTable(p_id, current_quantity);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			
			RequestDispatcher dis = request.getRequestDispatcher("generateBill.jsp");
			dis.forward(request, response);
			
			
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		
	}

}
