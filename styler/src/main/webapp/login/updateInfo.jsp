<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UpdateAccountC" onsubmit="return call();" name="form"
		method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td colspan="2">회원정보 수정</td>
			</tr>
			<tr>
				<td><img src="img/${sessionScope.accountInfo.profileImg}"></td>
			</tr>
			<tr>
				<td colspan="2">- 로그인 정보</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input name="nickname"
					value="${sessionScope.accountInfo.nickname}"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${sessionScope.accountInfo.id}</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="pw" value="${sessionScope.accountInfo.pw}"></td>
			</tr>
			<tr>
				<td colspan="2">- 개인정보</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${sessionScope.accountInfo.name}</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${sessionScope.accountInfo.gender}</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email"
					value="${sessionScope.accountInfo.email}"></td>
			</tr>
			<tr>
				<td>옷취향</td>
				<td><select name="style">
						<option value="${sessionScope.accountInfo.style}">기존스타일</option>
						<option value="casual">캐쥬얼</option>
						<option value="Street">스트리트</option>
						<option value="vintage">빈티지</option>
						<option value="dandy">댄디</option>
				</select></td>
			</tr>
		</table>
		<button name="id" value="${sessionScope.accountInfo.id}">저장하기</button>
	</form>
	<script type="text/javascript" src="js/login/udateInfo.js"></script>
</body>
</html>