<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
	<td >프사</td>
	</tr>
	<tr>
	<td colspan="2">- 로그인 정보</td>
	</tr>
	<tr>
	<td>닉네임</td>
	<td>${sessionScope.accountInfo.nickname }</td>
	</tr>
	<tr>
	<td>아이디</td>
	<td>${sessionScope.accountInfo.id }</td>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td>${sessionScope.accountInfo.pw }</td>
	</tr>
	<tr>
	<td colspan="2">- 개인정보</td>
	</tr>
	<tr>
	<td>이름</td>
	<td>${sessionScope.accountInfo.name }</td>
	</tr>
	<tr>
	<td>성별</td>
	<td>${sessionScope.accountInfo.gender }</td>
	</tr>
	<tr>
	<td>이메일</td>
	<td>${sessionScope.accountInfo.email }</td>
	</tr>
	<tr>
	<td>옷취향</td>
	<td>${sessionScope.accountInfo.style }</td>
	</tr>
	</table>
	<button onclick="location.href='UpdateAccountC'">수정하기</button>
	<button onclick="location.href='SignOutC'"> 회원탈퇴</button>
				
	
	

</body>
</html>