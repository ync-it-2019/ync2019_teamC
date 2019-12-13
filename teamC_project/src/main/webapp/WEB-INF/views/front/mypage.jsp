<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE HTML>
<html>
<head>
<title>My page</title>
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
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--webfonts--->
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
                <a class="navbar-brand" href="/"><img src="/resources/img/logo2.png"></a>
            </div>
            <!-- /navigation bar-header -->
            <ul class="nav navbar-nav navbar-right">
            <li>
            <a href="/customLogout" style="color:white;">Logout</a>
            </li>
            </ul>

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                        <sec:authentication property="principal.username" var="user_id" />
                         <a href="/front/mypage?userid=${user_id}">마이페이지</a>
                        </li>
                        <li>
                       	 <sec:authentication property="principal.username" var="user_id" />
                            <a href="/front/modify?userid=${user_id}">정보수정</a>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>예약관리</h3>

    <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
      <div class="panel-body no-padding">
        <table class="table table-striped">
          <thead>
            <tr class="warning">
              <th>예약순서</th>
              <th>구매상품</th>
              <th>결제금액</th>
              <th>출발일</th>
              <th>귀국일</th>
              <th>상태</th>
            </tr>
          </thead>

          <tbody>
            <c:forEach items="${mypage}" var="mp">
              <tr>
                <td>
                  <c:out value="${mp.re_idx}" />
                </td>
                <td>
                <c:out value="${mp.product_name}" />
                </td>
                <td>
                  <c:out value="${mp.price}" />
                </td>
                <td>
                  <c:out value="${mp.departure_date}" />
                </td>
                <td>
                  <c:out value="${mp.arrival_date}" />
                </td>
                <td>
                  <c:out value="${mp.status}" />
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
              <center>
          <ul class="pagination pagination-lg">
            <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous">
                <a href="${pageMaker.startPage -1}">
                  <<</a> </li> </c:if> <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
              <li class="paginate_button ${pageMaker.cri.pageNum == num ? " active":""}">
                <a href="${num}">${num}</a></li>
              </c:forEach>
              <c:if test="${pageMaker.next}">
                <li class="paginate_button next">
                  <a href="${pageMaker.endPage +1}">>></a></li>
              </c:if>
          </ul>
        </center>
                <form id='actionForm' action="/front/mypage?userid = <c:out value="${modify.userid}"/>" method='get'>
                <input type='hidden' name='userid' value='${modify.userid}'> 
                <input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
                <input type='hidden' name='amount' value= '${pageMaker.cri.amount}'>
        </form>
      </div>
    </div>
</div>

</div>
</div>
</div>
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
		  self.location = '/front/mypage';
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
<!-- /#page-wrapper -->
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="/resources/css/custom.css" rel="stylesheet" />
<!-- Metis Menu Plugin JavaScript -->
<script src="/resources/js/metisMenu.min.js"></script>
<script src="/resources/js/custom.js"></script>
</body>
</html>
