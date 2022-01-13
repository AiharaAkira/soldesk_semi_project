<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<div>
			<form action="DetailSearchController" method="post">
				<div>
				<div>상의<input type="radio" name="type" value="p_top"></div>
				
				<div>하의<input type="radio" name="type" value="p_pants"></div>
				
				<div>악세서리<input type="radio" name="type" value="p_accessary"></div>
				
				<div>신발<input type="radio" name="type" value="p_shoes"></div>
				
					<div>가격<input name="price"></div>
					<div>키워드<input name="title"></div> 
				<div><button>검색</button></div>	
				</div>
			</form>
		</div>
	</div>

</body>
</html>