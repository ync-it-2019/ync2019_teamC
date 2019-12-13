<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib  uri="http://www.springframework.org/security/tags"  prefix="sec" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Forms :: w3layouts</title>
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
              <a class="navbar-brand" href="/"><img src="/resources/img/logo2.png"></a>
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
                         <a href="/admin/subscriber">구매 관리</a>
                         <!-- /.nav-second-level -->
                     </li>
                 </ul>
             </div>
             <!-- /.sidebar-collapse -->
         </div>
         <!-- /.navbar-static-side -->
     </nav>
        <div id="page-wrapper">
        <div class="graphs">
        <div class="col-md-8 inbox_right">
        	<div class="Compose-Message">
                <div class="panel panel-default">
                    <div class="panel-body">	
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">구매정보 상세보기   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>번호</label> <input class="form-control1 control3" name='re_idx'
            value='<c:out value="${reservation.re_idx}"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>상품번호</label> <input class="form-control1 control3" name='prodcut_num'
            value='<c:out value="${reservation.product_num }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>구매자 ID</label> <input class="form-control1 control3" name='userid'
            value='<c:out value="${reservation.userid }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>가격</label> <input class="form-control1 control3" name='price'
            value='<c:out value="${reservation.price }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>상태</label> <input class="form-control1 control3" name='status'
            value='<c:out value="${reservation.status }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>구입날짜</label> <input class="form-control1 control3" name='re_date'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${reservation.re_date}"/>' readonly="readonly">
        </div>
        
         <!--   <button data-oper='modify' class="btn btn-default" 
            onclick="location.href='/admin/modify?q_idx=<c:out value="${inquire.q_idx }"/>'">수정</button>-->
            <button data-oper='list' class="btn btn-info" onclick="location.href='/admin/subscriber'">목록</button>
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
    <!-- /#wrapper -->
    
<!-- Nav CSS -->
<link href="/resources/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->

<script src="/resources/js/metisMenu.min.js"></script>
<script src="/resources/js/custom.js"></script>

</body>
</html>
