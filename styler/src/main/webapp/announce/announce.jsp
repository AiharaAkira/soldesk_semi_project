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

	<!-- <form action="SearchController">
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
		</form> -->
		<div class="m-3">
		<table class="table" border="1">

			<!-- <tr>
				<td onclick="location.href='HomeController'">타이틀</td>
				
				<td onclick="location.href='ProfileController'">내정보</td>

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
			</tr> -->
			<tr>
				<th>종류</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			
			<c:forEach var="p" items="${posts}">
				<tr>
					<td>자유글</td>
					<td onclick="location.href='AnnounceDetailC?no=${p.p_no}'">${p.p_title}</td>
					<td>${p.p_user}</td>
					<td>${p.p_date}</td>
				</tr>
			</c:forEach>
			<c:if test="${not empty sessionScope.accountInfo }">
			<tr>
				<td onclick="location.href='AnnounceWriteController'">글쓰기</td>
			</tr>
			</c:if>
			
			<tr>
				<td colspan="4"> 
				<form action="AnnounceSearchController" accept-charset="UTF-8">
				<table border="1">
				<tr>
				<td colspan="3"><select name="selected">
						<option value="p_title">제목</option>
						<option value="p_text">내용</option>
						<option value="p_user">작성자</option>
				</select></td>
				<td>
					<input name="searchText"> <button>검색</button>
				</td>
				</tr>
				</table> 
				</form>
				</td>
				
			</tr>
		</table>
		
		<div>
				<ul class="pagination justify-content-center ">
				
			<!-- 검색어 없을 때 조건 -->
				<c:choose> <c:when test="${empty searchText}">
				<c:choose>
				<c:when test="${pageNum eq 1}"><li class="page-item disabled"> <a class="page-link"  href="/styler220104_sbg/AnnounceController?pageNum=${pageNum -1}&selected=${selected}&searchText=${searchText}">Previous</a> </li></c:when>
				<c:otherwise>
					<li class="page-item"> <a class="page-link"  href="/styler220104_sbg/AnnounceController?pageNum=${pageNum -1}&selected=${selected}&searchText=${searchText}">Previous</a> </li>
				</c:otherwise>
				</c:choose>
			<c:forEach var="p" items="${startEnd }">
					<li class="page-item"> <a class="page-link"  href="/styler220104_sbg/AnnounceController?pageNum=${p}&selected=${selected}&searchText=${searchText}">${p}</a> </li>
			</c:forEach>
			<c:choose>
				<c:when test="${pageNum eq totalPage }"><li class="page-item disabled"> <a class="page-link"  href="/styler220104_sbg/AnnounceController?pageNum=${pageNum}&selected=${selected}&searchText=${searchText}">Next</a> </li></c:when>
				<c:otherwise>
					<li class="page-item"> <a class="page-link"  href="/styler220104_sbg/AnnounceController?pageNum=${pageNum +1}&selected=${selected}&searchText=${searchText}">Next</a> </li>
				</c:otherwise>
				</c:choose>
			
			</c:when> 
			
			
			<c:otherwise>
			<c:forEach var="p" items="${startEnd }">
					<li class="page-item"> <a class="page-link"  href="/styler220104_sbg/AnnounceSearchController?pageNum=${p}&selected=${selected}&searchText=${searchText}">${p}</a> </li>
			</c:forEach>
			</c:otherwise>
			</c:choose>
				</ul>
		</div>
		</div>
</body>
</html>