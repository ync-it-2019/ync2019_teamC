<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>예약페이지</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- //Meta tag Keywords -->

<!-- Custom-Files -->
<link href="/resources/css/bootstrap4.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- Bootstrap css -->
<link href="/resources/css/style4.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Main css -->
<link rel="stylesheet" href="/resources/css/fontawesome-all4.css">
<!-- //Custom-Files -->

<!-- web fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<!-- //web fonts -->

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
			<!-- //nav -->

		</header>
		<!-- //header -->
	</div>
	<!-- shop locator (popup) -->
	<!-- //header-bottom -->
	<!-- //navigation -->
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->


	<!-- //page -->
	<!-- checkout page -->
	<div class="privacy py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>구매하기</span>
			</h3>
			<div class="container" align="right">
			</div>
			<!-- //tittle heading -->
			<div class="checkout-left">
				<div class="address_form_agile mt-sm-5 mt-4">
					<h4 class="mb-sm-4 mb-3">구매정보</h4>
					<form role ="form" action = "/shop/checkout" method = "post">
						<div class="creditly-wrapper wthree, w3_agileits_wrapper">
							<div class="information-wrapper">
								<div class="first-row">
									<div class="controls form-group">
										<label>상품번호</label>
                        <input type="text" class="form-control1 control3" name = "product_num"
                        value ='${manage.product_num}' readonly="readonly">
									</div>
									<div class="controls form-group">
									<label>구매자 ID</label>
                        <input type="text" class="form-control1 control3" name = "userid"
                        value = '<sec:authentication property = "principal.username"/>' readonly="readonly">
									</div>
									<div class="controls form-group">
									<label>가격</label>
                        <input type="text" class="form-control1 control3" name = "price"
                        value ='${manage.costprice }' readonly="readonly">
									</div>
									<div class="checkout-right-basket">
                        <button type = "submit">구매하기</button>
                        </div>
								</div>
							</div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //checkout page -->
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
						<a class="text-white" href="index.html"> <img
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
							<a style="color:white" href="/">Home</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href="/info/seoul-i">국내</a></a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href"/info/japan-i">아시아</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white"href="/info/england-i">유럽</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href="/shop/shop">패키지</a>
						</ul>
					</ul>
				</div>

			</div>

		</div>
		<!-- //footer container -->
	</footer>
	<!-- //footer -->
	<!-- js-files -->
	<!-- jquery -->
	<script src="/resources/js/jquery-2.2.3.min.js"></script>
	<!-- //jquery -->

	<!-- nav smooth scroll -->
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- //nav smooth scroll -->

	<!-- cart-js -->
	<script src="/resources/js/minicart.js"></script>
	<script>
		paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

		paypals.minicarts.cart
				.on(
						'checkout',
						function(evt) {
							var items = this.items(), len = items.length, total = 0, i;

							// Count the number of each item in the cart
							for (i = 0; i < len; i++) {
								total += items[i].get('quantity');
							}

							if (total < 3) {
								alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
								evt.preventDefault();
							}
						});
	</script>
	<!-- //cart-js -->

	<!-- password-script -->
	<script>
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- quantity -->
	<script>
		$('.value-plus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) + 1;
							divUpd.text(newVal);
						});

		$('.value-minus')
				.on(
						'click',
						function() {
							var divUpd = $(this).parent().find('.value'), newVal = parseInt(
									divUpd.text(), 10) - 1;
							if (newVal >= 1)
								divUpd.text(newVal);
						});
	</script>
	<!--quantity-->
	<script>
		$(document).ready(function(c) {
			$('.close1').on('click', function(c) {
				$('.rem1').fadeOut('slow', function(c) {
					$('.rem1').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function(c) {
			$('.close2').on('click', function(c) {
				$('.rem2').fadeOut('slow', function(c) {
					$('.rem2').remove();
				});
			});
		});
	</script>
	<script>
		$(document).ready(function(c) {
			$('.close3').on('click', function(c) {
				$('.rem3').fadeOut('slow', function(c) {
					$('.rem3').remove();
				});
			});
		});
	</script>
	<!-- //quantity -->

	<!-- smoothscroll -->
	<script src="/resources/js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="/resources/js/move-top.js"></script>
	<script src="/resources/js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<!-- for bootstrap working -->
	<script src="/resources/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</body>

</html>
