package com.semi.game;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.free.FreeDAO;
import com.semi.login.AccountDAO;


@WebServlet("/GameController")
public class GameController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
	request.setAttribute("loginPage", "login/login.jsp");
	request.setAttribute("contentPage", "game/game.jsp");
	request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		
	request.setAttribute("loginPage", "login/login.jsp");
	request.setAttribute("contentPage", "home/home.jsp");
	request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
