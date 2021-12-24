<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginController" method="post">
	<table border="1">
		<tr>
			<td colspan="3" onclick="location.href='HomeController'"> 로고 </td>
		</tr>
		<tr>
			<td colspan="3"> <input placeholder="아이디" name="id" > </td>
		</tr>
		<tr>
			<td colspan="3"><input placeholder="비밀번호" name="pw" ></td>
		</tr>
		<tr>
			<td colspan="3"> <button>로그인</button></td>
		</tr>
		<tr>
			<td>아이디찾기</td><td>비번찾기</td><td onclick="location.href='SignUpC'">회원가입</td>
		</tr>
	</table>
	</form>
</body>
</html>