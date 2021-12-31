<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/reviewDetail.css">
<link rel="stylesheet" href="css/top.css">
<link rel="icon" type="image/png" href="http://wiki.hash.kr/images/thumb/8/82/%EC%95%84%EC%9D%B4%EC%BD%98_%EB%A1%9C%EA%B3%A0.png/200px-%EC%95%84%EC%9D%B4%EC%BD%98_%EB%A1%9C%EA%B3%A0.png">



</head>
<body>





	<table id="tbl" border="1">
		<tr>

			<td colspan="3"><jsp:include page="${loginPage}"></jsp:include>
				<jsp:include page="${contentPage}"></jsp:include></td>
		</tr>
		<tr>
			<td onclick="location.href='HomeController'">로고</td>
			<td>
				<section id="slider1" class="slider">
					<div class="box" style="background-color: #000;">Styler</div>
					<div class="box" style="background-color: #000;">Your Style</div>
					<div class="box" style="background-color: #000;">Styler</div>
					<div class="box" style="background-color: #000;">Your Style</div>
					<div class="box" style="background-color: #000;">Styler</div>
				</section>

				<section id="slider2" class="slider">
					<div class="box" style="background-color: #ff0000;">Styler</div>
					<div class="box" style="background-color: #ff0000;">Styler</div>
					<div class="box" style="background-color: #ff0000;">Styler</div>
					<div class="box" style="background-color: #ff0000;">Styler</div>
					<div class="box" style="background-color: #ff0000;">Styler</div>
				</section>
			</td>
			<td>footer</td>
		</tr>
	</table>

	<script type="text/javascript" src="js/slider.js"></script>
	<script type="text/javascript" src="js/freeboard.js"></script>
</body>
</html>