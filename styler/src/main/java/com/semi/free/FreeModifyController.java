package com.semi.free;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FreeModifyController")
public class FreeModifyController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		FreeDAO.getFreeDetail(request);
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/freeModify.jsp");

		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 업데이트
		FreeDAO.upadateFreeDetail(request);

		// 조회
		FreeDAO.paging(request);
		FreeDAO.getNoticeList(request);
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "free/free.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
