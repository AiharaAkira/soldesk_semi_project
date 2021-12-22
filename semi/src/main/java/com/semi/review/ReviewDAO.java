package com.semi.review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
				
				System.out.println(r.getGood());
				System.out.println(r.getAccessary());
			}
			
			request.setAttribute("reviews", reviews);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBManager.close(con, pstmt, rs);
		}
		
			
	}

}
