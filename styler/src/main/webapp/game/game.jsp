<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="GameController?id=${sessionScope.accountInfo.id}&checkPoint=${sessionScope.accountInfo.checkPoint}" method="post">
		<table>
			<tr>
				<td> <button>동전</button> </td>
				<td> <button>동전</button> </td>
				<td> <button>동전</button> </td>
			</tr>
		</table>
	</form>
</body>
</html>