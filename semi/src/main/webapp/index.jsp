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
			<td rowspan="8">
			<jsp:include page="${contentPage}"></jsp:include>
			</td>
		<tr>	
			<td>��������</td>
		</tr>	
		<tr>
			<td onclick="location.href='ReviewController'">����</td>
		</tr>
		<tr>	
			<td>���ϸ�</td>
		</tr>
		<tr>	
			<td onclick="location.href='FreeController'">�����Խ���</td>
		</tr>	
		<tr>
			<td>���ǰԽ���</td>
		</tr>
		<tr>	
			<td>����</td>
		</tr>
		<tr>	
			<td onclick="location.href='HomeController'">�ΰ�</td>
			
		</tr>	
		
		<tr>
			
		</tr>
	</table>
	
</body>
</html>