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
							<h1 class="page-header sidebar-title">영국 소개</h1>
							<!-- 슬라이드 쇼-->
							<div class="slideshow-container">

<div class="mySlides fade">
	<div class="numbertext">1 / 3</div>
	<img src="/resources/img/영국-소개1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">2 / 3</div>
	<img src="/resources/img/영국-소개2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">3 / 3</div>
	<img src="/resources/img/영국-소개3.jpg" style="width:100%">
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
					<p>그레이트 브리튼 및 북아일랜드 연합왕국 또는 영국은 서유럽의 북해의 서쪽에 위치한 국가이다.
					수도는 런던이며 영어로는 흔히 United Kingdom, UK, Britain으로 줄여 부른다. 올림픽 등의 스포츠에서는 다소
					 부정확하지만 관행상 Great Britain이라고 부른다.</p></br>
					<p>한때는 해가 지지 않는 나라라는 별명이 있었다. 19~20세기 대영제국의 영토가 절정에 달했을 때 언제나 제국의
						 어딘가는 낮이었기 때문이다. 아직도 해외 영토들이 남아있기 때문에 해가 지지 않는 국가는 맞다.
					 아일랜드 해를 사이에 두고 아일랜드와 근접해 있고 도버 해협을 사이에 두고서는 프랑스의 칼레와 마주보고 있다. 영국
					  본토인 그레이트 브리튼 섬과 아일랜드 섬 동북부에 걸쳐 있고 면적은 243,610 km²다.</p></br>
					<p>현재의 네 개의 독립적인 지역이 연합한 영국이라는 국가는 생긴지 얼마 되지 않았다. 현재 영토가 확정된 것은
						 1922년으로 아일랜드 자유국이 생겨난 후다. 뒤이어 식민지들의 독립으로 대영제국이 해체되고 지금의 영국이
						  탄생하게 된 것이다.</p>
			    </article>
					<!-- Blog Sidebar Column -->
					<aside class="col-md-4 sidebar-padding">
							<!-- Blog Categories -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 카테고리</h4>
									<hr>
									<ul class="sidebar-list">
											<li><a href="/info/england-i">영국소개</a></li>
											<li><a href="/tourlist/england-a">추천관광지</a></li>
											<li><a href="/restaurant/england-f">추천맛집</a></li>
									</ul>
							</div>
							<!-- Recent Posts -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-align-left"></i> 연관 패키지 상품</h4>
									<hr style="margin-bottom: 5px;">
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/영국-패키지1.jpg" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">하루 도보여행-런더너처럼</h4>
													런던 사람들의 삶은 어떨까요? 주요 중심지를 위주로 돌아보는 코스를 소개합니다.
													주요 여행지를 대부분 둘러보았기 때문에, 좀 더 느긋하게 걸어보자. 광장과 쇼핑 거리로 이루어져
													 있어 천천히 가게를 구경하는 재미가 있다.
											</div>
									</div>
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/영국-패키지2.jpg" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">런던 뮤지컬 베스트5</h4>
													맘마미아, 라이온킹, 레미제라블 등 뮤지컬 명소 런던에서 가장 인기있는 공연 5가지
													동화적 상상력이 마구 피어날 듯한 예쁜 무대와 어린 배우들이라는 것이 믿기지 않을 정도의 연기와
													 군무를 보는 맛이 쏠쏠하다. 우리나라에 언제 들어올 수 있을지 모르는 극이니 본토에 간다면
													  꼭 한 번 봐두기를
											</div>
									</div>

									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/영국-패키지3.jpg" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">피시 앤 칩스</h4>
													 피시 앤 칩스는 영국의 대표 음식으로 길게 썬 감자와 반죽한 생선을 튀겨서 요리한 음식이다.
													 생선은 대구와 가자미 등 흰살 생선이 주로 쓰이고 싱싱함을 최우선으로 생각한다. 칩스는
													  우리가 흔히 알고 있는 감자튀김이다.
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
