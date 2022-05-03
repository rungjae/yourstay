<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>YourTrip</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- bootstrap-css -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../css/features.css" type="text/css" media="all" />
<link rel="stylesheet" href="../css/blog.css" type="text/css" media="all" />
<!-- 구글웹폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet">
<%
   String memail = (String) session.getAttribute("memail");
%>
</head>
<style>
h2, h3,p, body {
  font-family: 'Poor Story', cursive!important;
   font-size: 112%;
  }
</style>
<body>
    
<div class="container">
  <header class="blog-header py-3" style="margin-bottom: 3%;">
      <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
        </div>
        <div class="col-4 text-center">
          <a class="blog-header-logo text-dark" href="/" style="text-decoration:none">MyPage</a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
          <c:choose>
         <c:when test="${msg =='failure'}">
        <a class="btn btn-secondary" href="../login/loginPage" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">Sign up</a>
        </c:when> 
         <c:when test="${msg == null}"> <!-- 로그인X -->
         
         <% 
            if(memail == null){
         %>
           <a class="btn btn-secondary" href="../login/loginPage" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">Sign up</a>
          <%
            }else{
         %>
         <a style="margin-top: 3%; margin-right: 3%;" href="/mypage/home"><%=memail %>님 반갑습니다!</a>
         <a href="../login/logout.do" class="btn btn-secondary" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">로그아웃</a>
         <%} %>
         </c:when> 
         <c:otherwise>
         <a style="margin-top: 3%; margin-right: 3%;" href="/mypage/home"><%=memail%>님 반갑습니다!</a>
         <a href="../login/logout.do" class="btn btn-secondary" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">로그아웃</a>
         </c:otherwise>
         </c:choose>
      </div>
    </div>
  </header>

<main class="container">
<h3>나의 정보</h3>
<table class="table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Phone Number</th>
      <th>Management</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>${member.mname}</td>
      <td>${member.memail}</td>
      <td>${member.mcallnum}</td>
      
      <td> 
            <a class="btn btn-secondary" type="submit" href="/mypage/updateUser?memail=${member.memail}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;"> 정보수정</a>
            <a class="btn btn-secondary deletebtn" type="submit" href="/mypage/removeUser?memail=${member.memail}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;"> 회원탈퇴</button>
      </td>
    </tr>
  </tbody>
</table>
<div class="container px-4 py-5" id="featured-3">
   <!-- 1번째줄 -->
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
          <img class="bi" id="like" width="63em" height="63em" src="../images/like.png"/>
        <h2>찜 목록</h2>
        <p>찜한 숙소들을 보고 싶으시면 아래 버튼을 눌러주세요!</p>
        <a class="btn btn-secondary" type="submit" href="wishlist/${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">찜 목록</a>
      </div>
      <div class="feature col">
      <img class="bi" id="reservation" width="63em" height="63em" src="../images/reservation.png"/>
        <h2>예약 목록</h2>
        <p>예약 목록을 보고 싶으시면 아래 버튼을 눌러주세요!</p>
        <a class="btn btn-secondary" type="submit" href="roomReservation?mseq=${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">예약 목록</a>
      </div>
      <div class="feature col">
        <img class="bi" id="review" width="63em" height="63em" src="../images/review.png"/>
        <h2>리뷰 쓰러 가기</h2>
        <p>리뷰를 쓰고 싶으시면 아래 버튼을 눌러주세요!</p>
        <input type="hidden" name="mseq" value="${member.mseq}">
        <a class="btn btn-secondary" type="submit" href="roomHistory?mseq=${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">리뷰 쓰러 가기</a>
      </div>
    </div>
    <!-- 2번째줄 -->
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
          <img class="bi" id="like" width="63em" height="63em" src="../images/plus-sign.png"/>
        <h2>숙소등록 하러가기</h2>
        <p>숙소를 등록하려면 아래 버튼을 눌러주세요!</p>
       <a class="btn btn-secondary" type="submit" href="roomRegister?mseq=${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">숙소 등록 하러 가기</a>
      </div>
      <div class="feature col">
      <img class="bi" id="reservation" width="63em" height="63em" src="../images/accommodation.png"/>
        <h2>등록한 숙소</h2>
        <p>등록한 숙소를 보고 싶으시면 아래 버튼을 눌러주세요!</p>
        <a class="btn btn-secondary" type="submit" href="myRoom?mseq=${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">내가 등록한 숙소 보러 가기</a>
      </div>
      <div class="feature col">
        <img class="bi" id="review" width="63em" height="63em" src="../images/check.png"/>
        <h2>내 숙소 예약확인</h2>
        <p>내 숙소 예약확인을 하고 싶으시면 아래 버튼을 눌러주세요!</p>
        <input type="hidden" name="mseq" value="${member.mseq}">
        <a class="btn btn-secondary" type="submit" href="goReservationList?mseq=${member.mseq}" style="background-color: #2AC1BC!important;border-color: #2AC1BC!important;">내  숙소 예약한 목록 보러 가기</a>
      </div>
    </div>
  </div>
</main>
      <footer class="py-3 my-4" style="margin-top: 0%!important;">
         <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="/"
               class="nav-link px-2 text-muted">Home</a></li>
            <li class="nav-item"><a href="/board/list"
               class="nav-link px-2 text-muted">FAQs</a></li>
            <li class="nav-item"><a href="/Projectreview"
               class="nav-link px-2 text-muted">About</a></li>
         </ul>
         <p class="text-center text-muted">© 2022 Company, Inc</p>
      </footer>
    
  </body>
</html>