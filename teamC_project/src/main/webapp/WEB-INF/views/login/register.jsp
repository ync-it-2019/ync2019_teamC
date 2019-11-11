   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib  uri="http://www.springframework.org/security/tags"  prefix="sec" %>
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
         function oneCheckbox(a){
             var obj = document.getElementsByName("sex");
             for(var i=0; i<obj.length; i++){
                 if(obj[i] != a){
                     obj[i].checked = false;
                 }
             }
         }
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
            <h2>회원가입</h2>
                  <div class="letter-w3ls">
                     <form role="form" action="/login/register" method="post">
                        <div class="form-left-to-w3l">
                           <input type="text" name="userid" placeholder="Id" required="" style="color:#000;">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="이름" required="" style="color:#000;">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="password" name="password" placeholder="비밀번호" required="" style="color:#000;">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="휴대폰번호" required="" style="color:#000;">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="email" name="email" placeholder="Email" required="" style="color:#000;">
                        </div>
                        <div class="form-left-to-w3l margin-zero">
                           <input type="checkbox" name="sex" value="man" style="color:#000;" onclick="oneCheckbox(this)"/>남자
                           <input type="checkbox" name="sex" value="female" style="color:#000;" onclick="oneCheckbox(this)"/>여자
                        </div>
                        <div class="btnn">
                           <button type="submit">Sign Up</button>
                           <br>
                        </div>
                     </form>
                  </div>
         </div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">Strip 로그인해서</h1>
            <h1 class="header-w3ls"> 더 많은 정보를 </h1>
            <h1 class="header-w3ls">챙기세요</h1>
         </div>
      </div>
      <footer class="bottem-wthree-footer">
      </footer>
   </body>
</html>
