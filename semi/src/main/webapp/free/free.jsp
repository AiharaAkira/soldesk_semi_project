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
			<td>����</td>
			<td>������</td>
			<td>�ۼ���</td>
			<td>��¥</td>
		</tr>
		<tr>
			<td>������</td>
			<td colspan="2">�۱۱�</td>
			<td>��¥</td>
		</tr>
		<c:forEach var="post" items="${plzText}">
			<tr>
			<td>������</td>
			<td>${plzText}</td>
			<td>${plzText}</td>
		</tr>
		</c:forEach>
		<tr>
			<td onclick="location.href='FreeWriteController'">�۾���</td>
		</tr>
		
		<tr>
			<td colspan="3"> <select name="select">
				<option value="title">����</option>
				<option value="text">����</option>
				<option value="writer">�ۼ���</option>
			</select> </td>			
			<td> <button>�˻�</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>