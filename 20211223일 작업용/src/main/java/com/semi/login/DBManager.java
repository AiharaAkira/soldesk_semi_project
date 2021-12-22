package com.semi.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// DB 관련 작업을 할 때 매번 연결코드를 쓴 이후 작업 해옴

// 그걸 AOP 하자는거 

public class DBManager {
	
	// db작업시에는 어쨋든 연결 해야됨 
	public static Connection connect() throws SQLException {
		
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			return DriverManager.getConnection(url, "cmw","cmw");
	}
	
	// 닫을게 많은데 한번에 닫기
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
		}
		try {
			if (pstmt != null) {
				pstmt.close();
			}
		} catch (Exception e) {
		}
		try {
			if (con != null) {
				con.close();
			}
		} catch (Exception e) {
		}
	}
	
}
