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
	<table>
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
			<td> <input name="pw"> </td>
		</tr>
		
		<tr>
			<td>비밀번호 확인</td>
		</tr>
		<tr>
			<td> <input> </td>
		</tr>
		
		<tr>
			<td>이름</td>
		</tr>
		<tr>
			<td> <input name="name"> </td>
		</tr>
		
		<tr>
			<td>닉네임</td>
		</tr>
		<tr>
			<td> <input name="nickName"> </td>
		</tr>
		
		<tr>
			<td>이메일</td>
		</tr>
		<tr>
			<td> <input name="eMail"> </td>
		</tr>
		
		<tr>
			<td>성별</td>
		</tr>
		<tr>
			<td> 
					<select name="gender">
						<option>남자</option>
						<option>여자</option>
					</select>
			 </td>
		</tr>
		
		<tr>
			<td>옷취향</td>
		</tr>
		<tr>
			<td> <select>
					<option>캐쥬얼</option>
					<option>스트리트</option>
					<option>빈티지</option>
					<option>댄디</option>
				</select> </td>
		</tr>
		
		<tr>
			<td>프사</td>
		</tr>
		<tr>
			<td> <input type="file"> </td>
		</tr>
	</table>
	<button>회원가입</button>
	</form>
</body>
</html>