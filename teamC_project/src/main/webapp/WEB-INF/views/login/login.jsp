   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <h3><c:out value="${error}"/></h3>
            <h3><c:out value="${logout}"/></h3>
            <form action="/login" method="post">
               <div class="main">
                  <div class="form-left-to-w3l">
                     <input type="text" name="username" placeholder="Id" required="">
                  </div>
                  <div class="form-left-to-w3l ">
                     <input type="password" name="password" placeholder="Password" required="">
                     <div class="clear"></div>
                  </div>
               </div>
               <div class="left-side-forget">
                  <input type="checkbox" class="checked">
                  <span class="remenber-me">Remember me </span>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                  <button type="submit">Login</button>
               </div>
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <div class="w3layouts_more-buttn">
               <h3>Don't Have an account..?
                  <a href="/login/register">Sign Up Here
                  </a>
               </h3>
            </div>
			<div id="homebtn">
			<a href="/"><button>HOME</button></a>
			</div>
		</div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">Strip 로그인해서</h1>
            <h1 class="header-w3ls"> 더 많은 정보를 </h1>
            <h1 class="header-w3ls">챙기세요</h1>
         </div>
      </div>

   </body>
</html>
