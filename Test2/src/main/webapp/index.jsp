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
			<td>공지사항</td>
			<td>리뷰</td>
			<td>랭킹</td>
			<td>자유게시판</td>
			<td>문의게시판</td>
			<td>게임</td>
			<td>로고</td>
		</tr>
		<tr>
			<td colspan="8">
			<jsp:include page="${contentPage}"></jsp:include>
			</td>
		</tr>
	</table>
	
</body>
</html>