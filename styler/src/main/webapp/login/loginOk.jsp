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
		<td>${r } 로그인!! </td>
		</tr>
		<tr>
				<td  onclick="location.href='InfoController'">회원정보</td>
		</tr>
		<tr>
				<td  onclick="location.href='LoginController'">로그아웃</td>
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