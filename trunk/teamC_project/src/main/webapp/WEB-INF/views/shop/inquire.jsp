<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
<link rel="stylesheet" href="/resources/css/style2.css" type="text/css" media="all" />
<link href="/resources/css/a-bootstrap.min.css" rel='stylesheet' type='text/css' />
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
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=kr">
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
	<!-- //banner-->
	<!--/banner-bottom -->
	<section class="banner-bottom py-5">
		<div class="container py-md-5">
			<!-- product right -->
			<div class="left-ads-display wthree">
				<div class="row">
					<div class="desc1-left col-md-6">
						<img src="/resources/upload/${manage.main_img}" width=400px, height=300px>
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
						</br><a href='/shop/checkout?product_num=<c:out value="${manage.product_num}"/>'><button class="btn submit">구매하기</button></a>				
					</div>
				</div>
				<br>
				<br>
			</div>
		</div>
	</section>
	<!-- /banner-bottom -->
	</style>
	<div  class="menubar" style="width: auto;">
		<ul style="">
			<li><a href='/shop/package?product_num=<c:out value="${manage.product_num}"/>'>상품설명</a></li>
			<li><a href='/shop/review?product_num=<c:out value="${manage.product_num}"/>'>회원리뷰</a></li>
			<li><a href='/shop/inquire?product_num=<c:out value="${manage.product_num}"/>'>상품 문의</a></li>
		</ul>
		</div>
<style type="text/css">
.board p{
	width: 600px;
	text-align: right;
	font-size : 9px;
	}
.board table thead tr th {
	background-color: gray;
}
</style>
		<script type="text/javascript">
        function goUrl(url) {
           location.href=url;
        }
    </script>
		<div id="tabs-2" class="t1"><br>
<div class="board" align="center">		
			<!-- CSS 영역 -->
			
			<h1>문의목록</h1><br>
       <table class="table table-striped">
           <colgroup>
               <col width="100" />
               <col width="400" />
               <col width="160" />
               <col width="200" />
               <col width="140" />
           </colgroup>  
           <thead>
               <tr align="center">
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>등록 일시</th>

               </tr>
           </thead>
           <tbody>
						<c:forEach items="${inquire}" var="inquire">
						<tr>
						<td><a style="color:black" href='/shop/inquire/inquireget?q_idx=<c:out value="${inquire.q_idx }" />'>
						<c:out value="${inquire.q_idx}"/></a></td>
						<td><a style="color:black" href='/shop/inquire/inquireget?q_idx=<c:out value="${inquire.q_idx }" />'>
						<c:out value="${inquire.title}"/></a></td>
						<td><c:out value="${inquire.userid}"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${inquire.writedate}"/></td>
						</tr>
						</c:forEach>
						</tbody>
       </table>
        <center>
        <ul class="pagination pagination-lg">
        <c:if test="${pageMaker.prev}">
          <li class="paginate_button previous">
          <a href="${pageMaker.startPage -1}"><<</a></li>
          </c:if>
          <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
          <li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}">
          <a href="${num}">${num}</a></li>
          </c:forEach>
          <c:if test="${pageMaker.next}">
          <li class="paginate_button next">
          <a href="${pageMaker.endPage +1}">>></a></li>
          </c:if>
        </ul>
        </center>
                <form id='actionForm' action="/shop/inquire?product_num=<c:out value="${manage.product_num}"/>" 
                method='get'>
        <input type='hidden' name='product_num' value='${manage.product_num}'>
        <input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
        <input type='hidden' name='amount' value= '${pageMaker.cri.amount}'>
        </form>
                    <!-- 버튼 영역 -->
       <div align="right">
       <p>
           <sec:authorize access="isAuthenticated()">
					<input type="button" value="글쓰기" onclick="location.href='/shop/inquire/inquireregister?product_num=<c:out value="${manage.product_num}"/>' " />
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					</sec:authorize>
           
       </p>
       </div>
      </div><br> 
       <!-- //게시판 목록 영역 -->
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
					<div class="fv3-contact mt-3"><p>S TRIP you can travel anywhere</p></div>
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
	<!-- 탭메뉴를 위한 자바스크립트 함수 -->
	<script type="text/javascript">
  $(document).ready(function() {
	  var result = '<c:out value="${result}"/>';
	  checkModal(result);
	  history.replaceState({}, null, null);
	  function checkModal(result) {
		  if (result === '' || history.state) {
			  return;
		  }
		  
		  if (parseInt(result) > 0) {
			  $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
		  }
		  
		  $("#myModal").modal("show");
	  }
	  
	  $("#regBtn").on("click", function() {
		  self.location = '/shop/inquire?product_num=<c:out value="${manage.product_num}"/>';
	  });
	  
	  var actionForm = $("#actionForm");
	  
	  $(".paginate_button a").on("click", function(e) {
		  e.preventDefault();
		  console.log('click');
		  actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		  actionForm.submit();
	  });
  });
  
  

</script>
<script>
$(".move").on("click", function(e){
	  
	  e.preventDefault();
	  actionForm.append("<input type='hidden' name='q_idx' value='"+
			  $(this).attr("href")+"'>");
	  actionForm.attr("action","/inquire/get");
	  actionForm.submit();
	  
	  
});
</script>
	</body>
</html>
