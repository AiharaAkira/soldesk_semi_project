package com.semi.daily;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.login.AccountDAO;


@WebServlet("/DailyCommentDeleteC")
public class DailyCommentDeleteC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	DailyCommentDAO.deleteComment(request);
	DailyDAO.getViewCount(request);
	DailyDAO.getDailyDetail(request);
	DailyCommentDAO.getComment(request);
	DailyCommentDAO.countComment(request);
	
	AccountDAO.loginCheck(request);
	
	request.setAttribute("contentPage", "daily/dailyDetail.jsp");
	
	request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
