package com.semi.free;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FreeWriteController")
public class FreeWriteController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/freeWrite.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//삽입
		
		FreeDAO.writeFree(request);
		//페이징
		FreeDAO.paging(request);
		//전부나타내기
		FreeDAO.getNoticeList(request);
		
		
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/free.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
