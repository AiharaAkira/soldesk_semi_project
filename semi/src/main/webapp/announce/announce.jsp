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
	
	
	
	<form action="AnnounceController">
	<table border="1">
	
				<tr>
			<td onclick="location.href='HomeController'">Ÿ��Ʋ</td>
			<td>�˻�</td>
			<td onclick="location.href='ProfileController'">������</td>
			
		</tr>
		
		<tr>
			<td colspan="4">
			<table border="1">
				<tr>
					<form action="Search">
					<td colspan="2"> <input> </td>
					<td> <button>�˻��ϱ�</button> </td>
					</form>
				</tr>
				<tr>
					<td colspan="2">
						<select>
							<option>
							�Խ��Ǽ���
							</option>
						</select>
					</td>
					<td colspan="2">
						<select>
							<option>
							������
							</option>
						</select>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		
		<tr>
			<td colspan="4">
				<table border="1">
					<tr>
							<td>�α��</td>
							<td>�ֽű�</td>
							<td>��ۼ�</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td>����</td>
			<td>������</td>
			<td>�ۼ���</td>
			<td>��¥</td>
		</tr>
		<tr>
			<td>����</td>
			<td colspan="2">�۱۱�</td>
			<td>��¥</td>
		</tr>
		<c:forEach var="post" items="${plzText}">
			<tr>
			<td>����</td>
			<td>${plzText}</td>
			<td>${plzText}</td>
		</tr>
		</c:forEach>
		<tr>
			<td onclick="location.href='AnnounceWriteController'">�۾���(������)</td>
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