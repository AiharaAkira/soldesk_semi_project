package com.semi.detailSearch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.semi.main.DBManager;
import com.semi.review.Review;

public class DetailDAO {

	public static void getAllReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from post_review where p_text like '%'||?||'%'"
				+ " or p_title like '%'||?||'%' or p_price >= ?"
				+ " or ? like '%'||?||'%' order by p_price asc";

		try {
			con = DBManager.connect();
			
			pstmt = con.prepareStatement(sql);
			
			String title = request.getParameter("title");
			int price =  Integer.parseInt(request.getParameter("price"));
			String type = request.getParameter("type");
			
			
			pstmt.setString(1, title);
			pstmt.setString(2, title);
			pstmt.setInt(3, price);
			pstmt.setString(4, type);
			pstmt.setString(5, title);
			rs = pstmt.executeQuery();

			ArrayList<Review> reviews = new ArrayList<Review>();
			Review r = null;

			while (rs.next()) {
				r = new Review();
				r.setNo(rs.getString("p_no"));
				r.setTitle(rs.getString("p_title"));
				r.setText(rs.getString("p_text"));
				r.setGood(rs.getString("p_good"));
				r.setTop(rs.getString("p_top"));
				r.setPants(rs.getString("p_pants"));
				r.setShoes(rs.getString("p_shoes"));
				r.setAccessary(rs.getString("p_accessary"));
				r.setHashtag(rs.getString("p_hashtag"));
				r.setImg(rs.getString("p_img"));
				r.setItem(rs.getString("p_item"));
				r.setComment(rs.getString("p_comment"));
				r.setUser(rs.getString("p_user"));
				reviews.add(r);

			}

			request.setAttribute("reviews", reviews);
			System.out.println("리뷰 가격 검색 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 가격 검색 실패");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

}
