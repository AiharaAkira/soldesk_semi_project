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
	
		<form action="SearchController">
	<div class="menu">
		<input type="checkbox" class="" id="collapsible"> <label
			for="collapsible"><span>�˻� - ������ �ؿ� �˻�â </span></label>
			<ul id="menuitems" class="menuitems">
				<li><input name="searchMain"></li>
				
				<li><select name="postMain">
						<option>����</option>
						<option>���ϸ�</option>
				</select></li>
				<li><select name="colorMain">
						<option>red</option>
						<option>black</option>
						<option>white</option>
				</select></li>
				<li><button>�˻��ϱ�</button></li>

			</ul>
	</div>
		</form>
	
	<table border="1" >
		
		
		
		<tr>
			<td onclick="location.href='HomeController'">Ÿ��Ʋ</td>
			
			<td onclick="location.href='ProfileController'">������</td>
			<td onclick="location.href='WritePost'">���侲��</td>
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
					<tr>
						<td onclick="location.href='DeleteDaily'">�ۻ���</td>
						<td onclick="location.href='UpdateDaily'">�ۼ���</td>
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