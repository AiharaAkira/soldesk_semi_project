<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="ProfileController?update=yes" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2">
				<table border="1">
					<tr>
						<td rowspan="3">�����ʻ��� <input type="file"></td>
					</tr>
					<tr>
						<td>���̵�</td>
					</tr>
					<tr>
						<td>�̸���<input name="email"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>�̸�</td><td>�г��� <input></td>
		</tr>
		<tr>
			<td>����</td><td>������<input></td>
		</tr>
	</table>
	<button>�����ϱ�</button>
	
	</form>


</body>
</html>