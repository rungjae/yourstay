<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap-css -->
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="///js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<link rel="stylesheet" href="../css/airDnDCSS.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/reset.css">

<!-- 구글웹폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">
<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="../css/blog.css" type="text/css"
   media="all" />
<%
	String memail = (String) session.getAttribute("memail");
	long mseq = (long) session.getAttribute("mseq");
%>
</head>
<body>
	<!-- 메뉴바 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
	<header class="blog-header py-3" style="margin-bottom: 5%;">
		<div
			class="row flex-nowrap justify-content-between align-items-center">
			<div class="col-4 pt-1"></div>
			<div class="col-4 text-center">
				<a class="blog-header-logo text-dark" href="/"
					style="text-decoration: none">YourTrip</a>
			</div>
			<div class="col-4 d-flex justify-content-end align-items-center">
				<a class="link-secondary" href="#" aria-label="Search"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
						viewBox="0 0 24 24">
						<title>Search</title><circle cx="10.5" cy="10.5" r="7.5" />
						<path d="M21 21l-5.2-5.2" /></svg>
				</a>
				<c:choose>
					<c:when test="${msg =='failure'}">
						<a class="btn btn-secondary" href="../login/loginPage"
							style="background-color: #2AC1BC !important; border-color: #2AC1BC !important;">Sign
							up</a>
					</c:when>
					<c:when test="${msg == null}">
						<!-- 로그인X -->

						<%
							if (memail == null) {
						%>
						<a class="btn btn-secondary" href="../login/loginPage"
							style="background-color: #2AC1BC !important; border-color: #2AC1BC !important;">Sign
							up</a>
						<%
							} else {
						%>
						<a href="/mypage/home" style="margin-top: 3%; margin-right: 3%;"><%=memail%>님
							반갑습니다! </a>
						<a href="../login/logout.do" class="btn btn-secondary"
							style="background-color: #2AC1BC !important; border-color: #2AC1BC !important;">로그아웃</a>
						<%
							}
						%>
					</c:when>
					<c:otherwise>
						<a href="/mypage/home" style="margin-top: 3%; margin-right: 3%;"><%=memail%>님
							반갑습니다! </a>
						<a href="../login/logout.do" class="btn btn-secondary"
							style="background-color: #2AC1BC !important; border-color: #2AC1BC !important;">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!-- 내용 -->
		<div>
			<div class="bd-example">
				
				<div class="alert alert-secondary alert-dismissible fade show"
					role="alert">
					A simple secondary alert with <a href="#" class="alert-link">an
						example link</a>. Give it a click if you like.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					A simple success alert with <a href="#" class="alert-link">an
						example link</a>. Give it a click if you like.
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
				
			</div>
		</div>

		<!-- 푸터 -->
		<div class="container">
			<footer class="py-3 my-4">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Home</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Features</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Pricing</a></li>
					<li class="nav-item"><a href="/board/list"
						class="nav-link px-2 text-muted">FAQs</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">About</a></li>
				</ul>
				<p class="text-center text-muted">© 2021 Company, Inc</p>
			</footer>
		</div>
</body>
</html>