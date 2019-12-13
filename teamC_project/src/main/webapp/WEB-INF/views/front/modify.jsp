<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE HTML>
<html>
<head>
<title>STRIP can go anywhere</title>
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
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>개인정보 수정</h3>
     <form method="post" action="/front/modify" >
       <table width="900" border="1"  cellspacing="0" cellpadding="3" align="center">
         <tr>
           <td width="600" bgcolor="skyblue">
             <b>개인정보 수정</b>
           </td>
           <td width="200" bgcolor="skyblue"></td>
         </tr>
           <td width="200">사용자 ID</td> 
            <td width="400">
             <input type="text" name="userid" size="10" maxlength="10"
             value='<c:out value="${modify.userid}"/>' readonly="readonly">
           </td>
         </tr>
         <tr>
           <td width="600" bgcolor="skyblue">
             <b>개인정보 수정</b>
           </td>
           <td width="400" bgcolor="skyblue"></td>
         </tr>
         <tr>
           <td width="200">사용자 이름</td>
           <td width="400">
             <input type="text" name="name" size="10" maxlength="10"
             value='<c:out value="${modify.name}"/>' readonly="readonly">
           </td>
         </tr>
                  <tr>
           <td width="200">성별</td>
           <td width="400">
             <input type="text" name="sex" size="10" maxlength="10"
             value='<c:out value="${modify.sex}"/>' readonly="readonly">
           </td>
         </tr>
         <tr>
           <td width="200">E-Mail</td>
           <td width="400">
           <input type="text" name="email" size="90" maxlength="90"
             value='<c:out value="${modify.email}"/>' >
           </td>
          </tr>
         <tr>
           <td width="200">휴대전화번호</td>
           <td width="400">
             <input type="text" name="phone" size="70" maxlength="70"
             value='<c:out value="${modify.phone}"/>'>
             </td>
         </tr>
         <tr>
           <td colspan="2" align="center" bgcolor="skyblue">
             <button type = "submit" data-oper='modify' class="btn btn-warning btn-default">수정</button>
           </td>
         </tr>
       </table>
          <input type="hidden" name="${_csrf.parameterName}"
      value="${_csrf.token}" />
     </form>
</div>
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
