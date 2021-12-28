<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sidebar.css">
</head>
<body>
				<table border="1">
					<tr>
						<td onclick="location.href='LoginController'"> 로그인</td>
					</tr>
					<tr>
						<td onclick="location.href='SignUpC'"> 회원가입</td>
					</tr>
			<%-- 		<tr>
					<td onclick="location.href='SignOut'"> 회원탈퇴</td>
					</tr>
			--%>
				</table>
				<button onclick="toggle_div()">✅사이드바</button>
					<div class="sidebar" id="sidebar">
						<ul>
							<li><a href="AnnounceController">공지사항</a></li>						
							<li><a href="ReviewController">리뷰</a></li>						
							<li><a href="DailyController">데일리</a></li>						
							<li><a href="FreeController">자유게시판</a></li>						
							<li><a href="QnaController">문의게시판</a></li>						
							<li><a href="GameController">게임</a></li>						
						</ul>
					</div>

<script type="text/javascript" src="js/sidebar.js"></script>
</body>
</html>