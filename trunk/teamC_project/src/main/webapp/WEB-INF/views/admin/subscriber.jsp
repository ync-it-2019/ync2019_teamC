<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Basic_tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="/resources/css/a-bootstrap.min.css" rel='stylesheet' type='text/css' />
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
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="management.html"><img src="/resources/img/logo2.png"></a>
            </div>
            <!-- /.navbar-header -->
           <ul class="nav navbar-nav navbar-right">
            <li>
            <a href="/customLogout" style="color:white;">Logout</a>
            </li>
            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="/admin/management">회원 관리</a>
                        </li>
                        <li>
                            <a href="#">상품 관리<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/admin/registration">패키지 등록</a>
                                </li>
                                <li>
                                    <a href="/admin/product_manage">패키지 목록</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="/admin/inquire">상품문의 관리</a>
                        </li>
                        <li>
                            <a href="/admin/subscriber">예약/구매 관리</a>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>예약 관리</h3>
    <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
      <div class="panel-body no-padding">
        <table class="table table-striped">
          <thead>
            <tr class="warning">
              <th>번호</th>
              <th>상품번호</th>
              <th>아이디</th>
              <th>구입날짜</th>
              <th>현재상태</th>
            </tr>
          </thead>
          <tbody>
							<c:forEach items="${reservation}" var="reservation">
						<tr>
						<td><c:out value="${reservation.re_idx}"/></td>
						<td><c:out value="${reservation.product_num}"/></td>
						<td><c:out value="${reservation.userid}"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${reservation.re_date}"/></td>
						<td><c:out value="${reservation.status}"/></td>
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
        <form id='actionForm' action="/admin/subscriber" method='get'>
        <input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
        <input type='hidden' name='amount' value= '${pageMaker.cri.amount}'>
        </form>
      </div>
	</div>
  </div>
  <div class="copy_layout">
      <p>Copyright © 2015 Modern. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
  </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="/resources/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
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
		  self.location = "/admin/inquire";
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
<script src="/resources/js/metisMenu.min.js"></script>
<script src="/resources/js/custom.js"></script>
</body>
</html>
