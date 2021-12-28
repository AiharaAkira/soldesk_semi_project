<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reviewDetail.css" />
</head>
<body>
	<div class="content-header">
		<div class="content-header_view">
			<div class="content-header_view_left">
				<!-- profile photo -->
				<a><img src="1.jpg" alt="이미지 없음" /></a>
				<div class="content-header_view_left_text">
					<h2>${r.title}</h2>
					<!-- member nickname -->
					<span>example nickname</span>
				</div>
			</div>
			<div class="content-header_view_right">
				<div class="content-header_view_right_1st">
					<ul class="post-menu">
						<li><a onclick="location.href='UpdatePost?no=${r.no}'">수정하기</a></li>
						<li><a onclick="deleteReview(${r.no})">삭제하기</a></li>
					</ul>
				</div>
				<div class="content-header_view_right_2nd">
					<span>test view count 0</span><br /> <span>작성일 : ${r.date}</span>
				</div>

			</div>
		</div>
		</div>
		<div class="content-body">
			<div class="content-body_product">
				<table>
					<tr>
						<th>상의</th>
						<td>${r.top}</td>
					</tr>
					<tr>
						<th>하의</th>
						<td>${r.pants}</td>
					</tr>
					<tr>
						<th>신발</th>
						<td>${r.shoes}</td>
					</tr>
					<tr>
						<th>악세서리</th>
						<td>${r.accessary}</td>
					</tr>
				</table>
			</div>

			<div class="content-body_img">
				<img src="img/${r.img}" alt="이미지 없음" />
			</div>


			<div class="content-body_text">
				<span>${r.text}</span>
			</div>
		</div>
<script type="text/javascript" src="js/Review.js"></script>
</body>
</html>