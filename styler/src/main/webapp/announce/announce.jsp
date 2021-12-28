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

	<form action="SearchController">
	<div class="menu">
		<input type="checkbox" class="" id="collapsible"> <label
			for="collapsible"><span>검색 - 누르면 밑에 검색창 </span></label>
			<ul id="menuitems" class="menuitems">
				<li><input name="searchMain"></li>
				
				<li><select name="postMain">
						<option>리뷰</option>
						<option>데일리</option>
				</select></li>
				<li><select name="colorMain">
						<option>red</option>
						<option>black</option>
						<option>white</option>
				</select></li>
				<li><button>검색하기</button></li>

			</ul>
	</div>
		</form>


	<table border="1">

		<tr>
			<td onclick="location.href='HomeController'">타이틀</td>
			
			<td onclick="location.href='ProfileController'">내정보</td>

		</tr>

		
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