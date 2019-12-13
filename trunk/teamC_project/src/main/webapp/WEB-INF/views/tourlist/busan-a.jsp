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
<link href="/resources/css/font-awesome3.min.css" rel="stylesheet"
	type="text/css">
<link href="/resources/css/font-awesome3.min.css" rel="stylesheet"
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
							<img class="img-responsive" src="/resources/img/부산-관광지1.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">해운대 해수욕장</h2>
						<p>부산 해운대구에 위치한 해운대 해수욕장은 넓은 백사장과 아름다운 해안선을 자랑하고 있으며 얕은 수심과
							잔잔한 물결로 해수욕장의 최적 조건을 갖추고 있다. ‘부산’ 하면 제일 먼저 떠올리는 곳이 해운대 해수욕장이라고 할
							만큼 부산을 대표하는 명소이며, 해마다 여름철 피서객의 규모를 가늠하는 척도로 이용될 만큼 국내 최대 인파가 몰리는
							곳이기도 하다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/부산-관광지2.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">해월정</h2>
						<p>달맞이 하기에 가장 좋은 명소를 꼽으려면 아무래도 바다와 달을 한꺼번에 만날 수 있는 해운대 달맞이 언덕이
							가장 먼저 떠오른다. 달맞이 고개에서도 월출을 가장 잘 볼 수 있는 곳으로 해월정을 꼽는데 해운대 해수욕장을 지나
							송정을 향해 언덕길을 오르다 보면 오른편으로 해운대 앞바다가 펼쳐지고 바닷가에 가장 근접한 돌출 부위에 세워진 2층
							누각인 해월정이 있다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/부산-관광지3.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">광안리 해수욕장</h2>
						<p>남태평양의 열정을 닮은 도심 속 해변 광안리 해수욕장.광안리해수욕장은 부산광역시 수영구 광안2동, 해운대
							해수욕장의 서쪽에 위치하고 있다. 광안리에서는 해수욕뿐 아니라 독특한 분위기를 자아내는 레스토랑, 카페 등과 시내
							중심가 못지않은 유명 패션상가들이 즐비하며, 다양한 먹을거리, 볼거리가 있어서 피서의 즐거움을 더해준다. 특히 밤이
							되면 광안대교의 아름다운 야경이 장관이다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/부산-관광지4.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">국제시장</h2>
						<p>국제시장은 부산이 한때 우리 나라에서 가장 거래규모가 큰 상업도시로서 이름을 떨치게 해주었던 상징적인
							존재이다. 신창동을 중심으로 하는 국제시장이 모습을 갖추기 시작한 것은 1945년 광복과 함께였다. 인근의 대형
							백화점을 비롯한 광복동 상가들과의 상권 경쟁관계에 있으나 여전히 부산 시장의 상징적인 존재일 뿐만 아니라 많은
							사람들이 찾는 명소로 꼽힌다.</p>
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
						<li><a href="/info/busan-i">부산소개</a></li>
						<li><a href="/tourlist/busan-a">추천관광지</a></li>
						<li><a href="/restaurant/busan-f">추천맛집</a></li>
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
							src="/resources/img/부산-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">부산의 먹자 골목, 시장</h4>
							부산의 진정한 먹거리를 맛보고 싶다면 시장으로 가자. 가벼운 주머니 여행자들도 두둑한 배를 안고 나올 수 있을 만큼
							저렴하고 푸짐한 맛을 자랑한다. 부산에는 자갈치 시장부터 해서 유명한 시장들이 많은데 관광지 주변에 있어서 접근성
							또한 매우 좋다.
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/부산-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">영화의 도시 부산 즐기기</h4>
							부산의 또 다른 매력을 엿볼 수 있는 정겨운 옛 골목 여행, 영화 촬영 장소로 유명한 곳, 부산하면 가장 먼저
							떠오르는 영화 친구! 영화 속 명장면, 달리기씬의 배경이 바로 이곳이다. 화려한 부산의 모습이 아닌, 정겨운 시골
							마을의 정취를 담고 있어 소소한 재미를 느낄 수 있을 것.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/부산-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">부산 바다! 넌 감동이었어</h4>
							여름 하면 해운대 해마다 천만 명이 찾는 대표 휴양지, 다양한 축제가 열려 즐길 거리가 많음 여름이 되면 피서객들로
							문전성시를 이루고, 가을이 되면 영화의 향기가 뿜어져 나온다. 주변에 편의시설을 비롯하여 오락시설까지 두루 갖추고
							있어 24시간동안 즐길 수 있다.
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
	<script src="../../..//resources/js/jquery3.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../../..//resources/js/bootstrap4.min.js"></script>


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
