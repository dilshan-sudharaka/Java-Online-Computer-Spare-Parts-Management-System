package com.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		try {
			List<Product> proDetails = ProductDBUtil.validate(id);
			request.setAttribute("proDetails", proDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("product.jsp");
		dis.forward(request, response);
		
		/*request.getRequestDispatcher("orderprocess.jsp");*/
	}

}
