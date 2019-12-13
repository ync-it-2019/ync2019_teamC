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
							<img class="img-responsive" src="/resources/img/서울-맛집1.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">아리랑</h2>
						<p>한국을 대표하는 서울에서 가장 유명한 한국전통음식점이며, 2017 미슐랭가이드 서울 '빕그루망' 선정식당인
							아리랑은 한국적 분위기와 음식맛으로 한국인은 물론, 세계 각국 외국인의 입맛을 매료(만족)시키는 서울에서 가장 유명한
							한식당입니다. 주요 메뉴는 한국의 전통조리방식에 따라 손님 테이블에서 참나무 숯불로 직접 굽는 한국산 최상급
							소양념갈비와 등심구이 및 불고기, 비빔밥, 갈비탕 등이 있습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/서울-맛집2.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">최고집 수제돼지갈비</h2>
						<p>인천에서 20년가까이된 터줏대감 맛집이지만 서울 홍대에서도 유명하다고 소문난 맛집이다. 다른가게에 비해서
							비교적 가격이 싼편이며, 사장님과 직원들의 서비스가 매우 좋다고 한다. 메뉴는 삼겹살과 갈비가 있고, 대표메뉴로는
							삼겹살과 갈비를 합친 생포갈비가 있다. 달 짝지근한 양념이 포인트인 수제돼지갈비도 있으니 홍대에 들렀으면 한번
							가볼만한 맛집이다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/서울-맛집3.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">지화자</h2>
						<p>국가무형문화재 기능보유자 가족이 직접 운영하는 지화자는 우리나라 최고의 음식문화 결정체인 궁중음식을
							재현하는 최고급 음식점으로, 일찌감치 한식세계화에 앞장서 내국인 고객은 물론 특히 외국인 많이 찾는 대한민국을
							대표하는 최고의 식당입니다. 조선왕조 600년의 역사가 살아 숨쉬는 서촌의 고풍스러움과 아늑한 정원이 내려다 보이는
							편안한 식당에서 정성스러운 궁중음식과 다양한 일품요리와 전통주가 있습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/서울-맛집4.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">해도식당</h2>
						<p>해도식당은 ‘세상 모든 바다에서 좋은 해산물만 다 훔쳐왔다’는 의미로 귀한 해산물을 모두 담은
							해물탕.해물찜, 자연산 왕새우로 만든 새우장.새우전 등 싱싱한 자연산.제철 해산물 요리를 제공하는 해산물 전문
							식당입니다. 서울 중구 롯데 백화점에 위치해 있으며, 잔잔한 분위기와 바다를 느끼고 싶으면 한번쯤 둘러볼만한
							곳입니다.</p>
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
						<li><a href="/info/seoul-i">서울소개</a></li>
						<li><a href="/tourlist/seoul-a">추천관광지</a></li>
						<li><a href="/restaurant/seoul-f">추천맛집</a></li>
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
							src="/resources/img/서울-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">서울의 테마파크</h4>
							서울에서의 독특한 경험! 언제 가도 짜릿한 놀이공원과 여름이면 생각나는 시원한 워터파크가 서울 내, 혹은 멀지 않은
							곳에 위치해 있다. 일정 중 하루쯤 날을 잡아 방문해보는 것은 어떨까?
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/서울-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">서울의 역사와 문화</h4>
							서울에서의 역사와 문화를 두 눈으로 직접 볼 수 있으며, 한옥구경과 한복체험을 할 수 있다. 다른 지역 궁들에 비해
							현대적 건물이 많고, 한옥을 개조한 게스트하우스도 하루쯤 꼭 방문해보자
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/서울-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">서울에서의 쇼핑하기</h4>
							서울 여행에 있어서 빼먹을 수 없는 거리. 맛집과 가까운 호텔 및 숙소들은 기본, 거의 모든 화장품 로드숍 브랜드가
							모여 있으며 복합쇼핑몰과 롯데 백화점, 면세점까지 있으니 실로 쇼핑의 천국이다 가지고싶은 선물이나 기념품은 꼭
							챙기도록하자
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
