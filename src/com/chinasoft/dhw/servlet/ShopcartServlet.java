package com.chinasoft.dhw.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasoft.dhw.entity.ShopCart;
import com.chinasoft.dhw.service.ShopSevice;
import com.chinasoft.dhw.service.ShopSeviceImpl;

public class ShopcartServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(123);	
		//String name1 = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		ShopSevice shopSevice = new ShopSeviceImpl();
		List<ShopCart> list = shopSevice.get();
		Iterator it = list.iterator();
		while(it.hasNext()){
			System.out.println(it.next());
		}
		request.setAttribute("list",list);
		request.getRequestDispatcher("/shopcart.jsp").forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
