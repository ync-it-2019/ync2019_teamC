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
</head>
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
		<div class="container py-5">
			<!--/row-->
			<h4><c:out value="${shop1.theme}"/></h4>
			<div class="row shop-wthree-info text-center">
			    <div class="col-lg-3 shop-info-grid text-center mt-4">
			        <div class="product-shoe-info shoe">
			            <div class="men-thumb-item">
			                 <a href='/shop/package?product_num=<c:out value="${shop1.product_num}"/>'>
			                 <img src="/resources/img/package1.png" class="img-fluid"></a>
			            </div>
			            <div class="item-info-product">
			                <a href='/shop/package?product_num=<c:out value="${shop1.product_num}"/>'>
			                <c:out value="${shop1.product_name}"/></a>
			                <div class="product_price">
			                        <span class="money">￦<c:out value="${shop1.costprice}"/></span>
			                </div>
			                
			            </div>
			        </div>
			</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package2.png" class="img-fluid" alt="">
						</div>
						<div class="item-info-product">
						<c:out value="${shop2.product_name}"/>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦<c:out value="${shop2.costprice}"/></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package3.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
						<c:out value="${shop3.product_name}"/>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦<c:out value="${shop3.costprice}"/></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package4.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
						<c:out value="${shop4.product_name}"/>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦<c:out value="${shop4.costprice}"/></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
			<br>
			<!--//row-->
			<!--/row1-->
			<h4><c:out value="${shop2.theme}"/></h4>
			<div class="row shop-wthree-info text-center">
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package5.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">LA다저스 </a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦5,629,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package6.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">텍사스 레인저스</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦5,629,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package7.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">보스턴 레드삭스</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦5,629,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package8.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">뉴욕 양키스</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦5,629,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			<br>

			<!--//row1-->
			<!--/row2-->
			<h4><c:out value="${shop4.theme}"/></h4>
			<div class="row shop-wthree-info text-center mb-5">
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package9.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">유니버셜 스튜디오</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦4,359,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package10.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">롯데월드</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦409,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package11.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">디즈니랜드 도쿄 </a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦4,359,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package12.png" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">에버랜드 </a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦409,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--//row-->
			</div>
			<br>

			<!--//row1-->
			<!--/row2-->
			<h4>TV/영화 여행</h4>
			<div class="row shop-wthree-info text-center mb-5">
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package13.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">천사와 악마</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦3,249,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package14.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">해리포터</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦1,689,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package15.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">다빈치 코드</a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦2,239,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 shop-info-grid text-center mt-4">
					<div class="product-shoe-info shoe">
						<div class="men-thumb-item">
							<img src="/resources/img/package16.jpg" class="img-fluid" alt="">

						</div>
						<div class="item-info-product">
							<h4>
								<a href="single.html">라라랜드 </a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money">￦2,219,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!--//row-->
			</div>
		</div>
	</section>
</body>
<!-- footer -->
<style media="screen">
.footing {
	color: #fff;
}
</style>
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
				<div class="footing">
					S TRIP you can travel anywhere
					</p>
				</div>
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
						<a href="index.html">Home</a>
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
<!-- //footer -->
</html>
