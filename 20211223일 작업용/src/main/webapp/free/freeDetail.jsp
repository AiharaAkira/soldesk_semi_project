<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>�����Խ���</h1>

	<hr>
	<table border="1">
		<tr>
			<td colspan="4">${p.p_title}</td>
		</tr>

		<tr>
			<td>${p.p_user}<br>${p.p_date}</td>
			<td>��ȸ��<br>��ۼ�
			</td>
		</tr>
		<tr>
			<td colspan="4"> <img src=" free/img/${p.p_img}"> <br>${p.p_text}</td>
		</tr>

		<tr>
			<td colspan="3"></td>
			<td>
				<button>����</button>	<button>����</button>
			</td>

		</tr>
		<tr>
			<td colspan="4">����־�ߵǴ� ��</td>
		</tr>
		<tr>
			<td colspan="4">������</td>
		</tr>
		<tr>
			<td colspan="4">������</td>
		</tr>
	</table>

</body>
</html>