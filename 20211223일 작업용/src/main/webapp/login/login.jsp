<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sidebar.css">
</head>
<body>
				<table border="1">
					<tr>
						<td onclick="location.href='LoginController'"> �α���</td>
					</tr>
					<tr>
						<td onclick="location.href='SignUpC'"> ȸ������</td>
					</tr>
					<tr>
						<td onclick="location.href='SignOut'"> ȸ��Ż��</td>
					</tr>
				</table>
				<button onclick="toggle_div()">���̵�� �׽�Ʈ</button>
					<div class="sidebar" id="sidebar">
						<ul>
							<li><a href="#">��������</a></li>						
							<li><a href="#">����</a></li>						
							<li><a href="#">���ϸ�</a></li>						
							<li><a href="#">�����Խ���</a></li>						
							<li><a href="#">���ǰԽ���</a></li>						
							<li><a href="#">����</a></li>						
						</ul>
					</div>

<script type="text/javascript" src="js/sidebar.js"></script>
</body>
</html>