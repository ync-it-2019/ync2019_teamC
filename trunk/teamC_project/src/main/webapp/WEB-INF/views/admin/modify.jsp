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
                    <form role ="form" action = "/admin/modify" method = "post">
                        <div class="alert alert-info">
                            댓글 등록/수정
                        </div>
                        <hr>
                       <label>제목</label> <input class="form-control1 control3" name='title'
                       value='<c:out value="${inquire.title }"/>' readonly="readonly">
                        <label>문의번호</label> <input class="form-control1 control3" name='q_idx'
                        value='<c:out value="${inquire.q_idx}"/>' readonly="readonly">
                        <label>작성자</label> <input class="form-control1 control3" name='userid'
                        value='<c:out value="${inquire.userid }"/>' readonly="readonly">
                        <label>내용</label>
                        <textarea class="form-control1 control3" rows="3" name='content'
                        readonly="readonly"><c:out value="${inquire.content}" /></textarea>
                        <hr>
    <div class="panel panel-default">
      
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> 답변
      </div>      
      <!-- /.panel-heading -->
      <div class="panel-body">        
       <textarea class="form-control1 control3" rows="3" name='answer'>
       <c:out value="${inquire.answer}" /></textarea>
      </div>
                    <label class="col-sm-2 control-label">답변 여부</label>
              <div class="col-sm-8">
              <input type="checkbox" name="answer_check" value="o" style="color:#000;"/>
              </div>
	<div class="panel-footer"></div>
		</div>
                        <hr>
                        <button type = "submit" data-oper='modify' class="btn btn-warning btn-warng1">등록/수정</button>
                      <a href="#" class="btn btn-success btn-warng1"><span class="glyphicon glyphicon-tags tag_01"></span>취소</a>
                      <input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
                      </form>
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
