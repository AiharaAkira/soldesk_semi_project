
	<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="WritePost" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td> �����ø���<input type="file" name="image"> </td>
		</tr>
		
		<tr>
			<td> ���� </td><td> <input name="top"> </td>
		</tr>
		<tr>
			<td> ���� </td><td> <input name="pants"> </td>
		</tr>
		<tr>
			<td> ���� </td><td> <input name="shoes"> </td>
		</tr>
		<tr>
			<td> �Ǽ����� </td><td> <input name="accessary"> </td>
		</tr>
		
		<tr>
			<td> <input name="title"> </td>
		</tr>
		<tr>
			<td> <textarea name="text"></textarea> </td>
		</tr>
		<tr>
			<td> <button>�۾���</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>
