package com.semi.game;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.semi.main.DBManager;



public class GameDAO {
	
	public static int coin() {
		Random rand = new Random();
		int num = (rand.nextInt(2)+1)*10;
		System.out.println("출석포인트" + num);
		
		return num;
		
	}

	public static void game(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		
		String sql = "update users set u_checkPoint=? where u_id=?";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			
			
			
			
			
			pstmt.setInt(1, Integer.parseInt(request.getParameter("checkPoint")) + coin());
			pstmt.setString(2, request.getParameter("id"));
			
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("출석성공");
			} else {
				System.out.println("출석실패");

			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB문제");

		} finally {
			DBManager.close(con, pstmt, null);
		}

		
	}

}
