<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
			<td>조회수있을곳<br>댓글수있을곳
			</td>
		</tr>
		<tr>
			<td colspan="4"> <img src=" free/img/${p.p_img}"> <br>${p.p_text}</td>
		</tr>

		<tr>
			<td colspan="3"></td>
			<td>
				<button onclick="location.href='FreeModifyController?no=${p.p_no}'">수정</button>	<button onclick="delCheck(${p.p_no})">삭제</button>
			</td>

		</tr>
		<tr>
			<td colspan="4">댓글있어야하는곳</td>
		</tr>
		<tr>
			<td colspan="4">  이전글 <a href="FreeDetailC?no=${prevP.p_no}"> ${prevP.p_title} </a></td>
		</tr>
		<tr>
			<td colspan="4">  다음글 <a href="FreeDetailC?no=${nextP.p_no}"> ${nextP.p_title} </a></td>
		</tr>
	</table>

</body>
</html>