<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
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
			<td onclick="location.href='WritePost'">리뷰쓰기</td>
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
		<td><h1>리뷰</h1></td>
		</tr>
		
		<tr>
			<td colspan="4">
			<c:forEach var="r" items="${reviews}">
					<table border="1">
						<tr>
							<td><img src="img/${r.img}" alt="이미지 없음"
								onclick="location.href='ReadDetailC?no=${r.no}'"></td>
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
		<tr>
		<td><h1>데일리</h1></td>
		</tr>
	
		<tr>
			<td colspan="4">
			<c:forEach var="d" items="${dailys}">
					<table border="1">
						<tr>
							<td><img src="img/${d.img}" alt="이미지 없음"
								onclick="location.href='ReadDetailC?no=${d.no}'"></td>
							<td>${d.user}</td>
						</tr>
						<tr>
							<td>${d.text}</td>
						</tr>
						<tr>
							<td>${d.good}</td>
							<td>${d.comment}</td>
						</tr>
					</table>
				</c:forEach></td>
		</tr>
	</table>
</body>
</html>