<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>




	<table border="1">

		<tr>
			<td onclick="location.href='HomeController'">타이틀</td>
			<td>검색</td>
			<td onclick="location.href='ProfileController'">내정보</td>

		</tr>

		<tr>
			<td colspan="4">
				<form action="SearchController">
					<table border="1">
						<tr>
							<td colspan="2"><input></td>
							<td>
								<button>검색하기</button>
							</td>

						</tr>
						<tr>
							<td colspan="2"><select>
									<option>게시판선택</option>
							</select></td>
							<td colspan="2"><select>
									<option>색상선택</option>
							</select></td>
						</tr>
					</table>
				</form>
		<tr>
			<td colspan="4">
				<form action="SearchAnnounce">
					<table border="1">
						<tr>
							<td>인기순</td>
							<td>최신글</td>
							<td>댓글순</td>
						</tr>
					</table>
			</td>
		</tr>

		<tr>
			<td>종류</td>
			<td>글제목</td>
			<td>작성자</td>
			<td>날짜</td>
		</tr>
		<tr>
			<td>공지</td>
			<td colspan="2">글글글</td>
			<td>날짜</td>
		</tr>
		<c:forEach var="post" items="${plzText}">
			<tr>
				<td>공지</td>
				<td>${plzText}</td>
				<td>${plzText}</td>
			</tr>
		</c:forEach>
		<tr>
			<td onclick="location.href='AnnounceWriteController'">글쓰기(관리자)</td>
		</tr>

		<tr>
			<td colspan="3"><select name="select">
					<option value="title">제목</option>
					<option value="text">내용</option>
					<option value="writer">작성자</option>
			</select></td>
			<td>
				<button>검색</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>