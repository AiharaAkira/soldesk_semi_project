<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="css/style.css">
</head>
<body>

	<table border="1">
		<tr>
			<td>
				<jsp:include page="${loginPage}"></jsp:include>
			</td>
			<td>��������</td>
			<td>����</td>
			<td>��ŷ</td>
			<td>�����Խ���</td>
			<td>���ǰԽ���</td>
			<td>����</td>
			<td>�ΰ�</td>
		</tr>
		<tr>
			<td colspan="8">
			<jsp:include page="${contentPage}"></jsp:include>
			</td>
		</tr>
	</table>
	
</body>
</html>