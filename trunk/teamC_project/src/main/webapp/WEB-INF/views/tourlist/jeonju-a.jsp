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
				<h1 class="page-header sidebar-title">관광지 소개</h1>
				<!-- First Blog Post -->
				<div class="row blogu">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/전주-관광지1.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">경기전</h2>
						<p>경기전은 조선왕조를 연 태조의 초상화, 즉 어진을 봉안하고, 제사를 지내기 위해 태종 10년 (1410년)
							지어진 건물이다. 전주, 경주, 평양 등의 어진 봉양처를 처음에는 어용전이라고 불리었는데, 태종 12년(1412년)에
							태조 진전(眞展)이라 하였다가 세종24년(1442년)에 전주는 경기전, 경주는 집경전, 평양은 영숭전이라 각각
							칭하였다. 경기전은 선조30년(1597년) 정유재란 때 소실되었으나 광해군6년(1614년) 중건되었다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/전주-관광지2.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">전동성당</h2>
						<p>한옥마을 초입에 서 있는 소박하고 아담한 모습의 전동성당. 전동성당은 1791년 신해박해 때
							윤지충(바오로)이 모친상 때 교리를 좇아 신주를 불태우고 제사를 지내지 않자 당시 유림들의 극심한 비난을 받게 되었고
							이에 윤지충과 관련된 권상연(야고보)이 참수형을 당한 한국 최초의 천주교 순교터이며, 호남의 모태 본당이 된 전교의
							발상지이다. 두 성인이 순교한지 1백년이 지난 1891년 봄, 순교터에 본당 터전을 마련해 전교를 시작했다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/전주-관광지3.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">덕진공원</h2>
						<p>전주 시내 중심에 위치한 덕진공원은 전주 시민들에게 있어 하나쯤의 사연을 간직한 추억의 장소이다. 특히
							덕진공원이 안고 있는 드넓은 호수인 덕진호에서는 해마다 7월초면 어김없이 덕진호를 수놓아 전국의 여행객들과
							사진작가에게 큰 인기를 얻고 있다. 전주 8경 중 하나로 손꼽히는 덕진채련(德津採蓮)과 함께 덕진공원의 3분의 2를
							차지하고 있는 연못인 덕진호에서 펼쳐지는 음악분수도 덕진공원의 빼놓을 수 없는 관람사항이 되었다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/전주-관광지4.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">아중호수</h2>
						<p>우아동1가에 위치한 아중호수는 3년전까지만 해도 '아중저수지(인교저수지)'로 불리던 곳이었다. 만수면적이
							26.05㏊, 총 저수량은 138만 8,000㎥로 꽤나 큰 저수지였으나, 시간이 변하면서 농업용수를 공급하는
							저수지로서의 역할이 퇴색되면서 15년 3월 시는 침체된 아중저수지 일대를 시민들의 쾌적한 삶터로 복원하고 생태를
							지키기 위한 공간으로 도약하고자 아중저수지 를 아중호수로 명칭을 바꾸었다.</p>
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
						<li><a href="/info/jeonju-i">전주소개</a></li>
						<li><a href="/tourlist/jeonju-a">추천관광지</a></li>
						<li><a href="/restaurant/jeonju-f">추천맛집</a></li>
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
							src="/resources/img/전주-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">시간을 간직한 도시</h4>
							화려하고 세련되어지는 도시의 변화 속에 옛 모습을 간직한 전주의 명소는 그 자체로도 큰 의미가 있는 것은 물론,
							방문하는 이들의 마음을 편안하게 해주는 매력을 지닌다. 수십, 수백 년 전의 모습에서 큰 변함이 없는 전주의 특별한
							장소로 과거로의 여행에 빠져보자
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/전주-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">전주 맛집리스트-밥집</h4>
							보글보글 막 끓여서 나오는 국밥 한 그릇이면 여행 중 쌓였던 피로도 풀리고 배도 든든히 채울 수 있다. 재료에 따라
							다양한 맛을 내는 전주의 국밥은 비슷한 듯 보여도 식당마다 제각각의 매력을 갖고 있다.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/전주-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">전주 맛집리스트-주전부리 간식</h4>
							주전부리, 간식 먹을 배는 따로 있는 거 아시죠? 가볍게 들어가 무겁게 나오는 분식&국수 전주에서만 만날 수 있는
							주전부리 여행 중간중간 작지만 큰 즐거움 간식 시간! 길거리에서 카페에서 즐기는 법도 메뉴도 다양한 전주의 주전부리를
							만나보자.
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
