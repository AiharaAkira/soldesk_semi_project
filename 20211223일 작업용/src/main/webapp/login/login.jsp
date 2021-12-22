<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
					<tr>
						<td onclick="location.href='SignOut'"> 회원탈퇴</td>
					</tr>
				</table>
				<button onclick="toggle_div()">사이드바 테스트</button>
					<div class="sidebar" id="sidebar">
						<ul>
							<li><a href="#">공지사항</a></li>						
							<li><a href="#">리뷰</a></li>						
							<li><a href="#">데일리</a></li>						
							<li><a href="#">자유게시판</a></li>						
							<li><a href="#">문의게시판</a></li>						
							<li><a href="#">게임</a></li>						
						</ul>
					</div>

<script type="text/javascript" src="js/sidebar.js"></script>
</body>
</html>