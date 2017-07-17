package com.chinasoft.dhw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasoft.dhw.entity.ShopCart;
import com.chinasoft.dhw.service.ShopSevice;
import com.chinasoft.dhw.service.ShopSeviceImpl;

public class ShowServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String pname = request.getParameter("name");
		System.out.println(pname);
		String[] colors = request.getParameterValues("color");
		String color = colors[0];
	    String[] sizes = request.getParameterValues("size");
	    String size = sizes[0];
		int number = Integer.parseInt(request.getParameter("number"));
		double price = Double.parseDouble(request.getParameter("price"));
		//System.out.println(number);
		ShopCart shopcart = new ShopCart(pname,color,size,number,price*number);
		ShopSevice shopSevice = new ShopSeviceImpl();
		shopSevice.add(shopcart);
		request.getRequestDispatcher("/show.jsp").forward(request,response);
	}

}
