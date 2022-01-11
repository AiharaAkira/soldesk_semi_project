<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<span>카드 클릭시 출석체크 및 출석포인트 획득 가능!</span>
	<form
		action="GameController?id=${sessionScope.accountInfo.id}&checkPoint=${sessionScope.accountInfo.checkPoint}&id=${sessionScope.accountInfo.id}"
		method="post"
		onsubmit="return call(${sessionScope.accountInfo.checkPoint});">


		<table>
			<tr>
				<td>
					<button name="pw" value="${sessionScope.accountInfo.pw}">
						<img alt="" src="css/img/게임카드.jpg" width="400px" height="500px">
					</button>
				</td>
				<td>
					<button name="pw" value="${sessionScope.accountInfo.pw}">
						<img alt="" src="css/img/게임카드.jpg" width="400px" height="500px">
					</button>
				</td>
				<td>
					<button name="pw" value="${sessionScope.accountInfo.pw}">
						<img alt="" src="css/img/게임카드.jpg" width="400px" height="500px">
					</button>
				</td>
			</tr>
		</table>

	</form>
	<script type="text/javascript" src="js/game/game.js">

</script>
</body>
</html>