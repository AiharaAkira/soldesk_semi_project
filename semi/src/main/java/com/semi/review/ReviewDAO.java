package com.semi.review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewDAO {

	public static void getAllReview(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from post_review";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Review> reviews = new ArrayList<Review>();
			Review r = null;
			
			while (rs.next()) {
				r = new Review();
				r.setNo(rs.getString("p_no"));
				r.setTitle(rs.getString("p_title"));
				r.setText(rs.getString("p_text"));
				r.setGood(rs.getString("p_good"));
				r.setTop(rs.getString("p_text"));
				r.setPants(rs.getString("p_text"));
				r.setShoes(rs.getString("p_text"));
				r.setAccessary(rs.getString("p_text"));
				r.setHashtag(rs.getString("p_text"));
				r.setImg(rs.getString("p_img"));
				r.setItem(rs.getString("p_item"));
				r.setComment(rs.getString("p_comment"));
				r.setUser(rs.getString("p_user"));
				reviews.add(r);
				
				
			}
			
			request.setAttribute("reviews", reviews);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		
			
	}

	public static void writeReview(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
			
		try {
			con = DBManager.connect();
			String sql = "insert into post_review values (post_review_seq.nextval, ?, ?, 'good', ?, ?, ?, ?, 'hashtag', ?, sysdate, 'item', 'comment', 'user')";
			pstmt = con.prepareStatement(sql);
			String saveDirectory = request.getServletContext().getRealPath("img");
			
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 99999999, "utf-8", new DefaultFileRenamePolicy());
			
			String fileName = mr.getFilesystemName("image");
			String top = mr.getParameter("top");
			String pants = mr.getParameter("pants");
			String shoes = mr.getParameter("shoes");
			String accessary = mr.getParameter("accessary");
			String title = mr.getParameter("title");
			String text = mr.getParameter("text");
			
			
			System.out.println(fileName);
			System.out.println(top);
			System.out.println(pants);
			System.out.println(shoes);
			System.out.println(accessary);
			System.out.println(title);
			System.out.println(text);
			
			pstmt.setString(1, title);
			pstmt.setString(2, text);
			pstmt.setString(3, top);
			pstmt.setString(4, pants);
			pstmt.setString(5, shoes);
			pstmt.setString(6, accessary);
			pstmt.setString(7, fileName);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("res", "Update");
			} else {
				request.setAttribute("res", "failed");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("res", "db error");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

}
