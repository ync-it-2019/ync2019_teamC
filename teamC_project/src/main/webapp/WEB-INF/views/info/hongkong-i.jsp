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
<link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
				<link rel="stylesheet" href="/resources/css/patros3.css" >

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->

						<!-- slideshow style 태그 -->
											<style>
											* {box-sizing: border-box;}
											body {font-family: Verdana, sans-serif;}
											.mySlides {display: none;}
											img {vertical-align: middle;}

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

											@-webkit-keyframes fade {
											  from {opacity: .4}
											  to {opacity: 1}
											}

											@keyframes fade {
											  from {opacity: .4}
											  to {opacity: 1}
											}

											/* On smaller screens, decrease text size */
											@media only screen and (max-width: 300px) {
											  .text {font-size: 11px}
											}
											</style>
											<!-- slideshow style 태그 -->

	</head>

	<body data-spy="scroll">
		<!-- Navigation -->
		<style>
		.absolute{
		position : absolute;
		}
		.right{
		float : right;
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
					<li><a href="#">국내여행</a>
						<ul>
							 <li><a href="/info/seoul-i">서울</a></li>
							 <li><a href="/info/busan-i">부산</a></li>
							 <li><a href="/info/gyeongju-i">경주</a></li>
							 <li><a href="/info/jeonju-i">전주</a></li>
							</ul>
					 </li>
					 <li><a href="#">아시아</a>
											 <ul>
													 <li><a href="/info/japan-i">일본</a></li>
													 <li><a href="/info/china-i">중국</a></li>
													 <li><a href="/info/tai-i">태국</a></li>
													 <li><a href="/info/hongkong-i">홍콩</a></li>
													</ul>
												</li>
												<li><a href="#">유럽</a>
													<ul>
															<li><a href="/info/england-i">영국</a></li>
															<li><a href="/info/ita-i">이탈리아</a></li>
															<li><a href="/info/france-i">프랑스</a></li>
															<li><a href="/info/ger-i">독일</a></li>
														 </ul>
													 </li>
					<li><a href="/shop/shop">패키지</a></li>
					<li><a href="/faq/index_faq">자주묻는질문</a></li>
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
		<!-- Page Content -->
			<div class="container blog singlepost">
			<div class="row">
				<article class="col-md-8">
							<h1 class="page-header sidebar-title">홍콩 소개</h1>
							<!-- 슬라이드 쇼-->
							<div class="slideshow-container">

<div class="mySlides fade">
	<div class="numbertext">1 / 3</div>
	<img src="/resources/img/홍콩-소개1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">2 / 3</div>
	<img src="/resources/img/홍콩-소개2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">3 / 3</div>
	<img src="/resources/img/홍콩-소개3.jpg" style="width:100%">
</div>
</div>
<br>

<div style="text-align:center">
	<span class="dot"></span>
	<span class="dot"></span>
	<span class="dot"></span>
</div>
<!-- 슬라이드 쇼-->
			        <hr>
					<p>홍콩(香港)은 중화인민공화국의 특별행정구로 광둥 성 주장 강 삼각주 하구에 위치한다.
					1841년부터 영국의 식민지(영국령 홍콩)였다가 1997년 중국으로 반환되었다. 이후 특별행정구가 설치되어 오늘에 이른다.</p></br>
					<p>까우룽 반도(九龍半島, Kowloon, 보통화로는 주룽)와 홍콩 섬(香港島, Hong Kong Island, 보통화로는 샹강다오)을
						 비롯한 여러 개의 섬으로 이루어져 있다. 광둥 성(廣東省) 선전(深圳)과 마주보는 지점에 있고, 또다른 특별행정구인
						  마카오(澳門)에서도 그리 멀지 않다. 홍콩 표준시(GMT+8)는 대한민국 표준시보다 1시간이 느리다. 중국 대륙(본토)
							 및 대만 섬과는 시간대를 공유한다. </p></br>
					<p>아시아의 금융, 물류허브이자 쇼핑의 메카. 인구는 약 720만 명이고 면적은 1104km2(서울의 1.82배)로 인구 밀도가 정말 높다.
						 1km2에 6천 명 정도가 거주한다. 다만 홍콩 섬 북단과 까우룽 반도 남부 정도가 초고밀도로 개발되어 있고 나머지 지역(신계)은
						 인구밀도가 비교적 낮다.  </p>
			    </article>
					<!-- Blog Sidebar Column -->
					<aside class="col-md-4 sidebar-padding">
							<!-- Blog Categories -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 카테고리</h4>
									<hr>
									<ul class="sidebar-list">
											<li><a href="/info/hongkong-i">홍콩소개</a></li>
											<li><a href="/tourlist/hongkong-a">추천관광지</a></li>
											<li><a href="/restaurant/hongkong-f">추천맛집</a></li>
									</ul>
							</div>
							<!-- Recent Posts -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-align-left"></i> 연관 패키지 상품</h4>
									<hr style="margin-bottom: 5px;">
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/홍콩-패키지1.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">홍콩의 스카이라인을 따라 떠나는 여행</h4>
													홍콩 스카이라인을 따라서! 좁디좁은 홍콩은 세계 최고 혹은 최악의 집 임대료를 자랑한다고 해도 과언이 아니다.
													좁은 땅덩어리 안에 삐죽삐죽 솟은 고층 빌딩들! 대부분이 무료로 전망대를 제공하고 있어 어디든 올라가면 그곳이 바로 명당!
											</div>
									</div>
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/홍콩-패키지2.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">홍콩 쇼핑 리스트</h4>
													홍콩 여행의 시작과 끝은 쇼핑! 비싼 명품 쇼핑도 좋지만 저렴하면서 매력 만점 쇼핑도 놓치지말자.
													가족, 친구, 동료, 남친 등 누구에게나 선물로 줘도 만족할 수 있는 제품들로 추천합니다.
											</div>
									</div>

									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/홍콩-패키지3.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">홍콩의 애프터눈 티, 그리고 차찬탱</h4>
													홍콩이 영국의 문화권 아래 있었던 건 누구나 아는 사실! 아직도 곳곳에 남아 있는 영국 문화.
													그 대표적인 것이 애프터눈 티(Afternoon Tea)와 차찬탱(茶餐廳)을 볼 수 있다.
													고급 호텔과 카페에서 즐기는 우아한 애프터눈 티와 소박하지만 홍콩식의 브런치를 즐길 수 있는 차찬탱을 비교하며 즐기자.
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
													<a class="text-white" href="/">
															<img src="/resources/img/logo2.png" class="img-fluid" alt="Responsive image" />
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
											<p><a href="mailto:example@email.com">info@example.com</a></p>
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
			  if (slideIndex > slides.length) {slideIndex = 1}
			  for (i = 0; i < dots.length; i++) {
			    dots[i].className = dots[i].className.replace(" active", "");
			  }
			  slides[slideIndex-1].style.display = "block";
			  dots[slideIndex-1].className += " active";
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
            $(document).ready(function(){
                $('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click',function (e) {
                    e.preventDefault();

                    var target = this.hash;
                    var $target = $(target);

                    $('html, body').stop().animate({
                        'scrollTop': $target.offset().top
                    }, 900, 'swing', function () {
                        window.location.hash = target;
                    });
                });

                $('a.page-scroll').bind('click', function(event) {
                    var $anchor = $(this);
                    $('html, body').stop().animate({
                        scrollTop: $($anchor.attr('href')).offset().top
                    }, 1500, 'easeInOutExpo');
                    event.preventDefault();
                });

               $(".nav a").on("click", function(){
                     $(".nav").find(".active").removeClass("active");
                    $(this).parent().addClass("active");
            	});

                $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
                    $(window).scroll(function () {
                        if ($(this).scrollTop() != 0) {
                            $('#toTop').fadeIn();
                        } else {
                            $('#toTop').fadeOut();
                        }
                    });
                $('#toTop').click(function(){
                    $("html, body").animate({ scrollTop: 0 }, 700);
                    return false;
                });

            });
        </script>

    </body>
</html>
