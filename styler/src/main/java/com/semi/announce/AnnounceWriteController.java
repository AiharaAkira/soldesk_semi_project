package com.semi.announce;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.login.AccountDAO;

@WebServlet("/AnnounceWriteController")
public class AnnounceWriteController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "announce/announceWrite.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		//글쓰기 관리자권한
		//전체출력
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "announce/announce.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
