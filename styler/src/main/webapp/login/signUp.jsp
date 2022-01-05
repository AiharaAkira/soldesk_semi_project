<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>
	<form action="SignUpC" name="form" method="post" enctype="multipart/form-data" onsubmit="return call();">
	<table border="1">
		<tr>
			<td colspan='2'>회원가입</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name1" placeholder="빈칸x 한글 공백x 30자미만" ></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input name="id" placeholder="빈칸x 영어+숫자 공백x 20자미만"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td> <input name="pw" type="password" placeholder="빈칸x 영어+숫자+특수문자 + 공백x 8자이상"> </td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td> <input name="pwCheck" type="password"> </td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td> <input name="nickname" placeholder="빈칸x 한글+영어+숫자 공백x 10자~20자"> </td>
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
		<input type="text" name="email" placeholder="@포함, 빈칸x,영어숫자 공백x 50자미만" />
                </td>
		</tr>
		<tr>
			<td>옷취향</td>
			<td> <select name="style" >
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
				<input type="checkbox" name="typeOfManager" value="0">동의하시면 체크해주세요
			</td>
		</tr>
		<tr>
			<td colspan='2'>주저리주저리 주저리주저리 주저리주저리 주저리주저리 </td>
		</tr>
		<tr>
			<td colspan='2'>
				<input type="checkbox" name="checkPoint" value="1">동의하시면 체크해주세요
			</td>
		</tr>
	</table>
	
	<button>회원가입</button>
	</form>
	
	<script type="text/javascript" src="js/login/signUp.js"></script>
	
	
	
</body>
</html>