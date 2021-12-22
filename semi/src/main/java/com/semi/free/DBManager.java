package com.semi.free;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//DB관련 작업을 할 때 매번 연결코드를 썼음

// 그걸 AOP 하는 작ㄱ업


public class DBManager {

	
	// db작업시엔 어쩃든 연결해야됨
	public static Connection connect() throws SQLException {
		
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			return DriverManager.getConnection(url, "C##hs", "hs");
		
	}
	
	//닫을게 많은데 한번에 닫기
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		
		try {
			
			if (rs !=null) {
				
				rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
