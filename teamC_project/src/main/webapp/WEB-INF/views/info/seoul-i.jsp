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
							<h1 class="page-header sidebar-title">서울 소개</h1>
							<!-- 슬라이드 쇼-->
							<div class="slideshow-container">

<div class="mySlides fade">
	<div class="numbertext">1 / 3</div>
	<img src="/resources/img/서울-소개1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">2 / 3</div>
	<img src="/resources/img/서울-소개2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">3 / 3</div>
	<img src="/resources/img/서울-소개3.jpg" style="width:100%">
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
					<p>서울특별시는 대한민국의 수도이자 대한민국 17개 광역자치단체 중 하나이다. 줄여서 서울이라고도 한다.</p></br>
					<p>서울특별시는 지방자치법의 특별법으로 규정되어 있는 법률상 대한민국 제1의 도시다. 현재 대한민국에서 유일하게 특별시이며, 수장인 서울특별시장은
						 대한민국의 광역자치단체장 중 유일하게 장관급 대우를 받는다. 북한까지 포함해 봐도, 북한의 최대 도시 평양의 인구가 300만 명밖에 되지 않아 서울은
						  명실상부한 한반도의 종주도시라고 할 수 있다.</p></br>
					<p>한성백제 때는 한강 이남 지역이 493년간 백제의 수도였으며, 한강 이북은 고구려 북한산군, 신라 한양군을 거쳐 고려시대 때 개경 이남의 남경이었다.
						 조선시대 때는 505년 동안 조선의 수도 한성이었고, 이어 대한민국 시대에 수도인 서울로서 지위를 차지하는 도시이다. 1950년대부터 1980년대까지 지방
						 이주민과 해외교포들의 서울 유입으로 매우 활발한 인구증가를 보였던 탓에 도시권이 아닌 행정구역 기준으로도 세계 10대 도시에 들었던 적도 있었다.
						  수도권에 집중되었던 개발정책에 1990년대 이후로 전국 주요 도시들이 쇠락하며 상대적으로 서울의 지위가 더욱 높아져 한국의 정치, 교육, 문화, 경제를
							 완전히 주도하는 형국이다.</p>
			    </article>
					<!-- Blog Sidebar Column -->
					<aside class="col-md-4 sidebar-padding">
							<!-- Blog Categories -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 카테고리</h4>
									<hr>
									<ul class="sidebar-list">
											<li><a href="/info/seoul-i">서울소개</a></li>
											<li><a href="/tourlist/seoul-a">추천관광지</a></li>
											<li><a href="/restaurant/seoul-f">추천맛집</a></li>
									</ul>
							</div>
							<!-- Recent Posts -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-align-left"></i> 연관 패키지 상품</h4>
									<hr style="margin-bottom: 5px;">
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/서울-패키지1.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">서울의 테마파크</h4>
													서울에서의 독특한 경험! 언제 가도 짜릿한 놀이공원과 여름이면 생각나는 시원한 워터파크가 서울 내, 혹은 멀지 않은 곳에
													위치해 있다. 일정 중 하루쯤 날을 잡아 방문해보는 것은 어떨까?
											</div>
									</div>
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/서울-패키지2.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">서울의 역사와 문화</h4>
													서울에서의 역사와 문화를 두 눈으로 직접 볼 수 있으며, 한옥구경과 한복체험을 할 수 있다. 다른 지역 궁들에 비해 현대적 건물이
													많고, 한옥을 개조한 게스트하우스도 하루쯤 꼭 방문해보자
											</div>
									</div>

									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/서울-패키지3.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">서울에서의 쇼핑하기</h4>
													서울 여행에 있어서 빼먹을 수 없는 거리. 맛집과 가까운 호텔 및 숙소들은 기본, 거의 모든 화장품 로드숍 브랜드가 모여 있으며 복합쇼핑몰과 롯데 백화점,
													 면세점까지 있으니 실로 쇼핑의 천국이다 가지고싶은 선물이나 기념품은 꼭 챙기도록하자
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
