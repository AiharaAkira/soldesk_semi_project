<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="SignUpC" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan='2'>ȸ������</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input name="name"></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td> <input name="pw" type="password"> </td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ��</td>
			<td> <input name="pwCheck" type="password"> </td>
		</tr>
		<tr>
			<td>�г���</td>
			<td> <input name="nickname"> </td>
		</tr>
		<tr>
			<td>����</td>
			<td> 
				��<input type="radio" name="gender"  value="man">
				 ��<input type="radio" name="gender" value="woman">
			 </td>
		</tr>
		<tr>
			<td>�̸���</td>
		<td>
		<input type="text" name="email" />
                </td>
		</tr>
		<tr>
			<td>������</td>
			<td> <select name="style">
					<option value="casual">ĳ���</option>
					<option value="Street">��Ʈ��Ʈ</option>
					<option value="vintage">��Ƽ��</option>
					<option value="dandy">���</option>
				</select> </td>
		</tr>
		<tr>
			<td>����</td>
			<td> <input type="file" name="profileImg"> </td>
		</tr>
		<tr>
			<td  colspan='2'>�������</td>
		</tr>
		<tr>
			<td colspan='2'>������������ ������������ ������������ ������������ </td>
		</tr>
		<tr>
			<td colspan='2'>
				<input type="checkbox">�����Ͻø� üũ���ּ���
			</td>
		</tr>
	</table>
	
	<button>ȸ������</button>
	</form>
</body>
</html>