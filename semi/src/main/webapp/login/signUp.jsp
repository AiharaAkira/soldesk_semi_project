<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="SignUp" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td>회원가입</td>
		</tr>
		<tr>
			<td>이름</td>
		</tr>
		<tr>
			<td> <input name="name"> </td>
		</tr>
		<tr>
			<td>아이디</td>
		</tr>
		<tr>
			<td> <input name="id"> </td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td> <input name="pw" type="password"> </td>
		</tr>
		
		<tr>
			<td>비밀번호 확인</td>
		</tr>
		<tr>
			<td> <input name="pw" type="password"> </td>
		</tr>
		<tr>
			<td>닉네임</td>
		</tr>
		<tr>
			<td> <input name="nickname"> </td>
		</tr>
		<tr>
			<td>성별</td>
		</tr>
		<tr>
			<td> 
				남<input type="radio" name="gender"  value="man">
				 여<input type="radio" name="gender" value="woman">
			 </td>
		</tr>
		
		<tr>
			<td>이메일</td>
		</tr>
		<tr>
			<td> <input name="email"> </td>
		</tr>
		
		
		<tr>
			<td>옷취향</td>
		</tr>
		<tr>
			<td> <select name="style">
					<option value="casual">캐쥬얼</option>
					<option value="Street">스트리트</option>
					<option value="vintage">빈티지</option>
					<option value="dandy">댄디</option>
				</select> </td>
		</tr>
		
		<tr>
			<td>프사</td>
		</tr>
		<tr>
			<td> <input type="file" name="profileImg"> </td>
		</tr>
	</table>
	<table border="1">
		<tr>
			<td>약관내용</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox">
			</td>
		</tr>
	</table>
	
	<button>회원가입</button>
	</form>
</body>
</html>