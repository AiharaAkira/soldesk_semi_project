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
			<td>���̵�</td>
		</tr>
		<tr>
			<td> <input name="id"> </td>
		</tr>
		
		<tr>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td> <input name="pw"> </td>
		</tr>
		
		<tr>
			<td>��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td> <input> </td>
		</tr>
		
		<tr>
			<td>�̸�</td>
		</tr>
		<tr>
			<td> <input name="name"> </td>
		</tr>
		
		<tr>
			<td>�г���</td>
		</tr>
		<tr>
			<td> <input name="nickName"> </td>
		</tr>
		
		<tr>
			<td>�̸���</td>
		</tr>
		<tr>
			<td> <input name="eMail"> </td>
		</tr>
		
		<tr>
			<td>����</td>
		</tr>
		<tr>
			<td> 
					<select name="gender">
						<option>����</option>
						<option>����</option>
					</select>
			 </td>
		</tr>
		
		<tr>
			<td>������</td>
		</tr>
		<tr>
			<td> <select>
					<option>ĳ���</option>
					<option>��Ʈ��Ʈ</option>
					<option>��Ƽ��</option>
					<option>���</option>
				</select> </td>
		</tr>
		
		<tr>
			<td>����</td>
		</tr>
		<tr>
			<td> <input type="file"> </td>
		</tr>
	</table>
	<button>ȸ������</button>
	</form>
</body>
</html>