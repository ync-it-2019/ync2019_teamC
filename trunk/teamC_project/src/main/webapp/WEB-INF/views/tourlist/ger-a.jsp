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
							<img class="img-responsive" src="/resources/img/독일-관광지1.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">뮌헨</h2>
						<p>많은 여행자가 뮌헨을 알고 있다. 그리고 뮌헨이 왜 유명한지도 알고 있다. 독일에서 가장 유명한 맥주,
							가장 유명한 축구, 가장 유명한 자동차. 우리가 독일이라고 했을 때 가장 먼저 떠올릴만한 맥주, 축구, 자동차,
							그리고 음식에 있어 가장 유명한 곳이 뮌헨이다. 즉, 뮌헨은 독일인의 일상과 문화를 가장 전형적으로 내포하고 있는
							곳이기에 뮌헨의 풍경이 곧 독일의 대표적인 그림이다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/독일-관광지2.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">쾰른 대성당</h2>
						<p>한국인이라면 베를린 장벽은 꼭 보아야 한다. 분단국가에 살고 있는 우리들에게, 분단을 극복하고 통일을 이룬
							독일의 성취는 꼭 눈에 담고 가슴에 새겨야 할 교훈을 준다. 베를린 장벽 앞에서 공부를 하거나 견학을 하라는 말이
							아니다. 이런 시멘트 덩어리가 한 민족을 갈라 서로 총구를 겨누게 하고 사람을 죽여댄 것이 얼마나 허무한지 느껴보고,
							그 허무함이 오래 전 역사 속의 에피소드가 아니라 지금 우리가 살고 있는 땅의 현실이라는 것을 느껴보기 바란다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/독일-관광지3.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">베를린 장벽</h2>
						<p>왕실의 거주지 그 이상인 베르사유는 프랑스 군주제의 영광을 과시하기 위해 고안되었습니다. 루이 14세는
							아버지의 작은 사냥 여관을 호화로운 바로크 양식의 실내가 있는 부유 한 궁전 으로 변화시켰습니다. 궁전은 루이
							14세의 절대 권력의 상징이 되었고 유럽의 왕후의 궁정에 대한 표준을 세웠습니다. 베르사유는 장식 수영장, 완벽하게
							솔질 된 관목, 매력적인 분수가 있는 공식적인 프랑스 정원으로도 유명합니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/독일-관광지4.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">튀빙엔</h2>
						<p>소도시의 풍경도 갖가지다. 튀빙엔처럼 산지 지형에 구시가지가 생겨 삐뚤삐뚤한 반목주 주택이 언덕 위아래에
							불균형하게 자리 잡고 있으면 거리의 풍경이 더 인상적이다. 게다가 튀빙엔은 구시가지 바로 앞으로 작은 강도 흐르는데,
							느릿느릿 노 저어가는 배를 타고 풍경을 구경하는 아날로그적인 모습이 구시가지의 매력을 극대화해준다.</p>
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
						<li><a href="/info/ger-i">독일소개</a></li>
						<li><a href="/tourlist/ger-a">추천관광지</a></li>
						<li><a href="/restaurant/ger-f">추천맛집</a></li>
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
							src="/resources/img/독일-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">로만틱가도 2박 3일 여행</h4>
							남부 독일의 가장 널리 알려진 아름다운 도로 "로만틱 가도"를 따라 독일의 문화, 역사, 음식, 예술과 독일인들의
							삶을 체험하는 코스입니다. 마인강에서 알프스에 이르는 로만틱가도를 2박3일 혹은 3박 4일 일정으로 둘러 보실 수
							있습니다.
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/독일-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">낭만의 도시 하이델베르그 1일 투어</h4>
							하이델베르크는 독일을 대표하는 대학자 칸트, 헤겔, 괴테의 흔적이 살아 숨쉬는 인문학의 도시이자 독일을 대표하는
							관광도시입니다. 또한 독일에서 손꼽히는 대학도시로서 도시의 전체적인 분위가 젊고 자유분방하며, 이에 수많은 관광객이
							어우러져 있습니다.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/독일-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">라인강변1일투어</h4>
							라인강변의 양편으로 펼쳐지는 아름다운 풍경과 고성들을 감상하며 영화 "장미의 이름"의 촬영장소로 유명한 시토회
							에버바흐 수도원, 리슬링포도주의 슈페트레세(Spätlese) 그리고 라인강의 슬픈 전설 "로렐라이언덕" 등을 둘러
							보시는 1일 여행입니다.
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
