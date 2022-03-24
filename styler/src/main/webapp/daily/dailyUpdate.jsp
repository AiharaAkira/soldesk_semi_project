<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UpdatePost" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td> 사진올리기<input type="file" name="image"> </td>
		</tr>
		
		<tr>
			<td> 상의 </td><td> <input name="top" value="${r.top}"> </td>
		</tr>
		<tr>
			<td> 하의 </td><td> <input name="pants" value="${r.pants}"> </td>
		</tr>
		<tr>
			<td> 슈즈 </td><td> <input name="shoes" value="${r.shoes}"> </td>
		</tr>
		<tr>
			<td> 악세서리 </td><td> <input name="accessary" value="${r.accessary}"> </td>
		</tr>
		
		<tr>
			<td> <input name="title" value="${r.title}"> </td>
		</tr>
		<tr>
			<td> <textarea name="text">${r.text}</textarea> </td>
		</tr>
		<tr>
			<td> <button name="no" value="${r.no}">수정하기</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>