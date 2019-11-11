<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
							<h1 class="page-header sidebar-title">프랑스 소개</h1>
							<!-- 슬라이드 쇼-->
							<div class="slideshow-container">

<div class="mySlides fade">
	<div class="numbertext">1 / 3</div>
	<img src="/resources/img/프랑스-소개1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">2 / 3</div>
	<img src="/resources/img/프랑스-소개2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
	<div class="numbertext">3 / 3</div>
	<img src="/resources/img/프랑스-소개3.jpg" style="width:100%">
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
					<p>프랑스 공화국 또는 프랑스는 대서양과 지중해에 맞닿은 유럽의 본토와 대양에 산재한 여러 해외 영토로 구성된 국가이다
					영국, 독일, 러시아와 함께 유럽의 대표적인 강대국 중 하나며, 유럽에서 순위권에 들어가는 경제 강국이다.
					 비옥하고 광활한 영토에서 비롯된 생산력과 인구를 바탕으로 프랑크 왕국 때는 동로마 제국과 더불어 유럽의
					  패권을 다투었고 분열 이후 프랑스 왕국 시절에는 신성 로마 제국과 더불어 서유럽의 패권을 다투었고 나중에는
						 영국과 세계 각지에서 겨루며 패권을 다투었다. 상당히 단순하게 이야기한 것이긴 하지만 역사적으로 그만큼 강력했다.</p></br>
					<p>대서양, 북해, 지중해의 중심에 있고, 인접한 주변 국가들이 영국, 독일, 이탈리아, 스페인, 벨기에, 스위스 등의
						중요한 국가여서 다양한 문화를 받아들이고 전파했기 때문에 문화적 영향력이 크다. 프랑스가 제국주의적인 정책을
						취했던 19세기까지는 프랑스 문화가 전세계로 퍼졌기 때문에 세계 문화와 예술의 중심지였다.</p></br>
					<p>UN 상임이사국이고 북대서양 조약기구(NATO)와 유럽연합(EU)의 회원국이다. 국제통화기금 투표권은 세계 5위,
						 금보유고는 세계 4위다. 국방비는 세계 6위, 무기 수출은 세계 4위고 핵무기, 대륙간 탄도 미사일, 잠수함 발사
						  탄도미사일 기술 보유국이다.</p>
			    </article>
					<!-- Blog Sidebar Column -->
					<aside class="col-md-4 sidebar-padding">
							<!-- Blog Categories -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-list-ul"></i> 카테고리</h4>
									<hr>
									<ul class="sidebar-list">
											<li><a href="/info/france-i">프랑스소개</a></li>
											<li><a href="/tourlist/france-a">추천관광지</a></li>
											<li><a href="/restaurant/france-f">추천맛집</a></li>
									</ul>
							</div>
							<!-- Recent Posts -->
							<div class="blog-sidebar">
									<h4 class="sidebar-title"><i class="fa fa-align-left"></i> 연관 패키지 상품</h4>
									<hr style="margin-bottom: 5px;">
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/프랑스-패키지1.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">베르사유 궁전</h4>
													베르사유 궁전은 프랑스뿐만 아니라 유럽에서 가장 아름다운 궁전으로 뽑히는 곳으로,
													 죽기 전에 꼭 가봐야 하는 세계 100대 명소 중 한 군데이다. 제대로 보기 위해서는 꼬박 하루를
													  소요해야 할 정도로 크고 볼거리가 많다.
											</div>
									</div>
									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/프랑스-패키지2.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">철학가와 예술가들이 사랑한 카페</h4>
													파리에 가면 잊지 말고 꼭 해봐야 하는 것이 있다. 바로 노천 카페에 앉아 여유롭게 커피 마시기!
													 파리지앵 하면 가장 먼저 떠오르는 모습이다. 카페 테라스에 앉아 에스프레소 한 잔과 함께 신문,
													  잡지를 보거나 지인과 두런두런 이야기를 나누며 한가로운 오후를 보내는 것. 파리 여행에서 꿈꾸는
														 낭만 중 하나이다.
											</div>
									</div>

									<div class="media">
													<img class="img-responsive media-object" src="/resources/img/프랑스-패키지3.JPG" alt="Media Object">
											<div class="media-body"></br>
													<h4 class="media-heading">파리 여행, 현지투어로 편하게 즐기자!</h4>
													영어도 잘 통하지 않고, 관광객이 많아 호객꾼과 소매치기도 많고. 하지만 볼거리는 많아서 이곳저곳
													 둘러봐야 하는 파리를 놓치고 싶지 않다면? 간편하게 현지투어를 즐기는 건 어떨까? 워낙 많은 관광객이
													  파리로 모여들기 때문에 한국인이 운영하는 현지투어사도 많고, 파리 현지인들이 운영하는 현지투어를
														 즐길 수도 있다.
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
													<a class="text-white" href="index.html">
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
													<li>
															<a href="/">
																	Home
															</a>
													</li>
													<li class="my-3">
															<a href="about.html">국내여행</a>
													</li>
													<li class="mb-3">
															<a href="services.html">아시아 여행</a>
													</li>
													<li class="mb-3"><a href="contact.html">패키지 여행</a>
													</li>
													<li>
															<a href="contact.html">FAQ</a>
													</li>
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
