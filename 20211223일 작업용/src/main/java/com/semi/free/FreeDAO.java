package com.semi.free;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
				p.setP_img(rs.getString("p_img"));
			}
				request.setAttribute("p", p);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public static void getNextFreeDetail(HttpServletRequest request) {
		//다음글
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from post where p_no =(select p_no from post where p_date >(select p_date from post where p_no =?) and rownum = 1)";
		
		
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
				p.setP_img(rs.getString("p_img"));
			}
			request.setAttribute("p", p);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	public static void getPrevFreeDetail(HttpServletRequest request) {
		//이전글
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from (select * from post order by p_date desc) where p_no =(select p_no from post where p_date >(select p_date from post where p_no =?) and rownum = 1)";
		
		
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
				p.setP_img(rs.getString("p_img"));
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

		String sql = "insert into post values(post_seq.nextval, ?,?, '0', '0', '0', '0', '0', '0', ?, sysdate, '0', '0', ?)";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String saveDirectory = request.getServletContext().getRealPath("free/img");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy()); 

			System.out.println(mr.getParameter("title"));
			System.out.println(mr.getParameter("text"));
			System.out.println(mr.getFilesystemName("img"));
			System.out.println(mr.getParameter("user"));

			pstmt.setString(1, mr.getParameter("title"));
			pstmt.setString(2, mr.getParameter("text"));
			pstmt.setString(3, mr.getFilesystemName("img"));
			pstmt.setString(4, mr.getParameter("user"));
			
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

	
	public static void getNoticeList(HttpServletRequest request) {
		// ?~? 게시글
				Connection con = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				int page = 0;
				if (request.getParameter("pageNum") == null) {
					page = 1;
				}else {
					page = Integer.parseInt(request.getParameter("no"));
				}
				
				int startNum = page-(page-1)%5;
				int lastNum = 23;
				String sql = "select * from ( select rownum num, P.* from (select * from post order by p_date desc) P)"
						+ " where num between ? and ?";

				try {
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, 1+(page-1)*10);
					pstmt.setInt(2, page*10);
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
					request.setAttribute("p", page);
					request.setAttribute("sn", startNum);
					request.setAttribute("ln", lastNum);
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					DBManager.close(con, pstmt, rs);
				}
	}
				
				public static void paging(HttpServletRequest request) {
					// 페이지번호처리
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					// 한 화면에 보여줄 리스트 갯수, 페이징 범위의 갯수
					int pagePerList = 10;
					int pagingCount = 10;
					// 전체게시물 갯수 총페이지수
					int totalContent =0;
					int totalPage =0;
					 //시작과 끝 페이지
					int startPage, endPage;
					
					int page = 0;
					if (request.getParameter("pageNum") == null) {
						page = 1;
					}else {
						page = Integer.parseInt(request.getParameter("no"));
					}
					
					
					// 한 화면에 보여줄 리스트 갯수, 페이징 범위의 갯수
					
					String sql = "select count(*) from post";
					
					try {
						con = DBManager.connect();
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						
						while (rs.next()) {

							totalContent += rs.getInt(1);
							
						}
						
						totalPage = totalContent/ pagePerList;
						if (totalContent%pagePerList>0) {
							totalPage++;
						}
						
						//페이징범위 계산
						startPage= ((page-1)/pagingCount)*pagingCount+1 ;
						endPage = startPage + pagingCount -1;
						
						if (endPage>totalPage) {
							endPage=totalPage;
						}
						
						int[]startEnd = new int [2];
						
						startEnd[0] = startPage;
						startEnd[1] = endPage;
						
						request.setAttribute("startEnd", startEnd);
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						DBManager.close(con, pstmt, rs);
					}

			}
		
	
}
