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
							<img class="img-responsive" src="/resources/img/경주-맛집1.JPG"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">요석궁</h2>
						<p>요석궁에서는 손님들께서 총체적인 음식문화 체험을 통해 다양한 가치와 만족을 느낄수있도록 하기 위하여 꾸준히
							한옥 공간의 보수/복원공사를 진행하고 있으며, 손님들의 오감 만족을 위해 그릇, 복식, 조경, 조명, 음악 등 다양한
							요소들을 통합적으로 관리하고자 노력하고 있습니다. 또한, 글로벌 시대에 발맞추어 최부자 집안에 전해 내려오는 전통
							반가음식을 ' 경주 최부자 가정식' 이라는 이름으로 브랜드화하여 전통음식을 전문화, 체계화 하기 위해 힘을 쏟고
							있습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Second Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4 ">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/경주-맛집2.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">이풍녀구로쌈밥</h2>
						<p>유일한 메뉴인 쌈밥 정식이 유명한 곳입니다. 대릉원 담장길 앞 쌈밥거리에 위치하고 있으며, 전라도 소재
							한식당 집안에서 태어나 1995년엔 한국전통문화보존회 지정 전통음식명인 인증을 받은 주인이 운영하는 곳입니다. 이름은
							쌈밥정식이지만 실제로 차려지는 밥상은 한정식을 연상시 킬 정도로 다양한 반찬들이 특징입니다. 특히 나물 반찬의 비중이
							큰 편이고 데운 쌈야채도 있어서 인상적입니다. 후식으로 경주 명물 간식인 찰보리빵도 맛볼 수 있습니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/경주-맛집3.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">맷돌순두부</h2>
						<p>100% 국산 콩으로만 만드는 순두부가 유명한 곳입니다. 아침마다 직접 사람이 맷돌로 콩을 갈아서 만들기
							때문에 콩의 입자가 거칠어 두부의 식감이 살아 있는 것이 특징입니다. 식사 후엔 이러한 국산 콩비지를 무료로 가져갈
							수 있어서 지역 주민들도 많이 찾는 곳입니다. 대표메뉴는 순두부이지만, 모두가 좋아하는 돼지 바비큐도 준비되어
							있어서, 실내에는 다녀간 유명인사들의 사인만도 수십 개가 걸려 있습니다. 녹두전과 파전도 많이 찾는다고 합니다.</p>
					</div>
				</div>
				<hr>
				<!-- Third Blog Post -->
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<div class="blog-thumb">
							<img class="img-responsive" src="/resources/img/경주-맛집4.jpg"
								alt="photo">
						</div>
					</div>
					<div class="col-sm-8 col-md-8">
						<h2 class="blog-title">고색창연</h2>
						<p>떡갈비가 두장이 제공되는 정식이 인기인 곳입니다. 식사시간에는 번호표를 발행하여 기다리는 손님수를
							실시간으로 확인할 수 있게 할 정도로 손님들이 모이는 곳입니다. 불국사 부근에 위치하고 있어 불국사를 찾는 관광객들이
							많이 찾는 곳입니다. 불맛이 배어들어 특유의 맛을 내는 떡갈비 정식은 소고기와 돼지고기 중에서 선택할 수 있는데,
							돼지고기 떡갈비 정식이 인기 메뉴라고 합니다.</p>
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
						<li><a href="/info/gyeongju-i">경주소개</a></li>
						<li><a href="/tourlist/gyeongju-a">추천관광지</a></li>
						<li><a href="/restaurant/gyeongju-f">추천맛집</a></li>
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
							src="/resources/img/경주-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">혼자서도 잘 먹어요, 나 홀로 맛집</h4>
							누군가에게 방해받지 않고 오롯이 자신만을 위해 떠나는 나홀로 여행. 고즈넉함을 즐기기 좋은 경주이기 때문인지 유독
							혼자 다니는 여행객이 많은 곳이기도 하다. 난 절대 쓸쓸하지 않아! 당당하게 경주의 맛있는 식사를 즐기자.
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/경주-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">살아있는 역사 박물관</h4>
							도시 곳곳에 산재하는 각종 유물들, 그야말로 경주는 살아 있는 박물관! 살아 있는 노천 박물관 경주를 제대로 즐기기
							위해서는 당연히 예습이 필요할 터! 자신에게 꼭 맞는 프로그램을 알아둔다면 경주 여행이 한결 즐거울 것!
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/경주-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">경주의 아름다운 카페</h4>
							문화재만 가득할 것이라는 경주의 이미지는 이제 버려도 좋다. 경주에도 낭만과 감성이 가득한 카페들이 늘어나고 있어
							현재는 경주에 오면 반드시 들러야 하는 곳 중 하나로 자리잡았다. 마음에 쏙 드는 카페를 골라 찾아가보자.
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
