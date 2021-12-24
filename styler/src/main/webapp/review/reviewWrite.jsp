
	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<form action="WritePost" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td> 사진올리기<input type="file" name="image"> </td>
		</tr>
		
		<tr>
			<td> 상의 </td><td> <input name="top"> </td>
		</tr>
		<tr>
			<td> 하의 </td><td> <input name="pants"> </td>
		</tr>
		<tr>
			<td> 슈즈 </td><td> <input name="shoes"> </td>
		</tr>
		<tr>
			<td> 악세서리 </td><td> <input name="accessary"> </td>
		</tr>
		
		<tr>
			<td> <input name="title"> </td>
		</tr>
		<tr>
			<td> <textarea name="text"></textarea> </td>
		</tr>
		<tr>
			<td> <button>글쓰기</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>
