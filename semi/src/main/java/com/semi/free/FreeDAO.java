package com.semi.free;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class FreeDAO {

	public static void getAllText(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from post order by p_date desc";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<Post> posts = new ArrayList<Post>();
			Post p = null;
			while (rs.next()) {
				p = new Post();
				p.setP_no(rs.getString("p_no"));
				p.setP_title(rs.getString("p_title"));
				p.setP_user(rs.getString("p_user"));
				p.setP_date(rs.getDate("p_date"));
				
				posts.add(p);
			}

			request.setAttribute("posts", posts);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void getFreeDetail(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from post where p_no =?";

		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			rs = pstmt.executeQuery();

			Post p = null;
			if(rs.next()) {
				p = new Post();
				p.setP_no(rs.getString("p_no"));
				p.setP_title(rs.getString("p_title"));
				p.setP_text(rs.getString("p_text"));
				p.setP_date(rs.getDate("p_date"));
				p.setP_user(rs.getString("p_user"));
			}
				request.setAttribute("p", p);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public static void writeFree(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		String sql = "insert into post values(post_seq.nextval, ?,?, '0', '0', '0', '0', '0', '0', ?, sysdate, '0', '0', '0')";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("text"));
			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록성공");
			} else {
				System.out.println("등록실패");

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB문제");

		} finally {
			DBManager.close(con, pstmt, null);
		}

		
	}

		
	
}
