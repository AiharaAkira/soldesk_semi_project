package com.semi.free;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FreeDetailC")
public class FreeDetailC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		FreeDAO.getFreeDetail(request);
		FreeDAO.getNextFreeDetail(request);
		FreeDAO.getPrevFreeDetail(request);
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/freeDetail.jsp");
		
		request.getRequestDispatcher("index.jsp").forward(request, response);


		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
