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
	<div class="container blog singlepost">
		<div class="row">
			<article class="col-md-8">
				<h1 class="page-header sidebar-title">부산 소개</h1>
				<!-- 슬라이드 쇼-->
				<div class="slideshow-container">

					<div class="mySlides fade">
						<div class="numbertext">1 / 3</div>
						<img src="/resources/img/부산-소개1.jpg" style="width: 100%">
					</div>

					<div class="mySlides fade">
						<div class="numbertext">2 / 3</div>
						<img src="/resources/img/부산-소개2.jpg" style="width: 100%">
					</div>

					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="/resources/img/부산-소개3.jpg" style="width: 100%">
					</div>
				</div>
				<br>

				<div style="text-align: center">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span>
				</div>
				<!-- 슬라이드 쇼-->
				<hr>
				<p>부산은 한반도의 동남부에 위치한 광역자치단체이다. 인구는 부산 거주 외국인을 제외하고 3,427,632명
					(2019년 6월 기준)으로 모든 광역시 중 인구가 1위이다. 모든 광역자치단체를 다 합치면 경기도-서울특별시 다음
					3위. 광역자치단체들 중 인구 밀도도 서울에 이어 2위이다.</p>
				</br>
				<p>영남권 제1의 도시이자 한국 제2의 도시, 국내 최대 국제무역항이 있는 제1의 항구도시, 제1의 해양교통과
					제2의 항공교통 김해국제공항 타이틀 등을 보유한 도시이기도 하다. 지역내 문화 컨텐츠론 아시아 지역 최대의 영화제인
					부산국제영화제를 비롯해 G-STAR, 부산국제모터쇼, 부산 원아시아페스티벌 등이 유명하다.</p>
				</br>
				<p>6.25 전쟁 당시 부산은 대전, 대구에 이어 임시수도 구실을 하였다. 부산은 이 임시수도 시절부터 부산
					경공업 전성기였던 1970~80년대, 민주항쟁, 1990년대 이후 주변 지방에 산업시설들을 내주며 동남권을 형성해 온
					파란만장한 지역의 발자취를 간직하고 있다.</p>
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
						<li><a href="/info/busan-i">부산소개</a></li>
						<li><a href="/tourlist/busan-a">추천관광지</a></li>
						<li><a href="/restaurant/busan-f">추천맛집</a></li>
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
							src="/resources/img/부산-패키지1.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">부산의 먹자 골목, 시장</h4>
							부산의 진정한 먹거리를 맛보고 싶다면 시장으로 가자. 가벼운 주머니 여행자들도 두둑한 배를 안고 나올 수 있을 만큼
							저렴하고 푸짐한 맛을 자랑한다. 부산에는 자갈치 시장부터 해서 유명한 시장들이 많은데 관광지 주변에 있어서 접근성
							또한 매우 좋다.
						</div>
					</div>
					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/부산-패키지2.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">영화의 도시 부산 즐기기</h4>
							부산의 또 다른 매력을 엿볼 수 있는 정겨운 옛 골목 여행, 영화 촬영 장소로 유명한 곳, 부산하면 가장 먼저
							떠오르는 영화 친구! 영화 속 명장면, 달리기씬의 배경이 바로 이곳이다. 화려한 부산의 모습이 아닌, 정겨운 시골
							마을의 정취를 담고 있어 소소한 재미를 느낄 수 있을 것.
						</div>
					</div>

					<div class="media">
						<img class="img-responsive media-object"
							src="/resources/img/부산-패키지3.JPG" alt="Media Object">
						<div class="media-body">
							</br>
							<h4 class="media-heading">부산 바다! 넌 감동이었어</h4>
							여름 하면 해운대 해마다 천만 명이 찾는 대표 휴양지, 다양한 축제가 열려 즐길 거리가 많음 여름이 되면 피서객들로
							문전성시를 이루고, 가을이 되면 영화의 향기가 뿜어져 나온다. 주변에 편의시설을 비롯하여 오락시설까지 두루 갖추고
							있어 24시간동안 즐길 수 있다.
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
