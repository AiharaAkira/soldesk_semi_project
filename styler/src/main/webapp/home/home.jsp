<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	
	 <!-- 홈.jsp -->
	 <div  class="container-fluid  row mt-5"  >
            <div  class="d-flex align-items-center justify-content-center" >
                <a  href="#" class="btn btn-outline-dark border-white rounded-pill">
            인기
          </a>
          <a  href="#" class="btn btn-outline-dark border-white rounded-pill">
            최신
          </a>
          <a  href="#" class="btn btn-outline-dark border-white rounded-pill">
            댓글순
          </a>
        </div>
        </div>
	 
	 <!-- 리뷰페이지 컨텐츠 -->
         <div class="album py-5 bg-WHITE">
      <div class="container">
  
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-3">
         
          <c:forEach var="r" items="${reviews}">
          <div class="col">
            <div class="card shadow-sm">
              
              
            <a href="ReadDetailC?no=${r.no}"> <img alt="게시글 이미지" src="img/${r.img}" class="card-img-top " width="auto" height="225"> </a>
  
              <div class="card-body">
                <p class="card-text">${r.text}</p>
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">좋아요</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">댓글</button>
                  </div>
                  <small class="text-muted"> 글 게시시간</small>
                  <div class="flex-shrink-0">
                  <!-- 유저등록사진표시 -->
                    <img src="https://github.com/mdo.png"  alt="mdo" width="32" height="32" class="rounded-circle">
                 <small> ${r.user}</small>
                </div>
                </div>
              </div>
            </div>
          </div>
				</c:forEach>
				</div>
				</div>
				</div>
  
          
</body>
</html>