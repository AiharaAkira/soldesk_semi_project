<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" >
		
		<tr>
			<td onclick="location.href='HomeController'">타이틀</td>
			<td>검색</td>
			<td onclick="location.href='ProfileController'">내정보</td>
			<td onclick="location.href='WritePost'">글쓰기</td>
		</tr>
		
		<tr>
			<td colspan="4">
			<table border="1">
				<tr>
					<form action="Search">
					<td colspan="2"> <input> </td>
					<td> <button>검색하기</button> </td>
					</form>
				</tr>
				<tr>
					<td colspan="2">
						<select>
							<option>
							게시판선택
							</option>
						</select>
					</td>
					<td colspan="2">
						<select>
							<option>
							색상선택
							</option>
						</select>
					</td>
				</tr>
			</table>
			</td>
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
			<td colspan="4">
				<table border="1">
					<tr>
						<td> <img src="" alt="이미지 불러오는 중"> </td>
					</tr>
					<tr>
						<td> <img src="" alt="이미지 불러오는 중"> </td>
						<td>닉네임</td> 
					</tr>
					<tr>
						<td>글내용1~2줄로표시</td>
					</tr>
					<tr>
						<td>좋아요</td>
						<td>댓글보기</td>
					</tr>
					<tr>
						<td>상품이미지</td>
						<td>이름</td>
						<td>가격</td>
					</tr>
					
				</table>
			</td>
		</tr>
	</table>
</body>
</html>