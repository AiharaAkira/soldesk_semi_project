<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="FreeController">
	<table border="1">
		<tr>
			<td>종류</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>날짜</td>
		</tr>
		<tr>
			<td>자유글</td>
			<td colspan="2">글글글</td>
			<td>날짜</td>
		</tr>
		<c:forEach var="post" items="${plzText}">
			<tr>
			<td>자유글</td>
			<td>${plzText}</td>
			<td>${plzText}</td>
		</tr>
		</c:forEach>
		<tr>
			<td onclick="location.href='FreeWriteController'">글쓰기</td>
		</tr>
		
		<tr>
			<td colspan="3"> <select name="select">
				<option value="title">제목</option>
				<option value="text">내용</option>
				<option value="writer">작성자</option>
			</select> </td>			
			<td> <button>검색</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>