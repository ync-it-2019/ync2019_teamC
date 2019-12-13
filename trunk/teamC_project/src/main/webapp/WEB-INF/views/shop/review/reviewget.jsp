<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Basic_tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom-Files -->
<link rel="stylesheet" href="/resources/css/bootstrap2.css">
 <!-- Bootstrap Core CSS -->
<link href="/resources/css/a-bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="/resources/css/style2.css" type="text/css" media="all" />
<!-- Custom CSS -->
<link href="/resources/css/a-style.css" rel='stylesheet' type='text/css' />
<link href="/resources/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="/resources/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->
<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>
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
function getThumbFileName(fullFilePath) {
	var arrString = fullFilePath.split("/");
	arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
	return arrString.join("/");
}
</script>
<body>
	<div class="main-sec inner-page">
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
	</div>
<!-- /.row -->
<div id="wrapper">
        <div id="page-wrapper">
        <div class="graphs">
        <div class="col-md-8 inbox_right">
        	<div class="Compose-Message">
                <div class="panel panel-default">
                    <div class="panel-body">	
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">리뷰 상세 보기 </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">리뷰페이지</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>문의번호</label> <input class="form-control1 control3" name='q_idx'
            value='<c:out value="${review.review_idx}"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control1 control3" name='title'
            value='<c:out value="${review.title }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>Text area</label>
          <textarea class="form-control1 control3" rows="3" name='content'
            readonly="readonly"><c:out value="${review.content}" /></textarea>
        </div>

        <div class="form-group">
          <label>작성자</label> <input class="form-control1 control3" name='userid'
            value='<c:out value="${review.userid }"/>' readonly="readonly">
        </div>
			
				
        <div class="form-group">
          <label>이미지</label> 
          <c:if test="${not empty review.img}">
            <a href="/resources/upload/${review.img}" target="_blank"><img src="/resources/upload/${review.img}" width=400px, height=300px></a>
            </c:if>
        </div>
         
         <sec:authentication property="principal" var="pinfo"/>
        
         <sec:authorize access="isAuthenticated()">
         
         <c:if test="${pinfo.username eq review.userid }">
         
        <button data-oper='modify' class="btn btn-default" 
            onclick="location.href='/shop/review/modify?review_idx=<c:out value="${review.review_idx }"/>'">수정</button>
            </c:if>
            </sec:authorize>
					<sec:authorize access="isAnonymous()">
					</sec:authorize>
	   <button data-oper='list' class="btn btn-info">
<a href='/shop/review?product_num=<c:out value="${review.product_num}"/>'>목록</a></button>
      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->




	                 </div>
                 </div>
              </div>
         </div>
         <div class="clearfix"> </div>
   </div>
   </div>
      
      <!-- /#page-wrapper -->
   </div>
	<!-- /댓글 modal -->
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
</body>  
</html>    
