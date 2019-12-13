<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>S Trip you can go everywhere</title>

<!-- Bootstrap Core CSS -->

<link href="/resources/css/bootstrap3.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/css/patros3.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->

</head>

<body data-spy="scroll">
	<!-- Navigation -->
	<style>
.absolute {
	position: absolute;
}

.right {
	float: right;
}
</style>
<body data-spy="scroll">
	<!-- Navigation -->
	<!-- //header -->
	<div class="main-sec inner-page">
		<!-- //header -->
		<header class="py-sm-3 pt-3 pb-2" id="home">
			<div class="menubar">
				<li class="absolute"><img src="/resources/img/logo2.png"></li>
				<ul class="right">
					<li><a href="/">HOME</li>
					<li><a href="#">국내</a>
						<ul>
							<li><a href="/info/seoul-i">서울</a></li>
							<li><a href="/info/busan-i">부산</a></li>
							<li><a href="/info/gyeongju-i">경주</a></li>
							<li><a href="/info/jeonju-i">전주</a></li>
						</ul></li>
					<li><a href="#">아시아</a>
						<ul>
							<li><a href="/info/japan-i">일본</a></li>
							<li><a href="/info/china-i">중국</a></li>
							<li><a href="/info/tai-i">태국</a></li>
							<li><a href="/info/hongkong-i">홍콩</a></li>
						</ul></li>
					<li><a href="#">유럽</a>
						<ul>
							<li><a href="/info/england-i">영국</a></li>
							<li><a href="/info/ita-i">이탈리아</a></li>
							<li><a href="/info/france-i">프랑스</a></li>
							<li><a href="/info/ger-i">독일</a></li>
						</ul></li>
					<li><a href="/shop/shop">패키지</a></li>
					<li><a href="/faq/index_faq">자주 묻는 질문</a></li>

					<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="user_id" />
					<li><a href="/front/mypage?userid=${user_id}">마이페이지</a></li>
					<li><a href="/customLogout">
					<i class="fa fa-sign-out fa-fw"></i>Logout</a></li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					<li><a href="/login/login">
					<i class="fa fa-sign-out fa-fw"></i>Login</a></li>
					</sec:authorize>
				</ul>
			</div>
		</header>
		<!-- //header -->
	</div>

	<!-- Page Content -->
	<section class="container blog">
		<div class="row">
			<!-- Blog Column -->
			<div class="col-md-8">
				<h1 class="page-header sidebar-title">맛집 소개</h1>
				<!-- First Blog Post -->
				<div class="row blogu">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/홍콩-맛집1.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">푹람문</h2>
						<p>메뉴는 많은 사람들이 사랑하는 딤섬, 바삭하면서도 부드러운 로스트 요리, 재료를 아낌 없이 사용한 해산물
							요리 등 웬만한 중식 요리를 모두 맛볼 수 있다. 가게의 규모가 큼에도 불구하고 종업원들이 친절하고 빠른 서비스를
							자랑하며, 매장 분위기도 깔끔하다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/홍콩-맛집2.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">미도 카페</h2>
						<p>1950년에 문을 연 '미도카페'는 저렴한 홍콩 현지식을 먹을 수 있는 곳이다. 홍콩 관광청에서 올드
							홍콩으로의 시간여행이라는 타이틀로 소개된 곳이다. 아날로그 홍콩의 감성을 그대로 느낄 수 있어 현지인은 물론
							관광객들도 많이 찾는다. 오래된 인테리어가 편안한 분위기를 연출해주고 템플 스트리트가 보이는 2층 창가 자리가 명당
							자리이다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/홍콩-맛집3.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">성림거</h2>
						<p>'성림거'는 침사추이에서 유명한 국수집으로 오래되어 보이는 가게 외관과는 달리 내부는 깔끔하게 리모델링
							되어 있다. 관광객과 현지인 모두 많이 찾는 곳으로 이 곳의 특징은 자신만의 시그니처 쌀국수를 만들어 먹을 수 있다는
							것이다. 국물의 유무 선택 부터 토핑 추가, 맵기/신맛 조절까지 모두 취향에 맞게 선택 가능하다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/홍콩-맛집4.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">비스테카</h2>
						<p>홍콩 로컬들에게 인기 있는 홍콩 맛집 비스테카. 스테이크를 전문적으로 판매하는 레스토랑이다. 홍콩 여행중에
							딤섬, 완탕면 등에 지치신 분들한 한번 이용해 보시는것도 괜찮을 거 같습니다.</p>
					</div>
				</div>
				<hr>
			</div>
			<!-- Blog Sidebar Column -->
			<aside class="col-md-4 sidebar-padding">
				<!-- Blog Categories -->
				<div class="blog-sidebar">
					<h4 class="sidebar-title">
						<i class="fa fa-list-ul"></i> 카테고리
					</h4>
					<hr>
					<ul class="sidebar-list">
						<li><a href="/info/hongkong-i">홍콩소개</a></li>
						<li><a href="/tourlist/hongkong-a">추천관광지</a></li>
						<li><a href="/restaurant/hongkong-f">추천맛집</a></li>
					</ul>
				</div>
				<!-- Recent Posts -->
				<div class="blog-sidebar">
					<h4 class="sidebar-title">
						<i class="fa fa-align-left"></i> 연관 패키지 상품
					</h4>
					<hr style="margin-bottom: 5px;">
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/홍콩-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">홍콩의 스카이라인을 따라 떠나는 여행</h4>
							홍콩 스카이라인을 따라서! 좁디좁은 홍콩은 세계 최고 혹은 최악의 집 임대료를 자랑한다고 해도 과언이 아니다. 좁은
							땅덩어리 안에 삐죽삐죽 솟은 고층 빌딩들! 대부분이 무료로 전망대를 제공하고 있어 어디든 올라가면 그곳이 바로 명당!
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/홍콩-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">홍콩 쇼핑 리스트</h4>
							홍콩 여행의 시작과 끝은 쇼핑! 비싼 명품 쇼핑도 좋지만 저렴하면서 매력 만점 쇼핑도 놓치지말자. 가족, 친구,
							동료, 남친 등 누구에게나 선물로 줘도 만족할 수 있는 제품들로 추천합니다.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/홍콩-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">홍콩의 애프터눈 티, 그리고 차찬탱</h4>
							홍콩이 영국의 문화권 아래 있었던 건 누구나 아는 사실! 아직도 곳곳에 남아 있는 영국 문화. 그 대표적인 것이
							애프터눈 티(Afternoon Tea)와 차찬탱(茶餐廳)을 볼 수 있다. 고급 호텔과 카페에서 즐기는 우아한 애프터눈
							티와 소박하지만 홍콩식의 브런치를 즐길 수 있는 차찬탱을 비교하며 즐기자.
						</div>
					</div>
				</div>

			</aside>
		</div>
	</section>


	<footer class="py-sm-5">
		<div class="container">
			<div class="row py-5">
				<!-- footer grid1 -->
				<div class="col-lg-4 text-center">
					<h2>
						<a class="text-white" href="/"> <img
							src="/resources/img/logo2.png" class="img-fluid"
							alt="Responsive image" />
						</a>
					</h2>
				</div>
				<!-- //footer gri12 -->
				<!-- footer grid2 -->
				<div class="col-lg-4  footv3-left text-center my-lg-0 my-5">
					<h3 class="mb-3">Get In Touch</h3>
					<div class="footing">S TRIP you can travel anywhere</div>
					<div class="fv3-contact mt-3">
						<p>90 Street, City, State 34789.</p>
					</div>
					<div class="fv3-contact my-3">
						<p>+456 123 7890</p>
					</div>
					<div class="fv3-contact">
						<p>
							<a href="mailto:example@email.com">info@example.com</a>
						</p>
					</div>
				</div>
				<!-- //footer grid2 -->
				<!-- footer grid3 -->
				<div class="col-lg-4  footv3-left text-center">
					<h3 class="mb-3">&nbsp;&nbsp;&nbsp;&nbsp;Navigation</h3>
					<ul class="list-agileits">
						<li><a href="/"> Home </a></li>
						<li class="my-3"><a href="/info/seoul-i">국내</a></li>
						<li class="mb-3"><a href="/info/japan-i">아시아 </a></li>
						<li class="mb-3"><a href="/info/england-i">유럽</a></li>
						<li><a href="/shop/shop">패키지</a></li>
					</ul>
				</div>
				<!-- //footer grid3 -->
			</div>
			<!-- //footer row -->
		</div>
		<!-- //footer container -->
	</footer>


	<!-- jQuery -->
	<script src="/resources/js/jquery3.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/js/bootstrap.min.js"></script>


	<!--Jquery Smooth Scrolling-->
	<script>
		$(document)
				.ready(
						function() {
							$(
									'.custom-menu a[href^="#"], .intro-scroller .inner-link')
									.on('click', function(e) {
										e.preventDefault();

										var target = this.hash;
										var $target = $(target);

										$('html, body').stop().animate({
											'scrollTop' : $target.offset().top
										}, 900, 'swing', function() {
											window.location.hash = target;
										});
									});

							$('a.page-scroll')
									.bind(
											'click',
											function(event) {
												var $anchor = $(this);
												$('html, body')
														.stop()
														.animate(
																{
																	scrollTop : $(
																			$anchor
																					.attr('href'))
																			.offset().top
																}, 1500,
																'easeInOutExpo');
												event.preventDefault();
											});

							$(".nav a").on(
									"click",
									function() {
										$(".nav").find(".active").removeClass(
												"active");
										$(this).parent().addClass("active");
									});

							$('body')
									.append(
											'<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
							$(window).scroll(function() {
								if ($(this).scrollTop() != 0) {
									$('#toTop').fadeIn();
								} else {
									$('#toTop').fadeOut();
								}
							});
							$('#toTop').click(function() {
								$("html, body").animate({
									scrollTop : 0
								}, 700);
								return false;
							});

						});
	</script>

</body>
</html>
