package com.semi.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.login.AccountDAO;

@WebServlet("/SearchQna")
public class SearchQna extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.loginCheck(request);
		//입력받은 제목or내용or작성자 받아서 전체조회하는 모델
		
		request.setAttribute("loginPage", "login/login.jsp");
		request.setAttribute("contentPage", "qna/qna.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
