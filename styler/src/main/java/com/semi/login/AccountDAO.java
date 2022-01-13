package com.semi.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.semi.main.DBManager;

public class AccountDAO {

	public static void loginCheck(HttpServletRequest request) {

		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");

		if (a == null) {
			// �α��� ����
			System.out.println("�α��� ����");
			request.setAttribute("loginPage", "login/login.jsp");
		} else {
			// �α��� ����
			System.out.println("�α��� ����");
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
					a.setProfileImg(rs.getString("u_profileimg"));
					a.setTypeOfManger(rs.getString("u_typeOfManager"));
					a.setCheckPoint(rs.getString("u_checkpoint"));
					a.setCheckDate(rs.getString("u_checkDate"));
					HttpSession hs = request.getSession();
					hs.setAttribute("accountInfo", a);
					hs.setMaxInactiveInterval(1800);

					request.setAttribute("r", "�α��� ����!");
				} else {
					request.setAttribute("r", "��й�ȣ ����!");
				}
			} else {
				request.setAttribute("r", "�������� �ʴ� ȸ�� �Դϴ�");
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

		request.setAttribute("loginPage", "login/login.jsp");
	}

	public static void reg(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into USERS values (?,?,?,?,?,?,?,?,?,?,?)";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			String id = mr.getParameter("id");
			String pw = mr.getParameter("pw");
			String name = mr.getParameter("name1");
			String nickname = mr.getParameter("nickname");
			String email = mr.getParameter("email");
			String gender = mr.getParameter("gender");
			String style = mr.getParameter("style");
			String profileImg = mr.getFilesystemName("profileImg");

			LocalDate now = LocalDate.now();
			// ���� ����
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			// ���� ����
			String formatedNow = now.format(formatter);

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
			pstmt.setString(9, "0");
			pstmt.setString(10, "0");
			pstmt.setString(11, formatedNow);
			if (pstmt.executeUpdate() == 1) {

				System.out.println("��� ����");
			} else {
				System.out.println("��� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ���� ����");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void update(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// String sql = "update users set (u_pw, u_nickname, u_email, u_style,
		// u_profileImg) = (?,?,?,?,?) where u_id=?";
		String sql = "update users set u_pw=?, u_nickname=?," + "u_email=?,u_style=? where u_id=?";
		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			String pw = mr.getParameter("pw");
			String nickname = mr.getParameter("nickname");
			String email = mr.getParameter("email");
			String id = mr.getParameter("id");
			String style = mr.getParameter("style");

			pstmt.setString(1, pw);
			pstmt.setString(2, nickname);
			pstmt.setString(3, email);
			pstmt.setString(4, style);
			pstmt.setString(5, id);

			if (pstmt.executeUpdate() == 1) {
				String sql2 = "select * from users where u_id = ?";
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					String dbPW = rs.getString("u_pw");

					if (pw.equals(dbPW)) {

						Account a = new Account();
						a.setId(rs.getString("u_id"));
						a.setPw(rs.getString("u_pw"));
						a.setName(rs.getString("u_name"));
						a.setNickname(rs.getString("u_nickname"));
						a.setEmail(rs.getString("u_email"));
						a.setGender(rs.getString("u_gender"));
						a.setStyle(rs.getString("u_style"));
						a.setProfileImg(rs.getString("u_profileimg"));
						a.setTypeOfManger(rs.getString("u_typeOfManager"));
						a.setCheckPoint(rs.getString("u_checkpoint"));
						a.setCheckDate(rs.getString("u_checkDate"));
						HttpSession hs = request.getSession();
						hs.setAttribute("accountInfo", a);
						hs.setMaxInactiveInterval(1800);

						System.out.println("��������");
					}
				}

			} else {

				System.out.println("��������");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB��������-������");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void signOut(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete from users where u_id = ?";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String id = request.getParameter("id");

			pstmt.setString(1, id);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("Ż�� ����");
			} else {
				System.out.println("Ż�� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ���� ����");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void changeImg(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// String sql = "update users set (u_pw, u_nickname, u_email, u_style,
		// u_profileImg) = (?,?,?,?,?) where u_id=?";
		String sql = "update users set u_profileImg=? where u_id=?";
		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String path = request.getSession().getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 30 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			String id = mr.getParameter("id");
			String style = mr.getFilesystemName("img");

			pstmt.setString(1, style);
			pstmt.setString(2, id);

			if (pstmt.executeUpdate() == 1) {
				String sql2 = "select * from users where u_id = ?";
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					String dbPW = rs.getString("u_pw");

					Account a = new Account();
					a.setId(rs.getString("u_id"));
					a.setPw(rs.getString("u_pw"));
					a.setName(rs.getString("u_name"));
					a.setNickname(rs.getString("u_nickname"));
					a.setEmail(rs.getString("u_email"));
					a.setGender(rs.getString("u_gender"));
					a.setStyle(rs.getString("u_style"));
					a.setProfileImg(rs.getString("u_profileimg"));
					a.setTypeOfManger(rs.getString("u_typeOfManager"));
					a.setCheckPoint(rs.getString("u_checkpoint"));
					a.setCheckDate(rs.getString("u_checkDate"));
					HttpSession hs = request.getSession();
					hs.setAttribute("accountInfo", a);
					hs.setMaxInactiveInterval(1800);

					System.out.println("��������");

				}

			} else {

				System.out.println("��������");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB��������-������");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void levelUp(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "update users set u_checkPoint=?, u_typeOfManager=?" + " where u_id=?";
		try {

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String pw = request.getParameter("pw");
			int checkPoint = Integer.parseInt(request.getParameter("checkPoint"));
			String typeOfManager = request.getParameter("typeOfManger");
			String id = request.getParameter("id");

			if (typeOfManager.equals("�����") && checkPoint >= 100) {
				pstmt.setInt(1, checkPoint - 100);
				pstmt.setString(2, "�ǹ�");
				pstmt.setString(3, id);
			} else if (typeOfManager.equals("�ǹ�") && checkPoint >= 200) {
				pstmt.setInt(1, checkPoint - 100);
				pstmt.setString(2, "���");
				pstmt.setString(3, id);

			} else if (typeOfManager.equals("���") && checkPoint >= 1000) {
				pstmt.setInt(1, checkPoint - 100);
				pstmt.setString(2, "�÷�Ƽ��");
				pstmt.setString(3, id);

			} else {
				pstmt.setInt(1, checkPoint);
				pstmt.setString(2, typeOfManager);
				pstmt.setString(3, id);
			}

			if (pstmt.executeUpdate() == 1) {
				String sql2 = "select * from users where u_id = ?";
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					String dbPW = rs.getString("u_pw");

					if (pw.equals(dbPW)) {

						Account a = new Account();
						a.setId(rs.getString("u_id"));
						a.setPw(rs.getString("u_pw"));
						a.setName(rs.getString("u_name"));
						a.setNickname(rs.getString("u_nickname"));
						a.setEmail(rs.getString("u_email"));
						a.setGender(rs.getString("u_gender"));
						a.setStyle(rs.getString("u_style"));
						a.setProfileImg(rs.getString("u_profileimg"));
						a.setTypeOfManger(rs.getString("u_typeOfManager"));
						a.setCheckPoint(rs.getString("u_checkpoint"));
						a.setCheckDate(rs.getString("u_checkDate"));
						HttpSession hs = request.getSession();
						hs.setAttribute("accountInfo", a);
						hs.setMaxInactiveInterval(1800);

						System.out.println("��������");
					}
				}

			} else {

				System.out.println("��������");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB��������-������");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

}
