<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginController" method="post">
	<table border="1">
		<tr>
			<td colspan="3"> <input placeholder="���̵�"> </td>
		</tr>
		<tr>
			<td colspan="3"><input placeholder="��й�ȣ"></td>
		</tr>
		<tr>
			<td colspan="3"> <button>�α���</button></td>
		</tr>
		<tr>
			<td>���̵�ã��</td><td>���ã��</td><td onclick="location.href='SignUp'">ȸ������</td>
		</tr>
	</table>
	</form>
</body>
</html>