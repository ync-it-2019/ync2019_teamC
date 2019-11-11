<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <title>Strip sign up & register</title>
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Gaze Sign up & login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
         />
      <script>
         addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
      </script>
      <!-- Meta tags -->
      <!--stylesheets-->
      <link href="/resources/css/style1.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
   </head>

<body>
	<div class="mid-class">
         <div class="art-right-w3ls">
					<h2>로그인</h2>
						<form role="form" method='post' action="/login">
								<div class="main">
								<div class="form-left-to-w3l">
									<input placeholder="userid" name="username" type="text" required="">
										</div>
								<div class="form-left-to-w3l ">
									<input placeholder="Password" name="password" type="password" required="">
								</div>
								</div>
								<div class="left-side-forget">
									 <input type="checkbox" class="checked">
									<span class="remenber-me">Remember me </span>
								</div>
								<div class="right-side-forget">
                  <a href="#" class="for">Forgot password...?</a>
               </div>
               <div class="clear"></div>
								<!-- Change this to a button or input when using this as a form -->
								<div class="btnn">
								<button type="submit" href="index.html" >Login</button>
								</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<div class="w3layouts_more-buttn">
               <h3>Don't Have an account..?
                  <a href="/login/register">Sign Up Here
                  </a>
               </h3>
            </div>
		</div>
		<div class="art-left-w3ls">
            <h1 class="header-w3ls">Strip 로그인해서</h1>
            <h1 class="header-w3ls"> 더 많은 정보를 </h1>
            <h1 class="header-w3ls">챙기세요</h1>
         </div>
	</div>
	
	
	
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/resources/dist/js/sb-admin-2.js"></script>
  <script>
  
  
  
  
  $(".btn-success").on("click", function(e){
    
    e.preventDefault();
    $("form").submit();
    
  });
  
  </script>
  
<c:if test="${param.logout != null}">
      <script>
      $(document).ready(function(){
      	alert("로그아웃하였습니다.");
      });
      </script>
</c:if>  

</body>

</html>
