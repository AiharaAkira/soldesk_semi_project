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
			<td colspan="3"> <input placeholder="아이디"> </td>
		</tr>
		<tr>
			<td colspan="3"><input placeholder="비밀번호"></td>
		</tr>
		<tr>
			<td colspan="3"> <button>로그인</button></td>
		</tr>
		<tr>
			<td>아이디찾기</td><td>비번찾기</td><td onclick="location.href='SignUp'">회원가입</td>
		</tr>
	</table>
	</form>
</body>
</html>