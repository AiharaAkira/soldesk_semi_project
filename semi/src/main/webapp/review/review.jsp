<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" >
	
		<tr>
			<td>Ÿ��Ʋ</td>
			<td>�˻�-�̱���</td>
			<td>������-�̱���</td>
			<td onclick="location.href='WritePost'">�۾���</td>
		</tr>
		
		<tr>
			<td colspan="4">
			<table border="1">
				<tr>
					<form action="Search">
					<td colspan="2"> <input> </td>
					<td> <button>�˻��ϱ�</button> </td>
					</form>
				</tr>
				<tr>
					<td colspan="2">
						<select>
							<option>
							�Խ��Ǽ���
							</option>
						</select>
					</td>
					<td colspan="2">
						<select>
							<option>
							������
							</option>
						</select>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		
		<tr>
			<td colspan="4">
				<table border="1">
					<tr>
							<td>�α��</td>
							<td>�ֽű�</td>
							<td>��ۼ�</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td colspan="4">
				<table border="1">
					<tr>
						<td> <img src="" alt="�̹��� �ҷ����� ��"> </td>
					</tr>
					<tr>
						<td> <img src="" alt="�̹��� �ҷ����� ��"> </td>
						<td>�г���</td> 
					</tr>
					<tr>
						<td>�۳���1~2�ٷ�ǥ��</td>
					</tr>
					<tr>
						<td>���ƿ�</td>
						<td>��ۺ���</td>
					</tr>
					<tr>
						<td>��ǰ�̹���</td>
						<td>�̸�</td>
						<td>����</td>
					</tr>
					
				</table>
			</td>
		</tr>
		
		<tr>
			<td colspan="4">
				<c:forEach var="post" items="${plztext}">
					<table border="1">
					<tr>
						<td> <img src="${plztext}" alt="�̹��� �ҷ����� ��"> </td>
					</tr>
					<tr>
						<td> <img src="${plztext}" alt="�̹��� �ҷ����� ��"> </td>
						<td>${plztext}</td> 
					</tr>
					<tr>
						<td>${plztext}</td>
					</tr>
					<tr>
						<td>${plztext}</td>
						<td>${plztext}</td>
					</tr>
					<tr>
						<td>${plztext}</td>
						<td>${plztext}</td>
						<td>${plztext}</td>
					</tr>
					
				</table>
				</c:forEach>
			</td>
		</tr>
	</table>
</body>
</html>