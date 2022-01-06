<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>공지게시판</h1>

	<hr>
	<table border="1">
		<tr>
			<td colspan="4">${p.p_title}</td>
		</tr>

		<tr>
			<td>${p.p_user}<br>${p.p_date}</td>
			<td>조회수 ${p.p_view_count} <br>댓글수 ${totalComment}
			</td>
		</tr>
		<tr>
			<td colspan="4"> <img src=" announce/img/${p.p_img}"> <br>${p.p_text} </td>
			
		</tr>
<c:set var="writerName" value="${p.p_user}" />
<c:set var="loginName" value="${sessionScope.accountInfo.nickname}" />


<c:if test="${fn:trim(p.p_user) eq loginName || loginName eq 'admin'}">
		<tr>
			<td colspan="3"></td>
			<td>
				<button onclick="location.href='AnnounceModifyController?no=${p.p_no}'">수정</button>	<button onclick="delCheck(${p.p_no})">삭제</button>
			</td>
		</tr>
		</c:if>
		
		<tr> <td>${writerName}  ${loginName}</td>  </tr>
	  <c:forEach var="c" items="${comments}">
		<tr>
		<td>   ${c.c_users} // ${c.c_text} // <fmt:formatDate value="${c.c_date}" pattern="yyyy.MM.dd/ a hh:mm"/> 수정 삭제  </td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4">
			 <form action="AnnounceCommentController">
			 <div>
			 		<input name="c_user" value="0" type="hidden">
			 		<input name="no" value="${p.p_no}" type="hidden">
					<textarea name="c_text" > 댓글작성 </textarea>	
			</div>
			<button name="c_post" value="${p.p_no}">작성하기</button>
			</form>
			 </td>
		</tr>
		<tr>
			<td colspan="4">  이전글 <a href="AnnounceDetailC?no=${prevP.p_no}"> ${prevP.p_title} </a></td>
		</tr>
		<tr>
			<td colspan="4">  다음글 <a href="AnnounceDetailC?no=${nextP.p_no}"> ${nextP.p_title} </a></td>
		</tr>
	</table>
	
</body>
</html>