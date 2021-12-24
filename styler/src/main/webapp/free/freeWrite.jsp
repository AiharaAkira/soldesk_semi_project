<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="FreeWriteController" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
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