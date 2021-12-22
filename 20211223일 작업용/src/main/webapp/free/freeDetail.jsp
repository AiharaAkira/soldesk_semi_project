<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>자유게시판</h1>

	<hr>
	<table border="1">
		<tr>
			<td colspan="4">${p.p_title}</td>
		</tr>

		<tr>
			<td>${p.p_user}<br>${p.p_date}</td>
			<td>조회수<br>댓글수
			</td>
		</tr>
		<tr>
			<td colspan="4"> <img src=" free/img/${p.p_img}"> <br>${p.p_text}</td>
		</tr>

		<tr>
			<td colspan="3"></td>
			<td>
				<button>수정</button>	<button>삭제</button>
			</td>

		</tr>
		<tr>
			<td colspan="4">댓글있어야되는 곳</td>
		</tr>
		<tr>
			<td colspan="4">이전글</td>
		</tr>
		<tr>
			<td colspan="4">다음글</td>
		</tr>
	</table>

</body>
</html>