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
</head>
<body>





	<table id="tbl" border="1">
		<tr>

			<td colspan="3"><jsp:include page="${loginPage}"></jsp:include>
				<jsp:include page="${contentPage}"></jsp:include></td>
		</tr>
		<tr >
			<td onclick="location.href='HomeController'">로고</td>
			<td >
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
</body>
</html>