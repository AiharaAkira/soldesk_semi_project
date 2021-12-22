<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<table border="1">

			<tr>
				<td onclick="location.href='HomeController'">Ÿ��Ʋ</td>
				<td>�˻�-js������ ������</td>
				<td onclick="location.href='ProfileController'">������</td>

			</tr>

			<tr>
				<td colspan="4">
							<form action="SearchController">
					<table border="1">
						<tr>
								<td colspan="2"><input></td>
								<td>
									<button>�˻��ϱ�</button>
								</td>
							
						</tr>
						<tr>
							<td colspan="2"><select>
									<option>�Խ��Ǽ���</option>
							</select></td>
							<td colspan="2"><select>
									<option>������</option>
							</select></td>
						</tr>
					</table>
					</form>
				</td>
			</tr>

			<tr>
				<td colspan="4">
				<form action="FreeSearchController">
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
				<td>����</td>
				<td>������</td>
				<td>�ۼ���</td>
				<td>��¥</td>
			</tr>
			<tr>
				<td>������</td>
				<td colspan="2">�۱۱�</td>
				<td>��¥</td>
			</tr>
			<c:forEach var="p" items="${posts}">
				<tr>
					<td>������</td>
					<td onclick="location.href='FreeDetailC?no=${p.p_no}'">${p.p_title}</td>
					<td>${p.p_user}</td>
					<td>${p.p_date}</td>
				</tr>
			</c:forEach>
			<tr>
				<td onclick="location.href='FreeWriteController'">�۾���</td>
			</tr>

			<tr>
				<td colspan="3"><select name="select">
						<option value="title">����</option>
						<option value="text">����</option>
						<option value="writer">�ۼ���</option>
				</select></td>
				<td>
					<button>�˻�</button>
				</td>
			</tr>
		</table>
		</form>
		<div>
			<c:set var="page" value="${param.p }" />
			<c:choose>
				<c:when test="${startNum>1}">
					<a href="?p=${startNum-1} "> ����</a>
				</c:when>

				<c:otherwise>
					<span onclick="alert('��������������')">����(��������������)</span>
				</c:otherwise>
			</c:choose>
		</div>
		<div>
			����¡���
			<c:forEach var="p" items="${startEnd }">
				<ul>
					<li>${p}</li>
				</ul>
			</c:forEach>
		</div>
		<div></div>

	
</body>
</html>