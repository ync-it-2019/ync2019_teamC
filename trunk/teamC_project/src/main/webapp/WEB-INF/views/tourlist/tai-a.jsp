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
							<img class="img-responsive" src="/resources/img/태국-관광지1.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">파타야</h2>
						<p>방콕에서 버스로 2시간정도 걸리는 해양휴양지입니다. 방콕 주변여행으로 가장 많이 가는 곳입니다. 윈트서핑,
							수상스키, 스노쿨링 등 다양한 수상액티비티를 경험할 수 있 으며 자유롭게 해수욕을 즐길 수 있습니다. 워킹스트리트는
							파타야의 가장 번화한 거리로 밤이 깊어질 수록 사람들이 넘쳐나는 흥겨운 분위기를 자아내는 곳이니 당일치기가 아닌 1박
							이상의 일정을 추천합니다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/태국-관광지2.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">코사무이</h2>
						<p>태국에서 세번째로 큰 섬으로 신혼여행지로 각광을 받고 있는 곳입니다. 휴양지로 풀빌라와 리조트가 많은 곳
							입니다. 휴양지 특성상 물가는 태국 다른곳보다는 비싼 편입니다. 푸켓, 파타야처럼 번화하고 화려하지는 않지만 대신
							번잡하지 않고 여유롭게 즐길 수 잇씁니다. 코사무이 인근 섬인 코팡안에는 매달 음력 보름에 풀문 파티로 유명한 곳으로
							파티시즌이 되면 숙소잡기가 힘들정도입니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/태국-관광지3.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">아유타야</h2>
						<p>방콕에서 1시간 거리에 위치한 곳으로 1350년에 아유타야왕국의 수도로 선포되어 버마에 약탈당하기전까지
							417년간 수도였습니다. 1767년에 왕국은 붕괴되었고 도시의 유적도 많이 파괴되었습니다. 이후 태국은 유적의 복원을
							시작하여 1976년 아유타야 유적지를 테마로 조성된 아유타야 역사공원이 세워졌고 1991년에 유네스코 세계유산으로
							지정되었습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/태국-관광지4.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">푸켓</h2>
						<p>태국 남부의 섬으로 아름다운 해변을 보유한 휴양지입니다. 빠통비치가 있는 빠통지역이 중심지이며, 빠통비치의
							방라로드에서는 많은 가게, 음식점, 바등이 있으며 새벽까지 파티가 열리는 흥겨운 곳입니다. 또한 많은 액티비티를 즐길
							수 있으며 섬투어도 빼놓을 수 없습니다. 피피섬 당일 투어가 유명하며 피피섬까지 크루즈를 타고 가서 숙박하며 여유있게
							즐길 수도 있습니다.</p>
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
						<li><a href="/info/tai-i">태국소개</a></li>
						<li><a href="/tourlist/tai-a">추천관광지</a></li>
						<li><a href="/restaurant/tai-f">추천맛집</a></li>
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
							src="/resources/img/태국-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">방콕 자유여행 코스</h4>
							가장 많이 가는 일정은 짧게는 3박 5일, 그리고 주변 도시까지 훑고 오는 5박 7일 일정이다. 한국에서 출발해
							자정쯤 방콕에 도착해서, 여행을 마치고 한국으로 올 때도 늦은 시간에 출발하는 비행편이 있기에 마지막까지 알차게
							여행할 수 있다. 본인의 전체 일정에 맞춰 최고의 여행을 계획해 보자!
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/태국-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">태국 음식 추천</h4>
							음식이 입맛에 안맞아 고생하시는 여행자들이라도 방콕은 걱정하지 말아요. 태국을 여행지로 선택하는 가장 큰 매력 중에
							하나 태국 요리. 세계 6대 요리로 손꼽힐 만큼 그 맛과 종류가 무궁무진하다. 시내 곳곳 레스토랑, 길거리, 푸드코트
							등에서 다양하게 맛볼 수 있다.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/태국-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">푸켓 팡아만투어</h4>
							푸껫 여행의 필수 코스, 팡아 만은 150개가 넘는 다양한 섬으로 이루어져 있으며 특이한 모양의 석회암들이 동굴을
							형성한 곳이다. 영화에 등장한 제임스 본드 섬 투어와 카누를 타고 동굴을 통과하는 씨 카누 체험이 유명하다.
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
