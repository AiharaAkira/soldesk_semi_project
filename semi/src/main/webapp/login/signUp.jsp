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
			<td>ȸ������</td>
		</tr>
		<tr>
			<td>�̸�</td>
		</tr>
		<tr>
			<td> <input name="name"> </td>
		</tr>
		<tr>
			<td>���̵�</td>
		</tr>
		<tr>
			<td> <input name="id"> </td>
		</tr>
		
		<tr>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td> <input name="pw" type="password"> </td>
		</tr>
		
		<tr>
			<td>��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td> <input name="pw" type="password"> </td>
		</tr>
		<tr>
			<td>�г���</td>
		</tr>
		<tr>
			<td> <input name="nickname"> </td>
		</tr>
		<tr>
			<td>����</td>
		</tr>
		<tr>
			<td> 
				��<input type="radio" name="gender"  value="man">
				 ��<input type="radio" name="gender" value="woman">
			 </td>
		</tr>
		
		<tr>
			<td>�̸���</td>
		</tr>
		<tr>
			<td> <input name="email"> </td>
		</tr>
		
		
		<tr>
			<td>������</td>
		</tr>
		<tr>
			<td> <select name="style">
					<option value="casual">ĳ���</option>
					<option value="Street">��Ʈ��Ʈ</option>
					<option value="vintage">��Ƽ��</option>
					<option value="dandy">���</option>
				</select> </td>
		</tr>
		
		<tr>
			<td>����</td>
		</tr>
		<tr>
			<td> <input type="file" name="profileImg"> </td>
		</tr>
	</table>
	<table border="1">
		<tr>
			<td>�������</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox">
			</td>
		</tr>
	</table>
	
	<button>ȸ������</button>
	</form>
</body>
</html>