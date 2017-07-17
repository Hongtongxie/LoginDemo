package com.chinasoft.dhw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasoft.dhw.entity.User;
import com.chinasoft.dhw.service.UserSevice;
import com.chinasoft.dhw.service.UserSeviceImpl;

public class RegisterServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
       doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password1 = request.getParameter("password1");
		User user = new User(username,password);
		UserSevice userSevice = new UserSeviceImpl();
		boolean flag = userSevice.register(user);
		if(flag){
			/*request.setAttribute("username", username);*/
			request.getRequestDispatcher("/index.jsp").forward(request,response);
		}else{
			response.sendRedirect("register.html");
		}
		
		
	}

}
