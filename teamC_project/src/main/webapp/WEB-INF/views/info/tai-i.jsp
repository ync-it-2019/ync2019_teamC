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
							<h1 class="page-header sidebar-title">태국 소개</h1>
							<!-- 슬라이드 쇼-->
							<div class="slideshow-container">

<div class="mySlides fade">
	<div class="numbertext">1 / 3</div>
	<img src="/resources/img/태국-소개1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">2 / 3</div>
	<img src="/resources/img/태국-소개2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">3 / 3</div>
	<img src="/resources/img/태국-소개3.jpg" style="width:100%">
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
					<p>동남아시아에 위치하고 있는 국가, 수도는 방콕. 현재는 시암(BTS 시암역)이라는 이름을 가진 구역이 방콕의 중심지를 이루고 있다.</p></br>
					<p>국토가 적도 근방에 위치한 데다 모양도 은행잎처럼 위는 넓고 아래는 매우 좁고 긴 형태이기 때문에 지도상으로는 그닥
						 넓어보이지 않지만, 남한 영토의 5배에 이르며 프랑스와 유사한 크기다. 제국주의 시대에 동남아시아에서 유일하게 독립을
						  유지한 국가이기도 하다. 불과 150여 년 전만 해도 프랑스와 영국을 합친 것보다 넓었지만, 제국주의 시절 국가의 독립을
							 위해 오늘날에는 라오스와 캄보디아에 속하는 영토를 전략적으로 프랑스에 식민지로 할양하여 지금의 형태가 되었다. </p></br>
					<p>여전히 주변국인 라오스, 캄보디아, 미얀마(옛 버마)에 미치는 문화적, 경제적 영향이 크다. 지리적으로 봐도 내륙국인 라오스,
						소국인 캄보디아, 말라카 해협으로 인해 왠지 고립되어 보이는 미얀마를 잇는 가교 역할을 할 수 있으며 경제적으로도 이들 나라들의
						 경제에 미치는 영향이 크다.  </p>
			    </article>
					<!-- Blog Sidebar Column -->
					<aside class="col-md-4 sidebar-padding">
							<!-- Blog Categories -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 카테고리</h4>
									<hr>
									<ul class="sidebar-list">
											<li><a href="/info/tai-i">태국소개</a></li>
											<li><a href="/tourlist/tai-a">추천관광지</a></li>
											<li><a href="/restaurant/tai-f">추천맛집</a></li>
									</ul>
							</div>
							<!-- Recent Posts -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-align-left"></i> 연관 패키지 상품</h4>
									<hr style="margin-bottom: 5px;">
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/태국-패키지1.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">방콕 자유여행 코스</h4>
													가장 많이 가는 일정은 짧게는 3박 5일, 그리고 주변 도시까지 훑고 오는 5박 7일 일정이다.
													한국에서 출발해 자정쯤 방콕에 도착해서, 여행을 마치고 한국으로 올 때도 늦은 시간에 출발하는
													 비행편이 있기에 마지막까지 알차게 여행할 수 있다. 본인의 전체 일정에 맞춰 최고의 여행을 계획해 보자!
											</div>
									</div>
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/태국-패키지2.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">태국 음식 추천</h4>
													음식이 입맛에 안맞아 고생하시는 여행자들이라도 방콕은 걱정하지 말아요.
													태국을 여행지로 선택하는 가장 큰 매력 중에 하나 태국 요리. 세계 6대 요리로 손꼽힐 만큼
													 그 맛과 종류가 무궁무진하다. 시내 곳곳 레스토랑, 길거리, 푸드코트 등에서 다양하게 맛볼 수 있다.
											</div>
									</div>

									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/태국-패키지3.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">푸켓 팡아만투어</h4>
													푸껫 여행의 필수 코스, 팡아 만은 150개가 넘는 다양한 섬으로 이루어져 있으며 특이한 모양의
													 석회암들이 동굴을 형성한 곳이다. 영화에 등장한 제임스 본드 섬 투어와 카누를 타고 동굴을
													  통과하는 씨 카누 체험이 유명하다.
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
