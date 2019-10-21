<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- slideshow style 태그 -->
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}
</style>
<!-- slideshow style 태그 -->

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

					<li><a href="/login/login">Login</a></li>
				</ul>
			</div>
		</header>
		<!-- //header -->
	</div>


	<!-- Page Content -->
	<!-- Page Content -->
	<div class="container blog singlepost">
		<div class="row">
			<article class="col-md-8">
				<h1 class="page-header sidebar-title">경주 소개</h1>
				<!-- 슬라이드 쇼-->
				<div class="slideshow-container">

					<div class="mySlides fade">
						<div class="numbertext">1 / 3</div>
						<img src="/resources/img/경주-소개1.JPG" style="width: 100%">
					</div>

					<div class="mySlides fade">
						<div class="numbertext">2 / 3</div>
						<img src="/resources/img/경주-소개2.JPG" style="width: 100%">
					</div>

					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="/resources/img/경주-소개3.JPG" style="width: 100%">
					</div>
				</div>
				<br>

				<div style="text-align: center">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span>
				</div>
				<!-- 슬라이드 쇼-->
				<hr>
				<p>경상북도 동남부에 위치한 시. 동남쪽으로 동해, 서쪽에는 영천시 및 청도군, 남쪽으로 울산광역시, 북쪽에
					포항시와 접하고 있다. 신라시대에는 서라벌이라고 불렸고 천년의 고도(古都)였으며, 조선 시대에는 안동시와 함께 유네스코
					세계문화유산 양동마을을 위시한 영남 남인의 구심 도시이기도 했다. 수많은 문화재가 있는 동시에 한국 유수의 관광도시다.</p>
				</br>
				<p>신라의 수도로 남북국시대 때는 인구 수십만명이 살았을 것이라고 추정되고 있고 고려 초중기에도 동경이라는 명칭을
					썼을 정도였으며, 고려 후기에 무신정권에 대항하는 반란이 일어나고 나서는 3경에서 제외되고 이어서 몽골의 침략으로
					황폐화되었지만 어느 정도 재건이 된 다음에는 계림부로 불렸다. 조선시대에도 경상도의 경자가 경주에서 따왔고 부로 지정되는
					등 현대의 광역시급 지위는 되었을 정도로 경상도에서 가장 큰 도시 중 하나였다.</p>
				</br>
				<p>한국의 시 중 면적이 2번째로 넓다. 참고로 1위는 같은 경상북도의 안동시이고, 3위 역시 경상북도인
					상주시이다. 그래서 경상북도가 도 중에서 면적이 가장 넓은 것이다.</p>
			</article>
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
	</div>


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
						<li class="my-3"><a href="about.html">국내여행</a></li>
						<li class="mb-3"><a href="services.html">아시아 여행</a></li>
						<li class="mb-3"><a href="contact.html">패키지 여행</a></li>
						<li><a href="contact.html">FAQ</a></li>
					</ul>
				</div>
				<!-- //footer grid3 -->
			</div>
			<!-- //footer row -->
		</div>
		<!-- //footer container -->
	</footer>

	<!-- 슬라이드 쇼를 위한  함수 -->
	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
	<!-- 슬라이드 쇼를 위한  함수 -->

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
