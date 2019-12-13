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
	     <div class="xs">
  	       <h3>패키지 등록</h3>
  	         <div class="tab-content">
				<div class="tab-pane active" id="horizontal-form">
				<form role="form" action="/admin/registration" method="post" class="form-horizontal" enctype="multipart/form-data">
				        <input type="hidden" name="main_img" value="">
				        <input type="hidden" name="slide_img1" value="">
				        <input type="hidden" name="slide_img2" value="">
				        <input type="hidden" name="slide_img3" value="">
				        <input type="hidden" name="slide_img4" value="">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div class="form-group">
				<label class="col-sm-2 control-label">패키지 명</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control1" name="product_name">
				</div>
			  </div>
				<div class="form-group">
				  <label class="col-sm-2 control-label">국가</label>
				  <div class="col-sm-8">
				  <input type="text" class="form-control1" name="country">
				</div>
			  </div>
				<div class="form-group">
				  <label class="col-sm-2 control-label">도시</label>
				  <div class="col-sm-8">
				  <input type="text" class="form-control1" name="city">
				</div>
			  </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">출발일</label>
                  <div class="col-sm-8">
                  <input type="date" class="form-control1"  name="departure_date">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label">도착일</label>
                <div class="col-sm-8">
                <input type="date" class="form-control1"  name="arrival_date">
              </div>
            </div>
			  <div class="form-group">
				<label class="col-sm-2 control-label">교통편</label>
				<div class="col-sm-8">
			<select name="transportation" class="form-control1" name="transportation">
				<option value="none" selected="selected">교통편 선택</option>
				<option value="airplane">비행기</option>
				<option value="bus">버스</option>
				<option value="ship">배</option>	
		      </select>
			</div>
		  </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">메인 이미지</label>
                  <div class="col-sm-8">
                  <input type="file" class="form-control1" name="uploadFile">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">상품 이미지1</label>
                  <div class="col-sm-8">
                  <input type="file" class="form-control1" name="uploadFile">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">상품 이미지2</label>
                  <div class="col-sm-8">
                  <input type="file" class="form-control1" name="uploadFile">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">상품 이미지3</label>
                  <div class="col-sm-8">
                  <input type="file" class="form-control1" name="uploadFile">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">상품 이미지4</label>
                  <div class="col-sm-8">
                  <input type="file" class="form-control1" name="uploadFile">
                  </div>
                </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">테마</label>
                    <div class="col-sm-8">
               <select name="theme" class="form-control1" name="theme">
				<option value="none" selected="selected">테마선택</option>
				<option value="soccer">축구</option>
				<option value="baseball">야구</option>
				<option value="amusement">놀이공원</option>
				<option value="program">TV명소</option>
		      </select>
                      	
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label">가격</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control1" name="costprice">
                  </div>
              </div>
              <div class="form-group">
              <label class="col-sm-2 control-label">여행일정</label>
              <div class="col-sm-8">
              <input type="text" class="form-control1" name="itinerary">
              </div>
            </div>
            <div class="form-group">
            <label class="col-sm-2 control-label">호텔, 관광지정보</label>
            <br>
          <textarea cols="70" rows="10" style="resize:none" name='hotel_tour'></textarea>
          </div>
          <div class="form-group">
              <label class="col-sm-2 control-label">메인화면 여부</label>
              <div class="col-sm-8">
              <input type="checkbox" name="main_check" value="o" style="color:#000;"/>o
              <input type="checkbox" name="main_check" value="x" style="color:#000;"/>x
              </div>
            </div>
                <div class="panel-footer">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<button type="submit" class="btn-success btn">등록</button>
				<a href="/admin/product_manage"><button class="btn-default btn">취소</button></a>
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
