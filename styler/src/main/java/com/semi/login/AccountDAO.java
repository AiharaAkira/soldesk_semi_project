package com.semi.login;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.semi.main.DBManager;




public class AccountDAO {

public static void loginCheck(HttpServletRequest request) {
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		if(a == null) {
			// 로그인 실패
			System.out.println("로그인 실패");
			request.setAttribute("loginPage", "login/login.jsp");
		} else {
			// 로그인 성공
			System.out.println("로그인 성공");
			request.setAttribute("loginPage", "login/loginOk.jsp");
		}
		
	}
	
	
	
	
	public static void login(HttpServletRequest request) {
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "select * from users where u_id = ?";
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String dbPW = rs.getString("u_pw");
				
				if (userPw.equals(dbPW)) {
					
					Account a = new Account();
					a.setId(rs.getString("u_id"));
					a.setPw(rs.getString("u_pw"));
					a.setName(rs.getString("u_name"));
					a.setNickname(rs.getString("u_nickname"));
					a.setEmail(rs.getString("u_email"));
					a.setGender(rs.getString("u_gender"));
					a.setStyle(rs.getString("u_style"));
					a.setProfileImg(rs.getString("u_profileImg"));
					a.setTypeOfManger(rs.getString("u_typeOfManger"));
					a.setCheckPoint(rs.getString("u_checkPoint"));
					
					HttpSession hs = request.getSession();
					hs.setAttribute("accountInfo", a);
					
					
					
					request.setAttribute("r", "로그인 성공!");
				} else {
					request.setAttribute("r", "비밀번호 오류!");
				}
			} else {
				request.setAttribute("r", "존재하지 않는 회원 입니다");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}
	
	public static void logOut(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		hs.setAttribute("accountInfo", null);
		
		request.setAttribute("r", "로그아웃 성공");
	}

public static void reg(HttpServletRequest request) {

	Connection con = null;
	PreparedStatement pstmt = null;
	String sql = "insert into USERS values ('?','?','?','?','?','?','?','?','?','?')";
	
	
	try {
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		
		String path = request.getSession().getServletContext().getRealPath("file");
		MultipartRequest mr = new MultipartRequest(request, path,
				3145780, "utf-8", new DefaultFileRenamePolicy());
		
		String id = mr.getParameter("id");
		String pw = mr.getParameter("pw");
		String name = mr.getParameter("name");
		String nickname = mr.getParameter("nickname");
		String email = mr.getParameter("email");
		String gender = mr.getParameter("gender");
		String style = mr.getParameter("style");
		String profileImg = mr.getFilesystemName("profileImg");
		String typeOfManager = "0";
		String checkPoint = "1";
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(nickname);
		System.out.println(email);
		System.out.println(gender);
		System.out.println(style);
		System.out.println(profileImg);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, nickname);
		pstmt.setString(5, email);
		pstmt.setString(6, gender);
		pstmt.setString(7, style);
		pstmt.setString(8, profileImg);
		pstmt.setString(9, typeOfManager);
		pstmt.setString(10, checkPoint);
		
		if (pstmt.executeUpdate() == 1) {
			System.out.println("등록 성공");
		}else {
			System.out.println("등록 실패");
		}
	} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("r", "DB 서버 오류");
	}finally {
		DBManager.close(con, pstmt, null);
	}

}




public static void update(HttpServletRequest request) {
	Connection con = null;
	PreparedStatement pstmt = null;
	String sql = "update USERS set u_pw=?, u_name=?, u_nickname=?"
		+ "u_email=?,u_gender=? u_style=?, u_profileImg=?"
		+ "u_typeOfManager=?, u_checkpoint=? where a_id=?";	
	try {
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		
		String path = request.getSession().getServletContext().getRealPath("file");
		MultipartRequest mr = new MultipartRequest(request, path, 31457280,
				"utf-8",new DefaultFileRenamePolicy());
		
		String pw = mr.getParameter("pw");
		String pw2 = mr.getParameter("pw2");
		String name = mr.getParameter("name");
		String nickname = mr.getParameter("nickname");
		String email = mr.getParameter("email");
		
		
		
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	
	
	
	
	
	
	
	
}

}
