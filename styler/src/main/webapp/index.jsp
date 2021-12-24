<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link  rel="stylesheet" href="css/style.css">
<link  rel="stylesheet" href="css/reviewDetail.css">
</head>
<body>

	<table id="tbl" border="1">
		<tr>
			<td>
				<jsp:include page="${loginPage}"></jsp:include>
			</td>
			<td rowspan="8">
			<jsp:include page="${contentPage}"></jsp:include>
			</td>
		<tr>	
			<td onclick="location.href='AnnounceController'">공지사항</td>
		</tr>	
		<tr>
			<td onclick="location.href='ReviewController'">리뷰</td>
		</tr>
		<tr>	
			<td onclick="location.href='DailyController'">데일리</td>
		</tr>
		<tr>	
			<td onclick="location.href='FreeController'">자유게시판</td>
		</tr>	
		<tr>
			<td onclick="location.href='QnaController'">문의게시판</td>
		</tr>
		<tr>	
			<td onclick="location.href='GameController'">게임</td>
		</tr>
		<tr>	
			<td onclick="location.href='HomeController'">로고</td>
			
		</tr>	
		
		<tr>
			
		</tr>
	</table>
	
</body>
</html>