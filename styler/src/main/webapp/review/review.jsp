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
			<td>검색 - 누르면 밑에 검색창 나오는 js</td>
			<td onclick="location.href='ProfileController'">내정보</td>
			<td onclick="location.href='WritePost'">리뷰쓰기</td>
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
			</td>
		</tr>

		<tr>
			<td colspan="4">
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
			<td colspan="4">
				<table border="1">
					<tr>
						<td><img src="" alt="이미지 불러오는 중"></td>
						<td></td>
					</tr>
					<tr>
						<td>글내용1~2줄로표시</td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td>댓글보기</td>
					</tr>
					

				</table>
			</td>
		</tr>

		<tr>
			<td colspan="4"><c:forEach var="r" items="${reviews}">
					<table border="1">
						<tr>
							<td><img src="img/${r.img}" alt="이미지 없음" onclick="location.href='ReadDetailC?no=${r.no}'"></td>
							<td>${r.user}</td>
						</tr>
						<tr>
							<td>${r.text}</td>
						</tr>
						<tr>
							<td>${r.good}</td>
							<td>${r.comment}</td>
						</tr>
					</table>
				</c:forEach></td>
		</tr>
	</table>
</body>
</html>