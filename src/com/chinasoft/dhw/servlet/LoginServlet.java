package com.chinasoft.dhw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chinasoft.dhw.entity.User;
import com.chinasoft.dhw.service.UserSevice;
import com.chinasoft.dhw.service.UserSeviceImpl;

public class LoginServlet extends HttpServlet {

	
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
		User user = new User(username,password);
		UserSevice userSevice = new UserSeviceImpl();
		boolean flag = userSevice.login(user);
		if(flag){
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			/*Cookie username_cookie = new Cookie("username",username);
			Cookie password_cookie = new Cookie("password",password);
			username_cookie.setMaxAge(24*3600);
			password_cookie.setMaxAge(24*3600);
			response.addCookie(username_cookie);
			response.addCookie(password_cookie);*/
			request.setAttribute("username", username);
			request.getRequestDispatcher("/index.jsp").forward(request,response);
		}else{
			response.sendRedirect("login.html");
		}
		
	}

}
