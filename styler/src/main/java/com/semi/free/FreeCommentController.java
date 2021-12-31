package com.semi.free;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.login.AccountDAO;

@WebServlet("/FreeCommentController")
public class FreeCommentController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FreeDAO.writeComment(request);
		
		FreeDAO.getFreeDetail(request);
		FreeDAO.getComment(request);
		FreeDAO.countComment(request);
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
