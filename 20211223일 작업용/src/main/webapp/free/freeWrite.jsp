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
			<td> �����ø���<input type="file" name="img"> </td>
		</tr>
		<tr>
			<td> ����<input name="title">  <input name="user" type="hidden" value="1" > </td> 
		</tr>
		<tr>
			<td>  <textarea name ="text"> ������ �Է����ּ���.</textarea> </td>
		</tr>
		<tr>
			<td> <button>�۾���</button> </td>
		</tr>
	</table>
	</form>
</body>
</html>