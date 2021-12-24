<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="SignUpC" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan='2'>회원가입</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name" ></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td> <input name="pw" type="password"> </td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td> <input name="pwCheck" type="password"> </td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td> <input name="nickname"> </td>
		</tr>
		<tr>
			<td>성별</td>
			<td> 
				남<input type="radio" name="gender"  value="man">
				 여<input type="radio" name="gender" value="woman">
			 </td>
		</tr>
		<tr>
			<td>이메일</td>
		<td>
		<input type="text" name="email" />
                </td>
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
		<tr>
			<td>프사</td>
			<td> <input type="file" name="profileImg"> </td>
		</tr>
		<tr>
			<td  colspan='2'>약관내용</td>
		</tr>
		<tr>
			<td colspan='2'>주저리주저리 주저리주저리 주저리주저리 주저리주저리 </td>
		</tr>
		<tr>
			<td colspan='2'>
				<input type="checkbox">동의하시면 체크해주세요
			</td>
		</tr>
	</table>
	
	<button>회원가입</button>
	</form>
</body>
</html>