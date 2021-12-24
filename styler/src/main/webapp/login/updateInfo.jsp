<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="UpdateAccountC" method="post" enctype="multipart/form-data">
<table border="1">
	<tr>
	<td colspan="2">회원정보 수정</td>
	</tr>
	<tr>
	<td>프사</td>
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
	<td><input name="pw2">
	<input name="pw" value="${sessionScope.accountInfo.name }" type="hidden">
	</td>
	</tr>
	<tr>
	<td colspan="2">- 개인정보</td>
	</tr>
	<tr>
	<td>이름</td>
	<td><input name="name" value="${sessionScope.accountInfo.name }"></td>
	</tr>
	<tr>
	<td>성별</td>
	<td>${sessionScope.accountInfo.gender }</td>
	</tr>
	<tr>
	<td>이메일</td>
	<td><input name="name" value="${sessionScope.accountInfo.email }"></td>
	</tr>
	<tr>
	<td>옷취향</td>
	<td> <select name="style">
					<option value="casual">캐쥬얼</option>
					<option value="Street">스트리트</option>
					<option value="vintage">빈티지</option>
					<option value="dandy">댄디</option>
				</select> </td>
	</tr>
	</table>
	<button>저장하기</button>
	</form>
</body>
</html>