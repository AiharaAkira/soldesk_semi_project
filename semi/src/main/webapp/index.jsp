<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/style.css">
</head>
<body>

	<table border="1">
		<tr>
			<td>
				<jsp:include page="${loginPage}"></jsp:include>
			</td>
			<td rowspan="8">
			<jsp:include page="${contentPage}"></jsp:include>
			</td>
		<tr>	
			<td>공지사항</td>
		</tr>	
		<tr>
			<td onclick="location.href='ReviewController'">리뷰</td>
		</tr>
		<tr>	
			<td>데일리</td>
		</tr>
		<tr>	
			<td onclick="location.href='FreeController'">자유게시판</td>
		</tr>	
		<tr>
			<td>문의게시판</td>
		</tr>
		<tr>	
			<td>게임</td>
		</tr>
		<tr>	
			<td onclick="location.href='HomeController'">로고</td>
			
		</tr>	
		
		<tr>
			
		</tr>
	</table>
	
</body>
</html>