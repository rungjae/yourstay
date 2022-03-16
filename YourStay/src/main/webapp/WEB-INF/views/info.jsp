<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info</title>

<!-- DataTimePicker template -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />

<!-- Fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/blog.css" rel="stylesheet">
<link href="/css/footers.css" rel="stylesheet">
<link href="/css/info_cheatsheet.css" rel="stylesheet">
<link href="/css/info_features.css" rel="stylesheet">
<link href="/css/info_fontawesome.css" rel="stylesheet">
<link href="/css/info_review.css" rel="stylesheet">
<link href="/css/info_slide.css" rel="stylesheet">
<link href="/css/info_bill.css" rel="stylesheet">

<!-- JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/js/info_calendar.js"></script>
<script src="/js/info_bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<body>
<!-- 상단 -->
		<header class="blog-header py-3" style="margin-bottom: 5%;">
			<div
				class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 pt-1"></div>
				<div class="col-4 text-center">
					<a class="blog-header-logo text-dark" href="#">YourTrip</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<a class="link-secondary" href="#" aria-label="Search"> <svg
							xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="none" stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
							viewBox="0 0 24 24">
						<title>Search</title><circle cx="10.5" cy="10.5" r="7.5" />
						<path d="M21 21l-5.2-5.2" /></svg>
					</a> <a class="btn btn-sm btn-outline-secondary" href="login/loginPage">Sign
						up</a>
				</div>
			</div>
		</header>
		
	<main class="container">
		<!-- 제목 -->
		<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
			<div class="col-md-6 px-0">
				<h1 class="display-4 fst-italic">숙소이름</h1>
				<p class="lead my-3">간단한 설명 간단한 설명 간단한 설명 간단한 설명 간단한 설명 간단한 설명
					간단한 설명 간단한 설명 간단한 설명</p>
				<p class="lead mb-0">
					<a href="#" class="text-white fw-bold">무슨무슨 링크...</a>
				</p>
			</div>
		</div>

		<!-- 사진 -->
		<div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active"
					style="background-image: url('https://source.unsplash.com/LAaSoL0LrYs/1920x1080')">
					<div class="carousel-caption">
						<h5>First slide label</h5>
						<p>Some representative placeholder content for the first
							slide.</p>
					</div>
				</div>
				<div class="carousel-item"
					style="background-image: url('https://source.unsplash.com/bF2vsubyHcQ/1920x1080')">
					<div class="carousel-caption">
						<h5>Second slide label</h5>
						<p>Some representative placeholder content for the second
							slide.</p>
					</div>
				</div>
				<div class="carousel-item"
					style="background-image: url('https://source.unsplash.com/szFUQoyvrxM/1920x1080')">
					<div class="carousel-caption">
						<h5>Third slide label</h5>
						<p>Some representative placeholder content for the third
							slide.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<hr>
		<!-- 내용 -->
		<div class="row g-5">
			<div class="col-md-8">
				<article class="blog-post">
					<h2 class="blog-post-title">이재성님이 운영하는 숙소입니다</h2>
					<p class="blog-post-meta">침실 2개, 침대 2개, 최대인원 5명</p>
					<hr>
					<h2 class="fw-bold">편의시설</h2>
					<div
						class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-wifi accom-op"></i></svg>
							<div>
								<p class="mb-0">와이파이</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-car-battery accom-op"></i></svg>
							<div>
								<p class="mb-0">전자렌지</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-carrot accom-op"></i></svg>
							<div>
								<p class="mb-0">냉장고</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-droplet accom-op"></i></svg>
							<div>
								<p class="mb-0">비데</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-tv accom-op"></i></svg>
							<div>
								<p class="mb-0">TV</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-dog accom-op"></i></svg>
							<div>
								<p class="mb-0">반려견동반</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-utensils accom-op"></i></svg>
							<div>
								<p class="mb-0">주방</p>
							</div>
						</div>
						<div class="col d-flex align-items-start">
							<svg class="bi text-muted flex-shrink-0 me-3" width="1.75em"
								height="1.75em">
								<i class="fa-solid fa-soap accom-op"></i></svg>
							<div>
								<p class="mb-0">세탁기</p>
							</div>
						</div>
					</div>
					<hr>
					<h2 class="fw-bold">숙소 소개</h2>
					<p>숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개
						숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개
						숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개 숙소 소개</p>

					<hr>
					<!-- 후기게시판 -->
					<h2 class="fw-bold">후기</h2>
					<p>방문하신 분들의 후기를 찾아보세요 :)</p>
					<link rel="stylesheet"
						href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css"
						integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv"
						crossorigin="anonymous">
					<div class="container">
						<div class="col-md-12">
							<div class="offer-dedicated-body-left">
								<div class="tab-content" id="pills-tabContent">
									<div class="tab-pane fade" id="pills-order-online"
										role="tabpanel" aria-labelledby="pills-order-online-tab">
										<div id="#menu"
											class="bg-white rounded shadow-sm p-4 mb-4 explore-outlets">
											<h5 class="mb-4">Recommended</h5>
											<form class="explore-outlets-search mb-4">
												<div class="input-group">
													<input type="text" placeholder="Search for dishes..."
														class="form-control">
													<div class="input-group-append">
														<button type="button" class="btn btn-link">
															<i class="icofont-search"></i>
														</button>
													</div>
												</div>
											</form>
											<h6 class="mb-3">
												Most Popular <span class="badge badge-success"><i
													class="icofont-tags"></i> 15% Off All Items </span>
											</h6>
											<div
												class="owl-carousel owl-theme owl-carousel-five offers-interested-carousel mb-3 owl-loaded owl-drag owl-hidden">

												<div class="owl-stage-outer">
													<div class="owl-stage"
														style="transform: translate3d(-682px, 0px, 0px); transition: all 0s ease 0s; width: 2183px;">
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/2.png">
																		<h6>Sandwiches</h6> <small>8 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/3.png">
																		<h6>Soups</h6> <small>2 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/4.png">
																		<h6>Pizzas</h6> <small>56 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/5.png">
																		<h6>Pastas</h6> <small>10 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/6.png">
																		<h6>Chinese</h6> <small>25 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item active" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/1.png">
																		<h6>Burgers</h6> <small>5 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item active" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/2.png">
																		<h6>Sandwiches</h6> <small>8 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item active" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/3.png">
																		<h6>Soups</h6> <small>2 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item active" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/4.png">
																		<h6>Pizzas</h6> <small>56 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item active" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/5.png">
																		<h6>Pastas</h6> <small>10 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/6.png">
																		<h6>Chinese</h6> <small>25 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/1.png">
																		<h6>Burgers</h6> <small>5 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/2.png">
																		<h6>Sandwiches</h6> <small>8 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/3.png">
																		<h6>Soups</h6> <small>2 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/4.png">
																		<h6>Pizzas</h6> <small>56 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
														<div class="owl-item cloned" style="width: 136.4px;">
															<div class="item">
																<div class="mall-category-item">
																	<a href="#"> <img class="img-fluid"
																		src="img/list/5.png">
																		<h6>Pastas</h6> <small>10 ITEMS</small>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="owl-nav">
													<button type="button" role="presentation" class="owl-prev">
														<i class="icofont-thin-left"></i>
													</button>
													<button type="button" role="presentation" class="owl-next">
														<i class="icofont-thin-right"></i>
													</button>
												</div>
												<div class="owl-dots disabled"></div>
											</div>
										</div>
										<div class="row">
											<h5 class="mb-4 mt-3 col-md-12">Best Sellers</h5>
											<div class="col-md-4 col-sm-6 mb-4">
												<div
													class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
													<div class="list-card-image">
														<div class="star position-absolute">
															<span class="badge badge-success"><i
																class="icofont-star"></i> 3.1 (300+)</span>
														</div>
														<div class="favourite-heart text-danger position-absolute">
															<a href="#"><i class="icofont-heart"></i></a>
														</div>
														<div class="member-plan position-absolute">
															<span class="badge badge-dark">Promoted</span>
														</div>
														<a href="#"> <img src="img/list/7.png"
															class="img-fluid item-img">
														</a>
													</div>
													<div class="p-3 position-relative">
														<div class="list-card-body">
															<h6 class="mb-1">
																<a href="#" class="text-black">Bite Me Sandwiches</a>
															</h6>
															<p class="text-gray mb-2">North Indian • Indian</p>
															<p class="text-gray time mb-0">
																<a class="btn btn-link btn-sm pl-0 text-black pr-0"
																	href="#">$550 </a> <span class="badge badge-success">NEW</span>
																<span class="float-right"> <a
																	class="btn btn-outline-secondary btn-sm" href="#">ADD</a>
																</span>
															</p>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4 col-sm-6 mb-4">
												<div
													class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
													<div class="list-card-image">
														<div class="star position-absolute">
															<span class="badge badge-success"><i
																class="icofont-star"></i> 3.1 (300+)</span>
														</div>
														<div class="favourite-heart text-danger position-absolute">
															<a href="#"><i class="icofont-heart"></i></a>
														</div>
														<div class="member-plan position-absolute">
															<span class="badge badge-dark">Promoted</span>
														</div>
														<a href="#"> <img src="img/list/8.png"
															class="img-fluid item-img">
														</a>
													</div>
													<div class="p-3 position-relative">
														<div class="list-card-body">
															<h6 class="mb-1">
																<a href="#" class="text-black">Famous Dave's Bar-B </a>
															</h6>
															<p class="text-gray mb-2">Hamburgers • Indian</p>
															<p class="text-gray time mb-0">
																<a class="btn btn-link btn-sm pl-0 text-black pr-0"
																	href="#">$250 </a> <span class="badge badge-primary">NEW</span>
																<span class="float-right"> <span
																	class="count-number">
																		<button
																			class="btn btn-outline-secondary  btn-sm left dec">
																			<i class="icofont-minus"></i>
																		</button> <input class="count-number-input" type="text"
																		value="1" readonly="">
																		<button
																			class="btn btn-outline-secondary btn-sm right inc">
																			<i class="icofont-plus"></i>
																		</button>
																</span>
																</span>
															</p>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-4 col-sm-6 mb-4">
												<div
													class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
													<div class="list-card-image">
														<div class="star position-absolute">
															<span class="badge badge-success"><i
																class="icofont-star"></i> 3.1 (300+)</span>
														</div>
														<div class="favourite-heart text-danger position-absolute">
															<a href="#"><i class="icofont-heart"></i></a>
														</div>
														<div class="member-plan position-absolute">
															<span class="badge badge-dark">Promoted</span>
														</div>
														<a href="#"> <img src="img/list/9.png"
															class="img-fluid item-img">
														</a>
													</div>
													<div class="p-3 position-relative">
														<div class="list-card-body">
															<h6 class="mb-1">
																<a href="#" class="text-black">Bite Me Sandwiches</a>
															</h6>
															<p class="text-gray mb-2">North Indian • Indian</p>
															<p class="text-gray time mb-0">
																<a class="btn btn-link btn-sm pl-0 text-black pr-0"
																	href="#">$250 </a> <span class="badge badge-info">NEW</span>
																<span class="float-right"> <a
																	class="btn btn-outline-secondary btn-sm" href="#">ADD</a>
																</span>
															</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<h5 class="mb-4 mt-3 col-md-12">
												Quick Bites <small class="h6 text-black-50">3 ITEMS</small>
											</h5>
											<div class="col-md-12">
												<div class="bg-white rounded border shadow-sm mb-4">
													<div class="gold-members p-3 border-bottom">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Chicken Tikka Sub</h6>
																<p class="text-gray mb-0">$314 - 12" (30 cm)</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3 border-bottom">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">
																	Cheese corn Roll <span class="badge badge-danger">BESTSELLER</span>
																</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-success food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">
																	Cheese Spinach corn Roll <span
																		class="badge badge-success">Pure Veg</span>
																</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<h5 class="mb-4 mt-3 col-md-12">
												Starters <small class="h6 text-black-50">3 ITEMS</small>
											</h5>
											<div class="col-md-12">
												<div class="bg-white rounded border shadow-sm mb-4">
													<div class="menu-list p-3 border-bottom">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<img class="mr-3 rounded-pill" src="img/5.jpg"
																alt="Generic placeholder image">
															<div class="media-body">
																<h6 class="mb-1">Veg Spring Roll</h6>
																<p class="text-gray mb-0">$314 - 12" (30 cm)</p>
															</div>
														</div>
													</div>
													<div class="menu-list p-3 border-bottom">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<img class="mr-3 rounded-pill" src="img/2.jpg"
																alt="Generic placeholder image">
															<div class="media-body">
																<h6 class="mb-1">
																	Stuffed Mushroom <span class="badge badge-danger">BESTSELLER</span>
																</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
													<div class="menu-list p-3">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<img class="mr-3 rounded-pill" src="img/3.jpg"
																alt="Generic placeholder image">
															<div class="media-body">
																<h6 class="mb-1">
																	Honey Chilli Potato <span class="badge badge-success">Pure
																		Veg</span>
																</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<h5 class="mb-4 mt-3 col-md-12">
												Soups <small class="h6 text-black-50">8 ITEMS</small>
											</h5>
											<div class="col-md-12">
												<div class="bg-white rounded border shadow-sm">
													<div class="gold-members p-3 border-bottom">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Tomato Dhania Shorba</h6>
																<p class="text-gray mb-0">$314 - 12" (30 cm)</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3 border-bottom">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Veg Manchow Soup</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3 border-bottom">
														<span class="count-number float-right">
															<button
																class="btn btn-outline-secondary  btn-sm left dec">
																<i class="icofont-minus"></i>
															</button> <input class="count-number-input" type="text" value="1"
															readonly="">
															<button
																class="btn btn-outline-secondary btn-sm right inc">
																<i class="icofont-plus"></i>
															</button>
														</span>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-success food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Lemon Coriander Soup</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3 border-bottom">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Tomato Dhania Shorba</h6>
																<p class="text-gray mb-0">$314 - 12" (30 cm)</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3 border-bottom">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-danger food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Veg Manchow Soup</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
													<div class="gold-members p-3">
														<a class="btn btn-outline-secondary btn-sm  float-right"
															href="#">ADD</a>
														<div class="media">
															<div class="mr-3">
																<i class="icofont-ui-press text-success food-item"></i>
															</div>
															<div class="media-body">
																<h6 class="mb-1">Lemon Coriander Soup</h6>
																<p class="text-gray mb-0">$600</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-gallery" role="tabpanel"
										aria-labelledby="pills-gallery-tab">
										<div id="gallery" class="bg-white rounded shadow-sm p-4 mb-4">
											<div
												class="restaurant-slider-main position-relative homepage-great-deals-carousel">
												<div
													class="owl-carousel owl-theme homepage-ad owl-loaded owl-drag owl-hidden">

													<div class="owl-stage-outer">
														<div class="owl-stage"
															style="transform: translate3d(-1364px, 0px, 0px); transition: all 0s ease 0s; width: 8184px;">
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/1.png">
																</div>
															</div>
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/2.png">
																</div>
															</div>
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/3.png">
																</div>
															</div>
															<div class="owl-item active" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/1.png">
																</div>
															</div>
															<div class="owl-item" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/2.png">
																</div>
															</div>
															<div class="owl-item" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/3.png">
																</div>
															</div>
															<div class="owl-item" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/1.png">
																</div>
															</div>
															<div class="owl-item" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/2.png">
																</div>
															</div>
															<div class="owl-item" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/3.png">
																</div>
															</div>
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/1.png">
																</div>
															</div>
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/2.png">
																</div>
															</div>
															<div class="owl-item cloned" style="width: 682px;">
																<div class="item">
																	<img class="img-fluid" src="img/gallery/3.png">
																</div>
															</div>
														</div>
													</div>
													<div class="owl-nav">
														<button type="button" role="presentation" class="owl-prev">
															<i class="fa fa-chevron-left"></i>
														</button>
														<button type="button" role="presentation" class="owl-next">
															<i class="fa fa-chevron-right"></i>
														</button>
													</div>
													<div class="owl-dots disabled"></div>
												</div>
												<div
													class="position-absolute restaurant-slider-pics bg-dark text-white">2
													of 14 Photos</div>
												<div class="position-absolute restaurant-slider-view-all">
													<button type="button" class="btn btn-light bg-white">See
														all Photos</button>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-restaurant-info"
										role="tabpanel" aria-labelledby="pills-restaurant-info-tab">
										<div id="restaurant-info"
											class="bg-white rounded shadow-sm p-4 mb-4">
											<div class="address-map float-right ml-5">
												<div class="mapouter">
													<div class="gmap_canvas">
														<iframe width="300" height="170" id="gmap_canvas"
															src="https://maps.google.com/maps?q=university%20of%20san%20francisco&amp;t=&amp;z=9&amp;ie=UTF8&amp;iwloc=&amp;output=embed"
															frameborder="0" scrolling="no" marginheight="0"
															marginwidth="0"></iframe>
													</div>
												</div>
											</div>
											<h5 class="mb-4">Restaurant Info</h5>
											<p class="mb-3">
												Jagjit Nagar, Near Railway Crossing, <br> Near Model
												Town, Ludhiana, PUNJAB
											</p>
											<p class="mb-2 text-black">
												<i class="icofont-phone-circle text-primary mr-2"></i> +91
												01234-56789, +91 01234-56789
											</p>
											<p class="mb-2 text-black">
												<i class="icofont-email text-primary mr-2"></i>
												iamosahan@gmail.com, osahaneat@gmail.com
											</p>
											<p class="mb-2 text-black">
												<i class="icofont-clock-time text-primary mr-2"></i> Today
												11am – 5pm, 6pm – 11pm <span class="badge badge-success">
													OPEN NOW </span>
											</p>
											<hr class="clearfix">
											<p class="text-black mb-0">
												You can also check the 3D view by using our menue map
												clicking here &nbsp;&nbsp;&nbsp; <a
													class="text-info font-weight-bold" href="#">Venue Map</a>
											</p>
											<hr class="clearfix">
											<h5 class="mt-4 mb-4">More Info</h5>
											<p class="mb-3">Dal Makhani, Panneer Butter Masala,
												Kadhai Paneer, Raita, Veg Thali, Laccha Paratha, Butter Naan</p>
											<div class="border-btn-main mb-4">
												<a class="border-btn text-success mr-2" href="#"><i
													class="icofont-check-circled"></i> Breakfast</a> <a
													class="border-btn text-danger mr-2" href="#"><i
													class="icofont-close-circled"></i> No Alcohol Available</a> <a
													class="border-btn text-success mr-2" href="#"><i
													class="icofont-check-circled"></i> Vegetarian Only</a> <a
													class="border-btn text-success mr-2" href="#"><i
													class="icofont-check-circled"></i> Indoor Seating</a> <a
													class="border-btn text-success mr-2" href="#"><i
													class="icofont-check-circled"></i> Breakfast</a> <a
													class="border-btn text-danger mr-2" href="#"><i
													class="icofont-close-circled"></i> No Alcohol Available</a> <a
													class="border-btn text-success mr-2" href="#"><i
													class="icofont-check-circled"></i> Vegetarian Only</a>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-book" role="tabpanel"
										aria-labelledby="pills-book-tab">
										<div id="book-a-table"
											class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
											<h5 class="mb-4">Book A Table</h5>
											<form>
												<div class="row">
													<div class="col-sm-6">
														<div class="form-group">
															<label>Full Name</label> <input class="form-control"
																type="text" placeholder="Enter Full Name">
														</div>
													</div>
													<div class="col-sm-6">
														<div class="form-group">
															<label>Email Address</label> <input class="form-control"
																type="text" placeholder="Enter Email address">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-6">
														<div class="form-group">
															<label>Mobile number</label> <input class="form-control"
																type="text" placeholder="Enter Mobile number">
														</div>
													</div>
													<div class="col-sm-6">
														<div class="form-group">
															<label>Date And Time</label> <input class="form-control"
																type="text" placeholder="Enter Date And Time">
														</div>
													</div>
												</div>
												<div class="form-group text-right">
													<button class="btn btn-primary" type="button">
														Submit</button>
												</div>
											</form>
										</div>
									</div>
									<div class="tab-pane fade active show" id="pills-reviews"
										role="tabpanel" aria-labelledby="pills-reviews-tab">
										<div id="ratings-and-reviews"
											class="bg-white rounded shadow-sm p-4 mb-4 clearfix restaurant-detailed-star-rating">
											<span class="star-rating float-right"> <a href="#"><i
													class="icofont-ui-rating icofont-2x active"></i></a> <a
												href="#"><i class="icofont-ui-rating icofont-2x active"></i></a>
												<a href="#"><i
													class="icofont-ui-rating icofont-2x active"></i></a> <a
												href="#"><i class="icofont-ui-rating icofont-2x active"></i></a>
												<a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
											</span>
											<h5 class="mb-0 pt-1">Rate this Place</h5>
										</div>
										<div
											class="bg-white rounded shadow-sm p-4 mb-4 clearfix graph-star-rating">
											<h5 class="mb-0 mb-4">Ratings and Reviews</h5>
											<div class="graph-star-rating-header">
												<div class="star-rating">
													<a href="#"><i class="icofont-ui-rating active"></i></a> <a
														href="#"><i class="icofont-ui-rating active"></i></a> <a
														href="#"><i class="icofont-ui-rating active"></i></a> <a
														href="#"><i class="icofont-ui-rating active"></i></a> <a
														href="#"><i class="icofont-ui-rating"></i></a> <b
														class="text-black ml-2">334</b>
												</div>
												<p class="text-black mb-4 mt-2">Rated 3.5 out of 5</p>
											</div>
											<div class="graph-star-rating-body">
												<div class="rating-list">
													<div class="rating-list-left text-black">5 Star</div>
													<div class="rating-list-center">
														<div class="progress">
															<div style="width: 56%" aria-valuemax="5"
																aria-valuemin="0" aria-valuenow="5" role="progressbar"
																class="progress-bar bg-primary">
																<span class="sr-only">80% Complete (danger)</span>
															</div>
														</div>
													</div>
													<div class="rating-list-right text-black">56%</div>
												</div>
												<div class="rating-list">
													<div class="rating-list-left text-black">4 Star</div>
													<div class="rating-list-center">
														<div class="progress">
															<div style="width: 23%" aria-valuemax="5"
																aria-valuemin="0" aria-valuenow="5" role="progressbar"
																class="progress-bar bg-primary">
																<span class="sr-only">80% Complete (danger)</span>
															</div>
														</div>
													</div>
													<div class="rating-list-right text-black">23%</div>
												</div>
												<div class="rating-list">
													<div class="rating-list-left text-black">3 Star</div>
													<div class="rating-list-center">
														<div class="progress">
															<div style="width: 11%" aria-valuemax="5"
																aria-valuemin="0" aria-valuenow="5" role="progressbar"
																class="progress-bar bg-primary">
																<span class="sr-only">80% Complete (danger)</span>
															</div>
														</div>
													</div>
													<div class="rating-list-right text-black">11%</div>
												</div>
												<div class="rating-list">
													<div class="rating-list-left text-black">2 Star</div>
													<div class="rating-list-center">
														<div class="progress">
															<div style="width: 2%" aria-valuemax="5"
																aria-valuemin="0" aria-valuenow="5" role="progressbar"
																class="progress-bar bg-primary">
																<span class="sr-only">80% Complete (danger)</span>
															</div>
														</div>
													</div>
													<div class="rating-list-right text-black">02%</div>
												</div>
											</div>
											<div class="graph-star-rating-footer text-center mt-3 mb-3">
												<button type="button" class="btn btn-outline-primary btn-sm">Rate
													and Review</button>
											</div>
										</div>
										<div
											class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
											<a href="#"
												class="btn btn-outline-primary btn-sm float-right">Top
												Rated</a>
											<h5 class="mb-1">All Ratings and Reviews</h5>
											<div class="reviews-members pt-4 pb-4">
												<div class="media">
													<a href="#"><img alt="Generic placeholder image"
														src="http://bootdey.com/img/Content/avatar/avatar1.png"
														class="mr-3 rounded-pill"></a>
													<div class="media-body">
														<div class="reviews-members-header">
															<span class="star-rating float-right"> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating"></i></a>
															</span>
															<h6 class="mb-1">
																<a class="text-black" href="#">Singh Osahan</a>
															</h6>
															<p class="text-gray">Tue, 20 Mar 2020</p>
														</div>
														<div class="reviews-members-body">
															<p>Contrary to popular belief, Lorem Ipsum is not
																simply random text. It has roots in a piece of classical
																Latin literature from 45 BC, making it over 2000 years
																old. Richard McClintock, a Latin professor at
																Hampden-Sydney College in Virginia, looked up one of the
																more obscure Latin words, consectetur, from a Lorem
																Ipsum passage, and going through the cites of the word
																in classical literature, discovered the undoubtable
																source. Lorem Ipsum comes from sections</p>
														</div>
														<div class="reviews-members-footer">
															<a class="total-like" href="#"><i
																class="icofont-thumbs-up"></i> 856M</a> <a
																class="total-like" href="#"><i
																class="icofont-thumbs-down"></i> 158K</a> <span
																class="total-like-user-main ml-2" dir="rtl"> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Gurdeep Osahan"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar5.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Gurdeep Singh"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar2.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Askbootstrap"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar3.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Osahan"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar4.png"
																	class="total-like-user rounded-pill"></a>
															</span>
														</div>
													</div>
												</div>
											</div>
											<hr>
											<div class="reviews-members pt-4 pb-4">
												<div class="media">
													<a href="#"><img alt="Generic placeholder image"
														src="http://bootdey.com/img/Content/avatar/avatar6.png"
														class="mr-3 rounded-pill"></a>
													<div class="media-body">
														<div class="reviews-members-header">
															<span class="star-rating float-right"> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating active"></i></a> <a href="#"><i
																	class="icofont-ui-rating"></i></a>
															</span>
															<h6 class="mb-1">
																<a class="text-black" href="#">Gurdeep Singh</a>
															</h6>
															<p class="text-gray">Tue, 20 Mar 2020</p>
														</div>
														<div class="reviews-members-body">
															<p>It is a long established fact that a reader will
																be distracted by the readable content of a page when
																looking at its layout. The point of using Lorem Ipsum is
																that it has a more-or-less normal distribution of
																letters, as opposed to using 'Content here, content
																here', making it look like readable English.</p>
														</div>
														<div class="reviews-members-footer">
															<a class="total-like" href="#"><i
																class="icofont-thumbs-up"></i> 88K</a> <a class="total-like"
																href="#"><i class="icofont-thumbs-down"></i> 1K</a> <span
																class="total-like-user-main ml-2" dir="rtl"> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Gurdeep Osahan"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar5.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Gurdeep Singh"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar2.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Askbootstrap"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar3.png"
																	class="total-like-user rounded-pill"></a> <a
																data-toggle="tooltip" data-placement="top" title=""
																href="#" data-original-title="Osahan"><img
																	alt="Generic placeholder image"
																	src="http://bootdey.com/img/Content/avatar/avatar4.png"
																	class="total-like-user rounded-pill"></a>
															</span>
														</div>
													</div>
												</div>
											</div>
											<hr>
											<a class="text-center w-100 d-block mt-4 font-weight-bold"
												href="#">See All Reviews</a>
										</div>
										<div
											class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
											<h5 class="mb-4">Leave Comment</h5>
											<p class="mb-2">Rate the Place</p>
											<div class="mb-4">
												<span class="star-rating"> <a href="#"><i
														class="icofont-ui-rating icofont-2x"></i></a> <a href="#"><i
														class="icofont-ui-rating icofont-2x"></i></a> <a href="#"><i
														class="icofont-ui-rating icofont-2x"></i></a> <a href="#"><i
														class="icofont-ui-rating icofont-2x"></i></a> <a href="#"><i
														class="icofont-ui-rating icofont-2x"></i></a>
												</span>
											</div>
											<form>
												<div class="form-group">
													<label>Your Comment</label>
													<textarea class="form-control"></textarea>
												</div>
												<div class="form-group">
													<button class="btn btn-primary btn-sm" type="button">
														Submit Comment</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</article>

			</div>
			<!-- 오른쪽 달력바 -->
			<div class="col-md-4">
				<div class="position-sticky" style="top: 2rem;">

					<div class='col-md-3 col-xs-4'>
						<div class="form-group">
							<div class="input-group date" id="datetimepicker1"
								data-target-input="nearest">
								<input type="text" class="form-control datetimepicker-input"
									data-target="#datetimepicker1" placeholder="Start-date"
									onkeyup="invalid()" id="startdate" name="startdate">
								<div class="input-group-append" data-target="#datetimepicker1"
									data-toggle="datetimepicker">
									<div class="input-group-text">
										<i class="fa fa-calendar"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class='col-md-3 col-xs-4'>
						<div class="form-group">
							<div class="input-group date" id="datetimepicker2"
								data-target-input="nearest">
								<input type="text" class="form-control datetimepicker-input"
									data-target="#datetimepicker2" placeholder="Deadline"
									onkeyup="invalid()" id="deadline" name="deadline">
								<div class="input-group-append" data-target="#datetimepicker2"
									data-toggle="datetimepicker">
									<div class="input-group-text">
										<i class="fa fa-calendar"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

					<main class="page payment-page">
						<section class="payment-form dark">
							<div class="container">
								<form>
									<div class="products">
										<h3 class="title">금액</h3>
										<div class="item">
											<span class="price">$200</span>
											<p class="item-name">Product 1</p>
											<p class="item-description">Lorem ipsum dolor sit amet</p>
										</div>
										<div class="item">
											<span class="price">$120</span>
											<p class="item-name">Product 2</p>
											<p class="item-description">Lorem ipsum dolor sit amet</p>
										</div>
										<div class="total">
											Total<span class="price">$320</span>
										</div>
									</div>
									<div class="card-details">
										<h3 class="title">Credit Card Details</h3>
										<div class="row">
											<div class="form-group col-sm-7">
												<label for="card-holder">Card Holder</label> <input
													id="card-holder" type="text" class="form-control"
													placeholder="Card Holder" aria-label="Card Holder"
													aria-describedby="basic-addon1">
											</div>
											<div class="form-group col-sm-5">
												<label for="">Expiration Date</label>
												<div class="input-group expiration-date">
													<input type="text" class="form-control" placeholder="MM"
														aria-label="MM" aria-describedby="basic-addon1"> <span
														class="date-separator">/</span> <input type="text"
														class="form-control" placeholder="YY" aria-label="YY"
														aria-describedby="basic-addon1">
												</div>
											</div>
											<div class="form-group col-sm-8">
												<label for="card-number">Card Number</label> <input
													id="card-number" type="text" class="form-control"
													placeholder="Card Number" aria-label="Card Holder"
													aria-describedby="basic-addon1">
											</div>
											<div class="form-group col-sm-4">
												<label for="cvc">CVC</label> <input id="cvc" type="text"
													class="form-control" placeholder="CVC"
													aria-label="Card Holder" aria-describedby="basic-addon1">
											</div>
											<div class="form-group col-sm-12">
												<button type="button" class="btn btn-primary"
													data-bs-toggle="modal" data-bs-target="#staticBackdropLive">
													예약하기</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</section>
					</main>
				</div>
			</div>
		</div>
	</main>
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
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">© 2021 Company, Inc</p>
		</footer>
	</div>
</body>
</html>