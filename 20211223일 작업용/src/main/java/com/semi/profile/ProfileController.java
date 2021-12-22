package com.semi.profile;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "profile/profile.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	if(!request.getParameterNames().hasMoreElements()) {
		request.setAttribute("contentPage", "profile/profileNext.jsp");
	}else {
		//수정
		//정보출력
		request.setAttribute("contentPage", "profile/profile.jsp");
		
	}
	request.setAttribute("loginPage", "login/login.jsp");
	request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
