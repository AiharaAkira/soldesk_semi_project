package com.semi.free;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.login.AccountDAO;

@WebServlet("/FreeController")
public class FreeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("selected") == null||request.getParameter("selected").length() ==0) {
			
			
			//FreeDAO.getAllText(request);
			
			FreeDAO.paging(request);
			FreeDAO.getNoticeList(request);
			request.setAttribute("loginPage", "login/login.jsp");
			request.setAttribute("contentPage", "free/free.jsp");
		}
		else{
		//°Ë»ö
			
			AccountDAO.loginCheck(request);
			
			FreeDAO.doSearch(request);
			FreeDAO.searchPaging(request);
			
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/free.jsp");

	}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
