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
							<img class="img-responsive" src="/resources/img/영국-관광지1.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">스톤 헨지</h2>
						<p>솔즈베리 평야의 솔즈베리 북쪽 10 마일에 위치한 유적은 유럽에서 가장 유명한 선사 시대 기념물입니다 (이
							사이트는 사람들이 입장권을 미리 확보하기 위해 시간표를 미리 구입해야하는 인기가 있습니다). 탁월한 방문객 센터의
							전시회가 방문의 무대로 자리 잡고 있으며 오디오 - 비주얼 경험을 통해 설명하고 있습니다. 250 개의 고대 개체
							메가리스가 건립 된 방법과 그들이 3000 년에서 1500 년 사이에 이곳에 배치되었을 때의 삶에 대해 이야기하고
							있습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/영국-관광지2.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">런던 타워</h2>
						<p>교도소, 궁전, 보물 보관소, 전망대 및 동물원 - 런던 타워는 모든 것을 해냈습니다. 영국에서 가장
							중요한 건물로 널리 여겨지는이 세계 문화 유산을 방문하고 방문하는 시간이 충분합니다. 중심은 화이트 타워. 윌리엄
							정복자에 의해 1078 년에 지어졌으며, 킹 오브 라인 (King of Line) 세계에서 가장 오래된 관광 명소
							(1652)의 뛰어난 갑옷 장식이있다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/영국-관광지3.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">워릭 캐슬</h2>
						<p>중세 시대의 삶에 대한 매력적인 통찰력을 제공하는 잊지 못할 영국 가족 여행을 찾고 계시다면 워릭 캐슬
							(Warwick Castle)을 방문하는 것보다 훨씬 잘 할 수 있습니다. 에이본 강 (Avon River)의
							아름다운 워릭 (Warwick) 도시에 위치한이 인상적인 요새는 900 년 이상이 지역의 풍경과 역사를 주도 해
							왔습니다. 오늘, 그것은 배경으로 역할을합니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/영국-관광지4.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">호수 지구 국립 공원</h2>
						<p>약 900 제곱 마일에 이르는 레이크 디스트릭트 국립 공원은 영국 여행자들이 꼭 방문해야 할 곳입니다.
							뉴질랜드 최대의 호수 중 12 곳과 탐험을 기다리는 2,000 마일이 넘는 권리가있는이 지역은 영감을 불어 넣을 수
							없을만큼 멋진 경관과 그림이 그대로 남아 있습니다. 해야 할 다른 것들은 다음을 포함한 공원의 많은 훼손을 방문하는
							것입니다.</p>
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
						<li><a href="/info/england-i">영국소개</a></li>
						<li><a href="/tourlist/england-a">추천관광지</a></li>
						<li><a href="/restaurant/england-f">추천맛집</a></li>
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
							src="/resources/img/영국-패키지1.jpg" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">하루 도보여행-런더너처럼</h4>
							런던 사람들의 삶은 어떨까요? 주요 중심지를 위주로 돌아보는 코스를 소개합니다. 주요 여행지를 대부분 둘러보았기
							때문에, 좀 더 느긋하게 걸어보자. 광장과 쇼핑 거리로 이루어져 있어 천천히 가게를 구경하는 재미가 있다.
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/영국-패키지2.jpg" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">런던 뮤지컬 베스트5</h4>
							맘마미아, 라이온킹, 레미제라블 등 뮤지컬 명소 런던에서 가장 인기있는 공연 5가지 동화적 상상력이 마구 피어날 듯한
							예쁜 무대와 어린 배우들이라는 것이 믿기지 않을 정도의 연기와 군무를 보는 맛이 쏠쏠하다. 우리나라에 언제 들어올 수
							있을지 모르는 극이니 본토에 간다면 꼭 한 번 봐두기를
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/영국-패키지3.jpg" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">피시 앤 칩스</h4>
							피시 앤 칩스는 영국의 대표 음식으로 길게 썬 감자와 반죽한 생선을 튀겨서 요리한 음식이다. 생선은 대구와 가자미 등
							흰살 생선이 주로 쓰이고 싱싱함을 최우선으로 생각한다. 칩스는 우리가 흔히 알고 있는 감자튀김이다.
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
