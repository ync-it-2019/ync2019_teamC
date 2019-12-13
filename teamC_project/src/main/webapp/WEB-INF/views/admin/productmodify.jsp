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
    <div class="panel panel-default">

      <div class="panel-heading">상품 수정</div>
      <!-- /.panel-heading -->
      <div class="panel-body">
      <form role ="form" action = "/admin/productmodify" method = "post" enctype="multipart/form-data">
				        <input type="hidden" name="main_img" value="">
				        <input type="hidden" name="slide_img1" value="">
				        <input type="hidden" name="slide_img2" value="">
				        <input type="hidden" name="slide_img3" value="">
				        <input type="hidden" name="slide_img4" value="">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	      
	    <div class="form-group">      
          <label>상품번호</label> <input class="form-control1" name='prodcut_num'
            value='<c:out value="${product.product_num}"/>' readonly="readonly">
        </div>
	        	        
        <div class="form-group">      
          <label>상품명</label> <input class="form-control1" name="product_name"
            value='<c:out value="${product.product_name}"/>'>
        </div>
        
        <div class="form-group">
          <label>국가</label> <input class="form-control1" name='country'
            value='<c:out value="${product.country}"/>'>
        </div>
        
        <div class="form-group">
          <label>도시</label> <input class="form-control1" name='city'
            value='<c:out value="${product.city}"/>'>
        </div>
        
        <div class="form-group">
          <label>출발일</label> <input type="date" class="form-control1"  name="departure_date"
          value='<c:out value="${product.departure_date}"/>'>
        </div>
        
        <div class="form-group">
          <label>도착일</label> <input type="date" class="form-control1"  name="arrival_date"
          value='<c:out value="${product.arrival_date}"/>'>
        </div>
        
        <div class="form-group">
          <label>교통편</label> <input class="form-control1" name='transportation'
            value='<c:out value="${product.transportation}"/>'>
        </div>
        
        <div class="form-group">
          <label>테마</label> <input class="form-control1" name='theme'
            value='<c:out value="${product.theme}"/>'>
        </div>
        
        <div class="form-group">
          <label>가격</label> <input class="form-control1" name='costprice'
            value='<c:out value="${product.costprice}"/>'>
        </div>
        
        <div class="form-group">
          <label>일정</label> <input class="form-control1" name='itinerary'
            value='<c:out value="${product.itinerary}"/>'>
        </div>
        
        <div class="form-group">
          <label>상세정보</label>
          <br>
          <textarea cols="70" rows="10" style="resize:none" name='hotel_tour'>
          <c:out value="${product.hotel_tour}" /></textarea>
        </div>
                <div class="form-group">
                  <label>메인 이미지</label>
                  <input type="file" class="form-control1" name="uploadFile">
                </div>
                <div class="form-group">
                  <label>상품 이미지1</label>
                  <input type="file" class="form-control1" name="uploadFile">
                </div>
                <div class="form-group">
                  <label>상품 이미지2</label>
                  <input type="file" class="form-control1" name="uploadFile">
                </div>
                <div class="form-group">
                  <label>상품 이미지3</label>
                  <input type="file" class="form-control1" name="uploadFile">
                </div>
                <div class="form-group">
                  <label>상품 이미지4</label>
                  <input type="file" class="form-control1" name="uploadFile">
                </div>
                <div class="form-group">
              <label>메인화면 여부</label>
              <input type="checkbox" name="main_check" value="o" style="color:#000;"/>o
              <input type="checkbox" name="main_check" value="x" style="color:#000;"/>x
            </div>
         <button type = "submit" data-oper='modify' class="btn btn-warning btn-default">수정</button>
         
         <button type = "submit" data-oper='remove' class="btn btn-success btn-danger">삭제</button>            
                      <input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
                        <input type="hidden" name="product_num"
                        value="<c:out value="${product.product_num}"/>" />
                      </form>
                      
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

        <script type="text/javascript">
$(document).ready(function() {

	
	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/admin/remove");
	    
	    }
	    formObj.submit();
	       
	  });
});
</script>
<!-- Nav CSS -->
<link href="/resources/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->

<script src="/resources/js/metisMenu.min.js"></script>
<script src="/resources/js/custom.js"></script>

</body>
</html>
