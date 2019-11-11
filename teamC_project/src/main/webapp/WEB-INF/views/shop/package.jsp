<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>S TRIP you can travel anywhere</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //Meta tag Keywords -->
<!-- Custom-Files -->
<link rel="stylesheet" href="/resources/css/bootstrap2.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="/resources/css/style2.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<!-- font-awesome-icons -->
<link href="/resources/css/font-awesome2.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<!-- /Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700"
	rel="stylesheet">
<!-- //Fonts -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<script>
  $(function() {
    $("#tabs").tabs();
  });
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=kr"></script>
<script>

  function initialize() {
    var myLatlng = new google.maps.LatLng(37.2915450, 127.0430790); // 좌표값
    var mapOptions = {
      zoom: 14, // 지도 확대레벨 조정
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
    var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: "ethihad-stadium" // 마커에 마우스를 올렸을때 간략하게 표기될 설명글
    });
  }
  window.onload = initialize;
</script>

<body>
	<div class="main-sec inner-page">
		<!-- //header -->
		<header class="py-sm-3 pt-3 pb-2" id="home">
			<style>
.absolute {
	position: absolute;
}

.right {
	float: right;
}
</style>
			<!-- nav -->
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
			<!-- //nav -->

		</header>
		<!-- //header -->
	</div>
	<!-- //banner-->
	<!--/banner-bottom -->
	<section class="banner-bottom py-5">
		<div class="container py-md-5">
			<!-- product right -->
			<div class="left-ads-display wthree">
				<div class="row">
					<div class="desc1-left col-md-6">
						<img src="/resources/img/package1.png" class="img-fluid" alt="">
					</div>
					<div class="desc1-right col-md-6 pl-lg-3">
						<h5>상품명 : <c:out value="${manage.product_name }"/></h5>
						</br>
						<h5>가격 : <c:out value="${manage.costprice }"/></h5>
						</br>
						<h5>여행 국가 : <c:out value="${manage.country}"/></h5>
						</br>
						<h5>여행 기간 : <c:out value="${manage.itinerary}"/></h5>
						</br>
						<h5>항공사 : <c:out value="${manage.transportation}"/></h5>
						</br><a href="/shop/checkout.html"><button class="btn submit">예약하기</button></a>				
					</div>
				</div>
				<br>
				<br>
				<h3 class="title-wthree-single my-lg-5 my-4 text-left">연관 여행 상품</h3>
				<div class="row shop-wthree-info text-center">
					<div class="col-md-3 shop-info-grid text-center mt-4">
						<div class="product-shoe-info shoe">
							<div class="men-thumb-item">
								<img src="/resources/img/package2.png" class="img-fluid" alt="">

							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">레알 마드리드 투어 </a>
								</h4>

								<div class="product_price">
									<div class="grid-price">
										<span class="money">$799 ~</span>
									</div>
								</div>
								<ul class="stars">
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star-o"
											aria-hidden="true"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 shop-info-grid text-center mt-4">
						<div class="product-shoe-info shoe">
							<div class="men-thumb-item">
								<img src="/resources/img/package3.png" class="img-fluid" alt="">

							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">리버풀 투어 </a>
								</h4>

								<div class="product_price">
									<div class="grid-price">
										<span class="money">$799 ~ </span>
									</div>
								</div>
								<ul class="stars">
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star-half-o"
											aria-hidden="true"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 shop-info-grid text-center mt-4">
						<div class="product-shoe-info shoe">
							<div class="men-thumb-item">
								<img src="/resources/img/package4.png" class="img-fluid" alt="">

							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">FC 서울투어 </a>
								</h4>

								<div class="product_price">
									<div class="grid-price">
										<span class="money"> $475.00 ~ </span>
									</div>
								</div>
								<ul class="stars">
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star-half-o"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star-o"
											aria-hidden="true"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 shop-info-grid text-center mt-4">
						<div class="product-shoe-info shoe">
							<div class="men-thumb-item">
								<img src="/resources/img/package5.png" class="img-fluid" alt="">

							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">LA다저스 투어 </a>
								</h4>

								<div class="product_price">
									<div class="grid-price">
										<span class="money">$1000 ~ </span>
									</div>
								</div>
								<ul class="stars">
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star"
											aria-hidden="true"></span></a></li>
									<li><a href="#"><span class="fa fa-star-half-o"
											aria-hidden="true"></span></a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
				<!--//row-->

			</div>
		</div>
	</section>
	<!-- /banner-bottom -->
	</style>
	<div  class="menubar" style="width: auto;">
		<ul style="">
			<li><a href="#tabs-1">상품설명</a></li>
			<li><a href='/shop/review?product_num=<c:out value="${manage.product_num}"/>'>회원리뷰</a></li>
			<li><a href='/shop/inquire?product_num=<c:out value="${manage.product_num}"/>'>1대1 문의</a></li>
		</ul>
		<div id="tabs-1" class="t1">
			<br>
			<h1 class="title">만수르의 축구 경기를 볼 수 있는 기회 맨체스터 시티 투어</h1>
			<br>
			<h2>맨체스터 시티 소개</h2>
			<img src="/resources/img/package1.png" width="150px" width="150px"
				align="right">
			<p><c:out value="${manage.hotel_tour}"/></p>
			<br>
			<h2>구장 소개</h2>
			<h4>ethihad stadium</h4>
			<br> <img src="/resources/img/ethihad.png"> <img
				src="/resources/img/ethihad2.png">
			<p>잉글리시 프리미어 리그의 팀인 맨체스터 시티 FC의 홈 구장이다. 본래 명칭은 시티 오브 맨체스터 스타디움
				(City of Manchester Stadium, 약칭 CoMS)였지만 만수르 구단주가 들어오면서 에티하드 항공이
				2009년 맨체스터 시티의 유니폼 스폰서를 따내는데 이어 2011년 구장의 명명권을 사면서 에티하드 스타디움으로 바꾸었다.</p>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2374.1784493100004!2d-2.202583984105999!3d53.48314127215696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487bb10dcc950ae3%3A0x549a8dcce67a876a!2z7Iuc7YuwIOyYpOu4jCDrp6jssrTsiqTthLAg7Iqk7YOA65SU7JuA!5e0!3m2!1sko!2skr!4v1571108747472!5m2!1sko!2skr"
				width="600" height="450" frameborder="0" style="border: 0;"
				allowfullscreen=""></iframe>
			<h3>가는 법</h3>
			<p>맨체스터는 차를 타고 다른 주요 도시들로 연결되는 DFDS의 영국 도버 및 뉴캐슬 페리항에서 쉽게 도착할 수
				있습니다. 뉴캐슬에서 맨체스터까지 차로 2시간 50분, 도버에서는 5시간 정도가 소요됩니다.</p>
			<br>
			<h2>주요 경기 일정</h2>
			<img src="/resources/img/manplan.png">
		</div>
	</div>

	<!-- footer -->
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
					<div class="trip">S TRIP you can travel anywhere</div>
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
					<h3 class="mb-3">Navigation</h3>
					<ul class="list-agileits">
						<ul class="mb-3">
							<a href="/">Home</a>
						</ul>
						<ul class="mb-3">
							<a href="about.html">국내여행</a>
						</ul>
						<ul class="mb-3">
							<a href="services.html">아시아 여행</a>
						</ul>
						<ul class="mb-3">
							<a href="contact.html">패키지 여행</a>
						</ul>
						<ul class="mb-3">
							<a href="contact.html">FAQ</a>
						</ul>
					</ul>
				</div>

			</div>

		</div>
		<!-- //footer container -->
	</footer>
	<!-- 탭메뉴를 위한 자바스크립트 함수 -->
</html>
