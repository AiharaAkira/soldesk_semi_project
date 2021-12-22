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
				<td onclick="location.href='HomeController'">타이틀</td>
				<td>검색-js누르면 나오기</td>
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
				</td>
			</tr>

			<tr>
				<td colspan="4">
				<form action="FreeSearchController">
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
				<td>자유글</td>
				<td colspan="2">글글글</td>
				<td>날짜</td>
			</tr>
			<c:forEach var="p" items="${posts}">
				<tr>
					<td>자유글</td>
					<td onclick="location.href='FreeDetailC?no=${p.p_no}'">${p.p_title}</td>
					<td>${p.p_user}</td>
					<td>${p.p_date}</td>
				</tr>
			</c:forEach>
			<tr>
				<td onclick="location.href='FreeWriteController'">글쓰기</td>
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
		<div>
			<c:set var="page" value="${param.p }" />
			<c:choose>
				<c:when test="${startNum>1}">
					<a href="?p=${startNum-1} "> 이전</a>
				</c:when>

				<c:otherwise>
					<span onclick="alert('이전페이지없음')">이전(이전페이지없음)</span>
				</c:otherwise>
			</c:choose>
		</div>
		<div>
			페이징장수
			<c:forEach var="p" items="${startEnd }">
				<ul>
					<li>${p}</li>
				</ul>
			</c:forEach>
		</div>
		<div></div>

	
</body>
</html>