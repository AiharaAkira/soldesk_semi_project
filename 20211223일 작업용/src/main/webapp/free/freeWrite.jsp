<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="FreeWriteController" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td> 사진올리기<input type="file" name="img"> </td>
		</tr>
		<tr>
			<td> 제목<input name="title">  <input name="user" type="hidden" value="1" > </td> 
		</tr>
		<tr>
			<td>  <textarea name ="text"> 내용을 입력해주세요.</textarea> </td>
		</tr>
		<tr>
			<td> <button>글쓰기</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>