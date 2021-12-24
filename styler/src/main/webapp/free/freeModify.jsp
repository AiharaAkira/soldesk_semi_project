<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="FreeModifyController" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
	<table>
		<tr>
			<td> 사진올리기<input type="file" name="img"> </td>
		</tr>
		<tr>
			<td> 제목<input name="title" value="${p.p_title} ">  작성자 ${p.p_user} </td> 
		</tr>
		<tr>
			<td>  <textarea name ="text"> ${p.p_text}</textarea> </td>
		</tr>
		<tr>
			<td> <button name="no" value="${p.p_no}">수정하기</button> </td>
		</tr>
	</table>
	</form>


</body>
</html>