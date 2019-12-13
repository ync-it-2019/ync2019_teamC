<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Basic_tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom-Files -->
<link rel="stylesheet" href="/resources/css/bootstrap2.css">
 <!-- Bootstrap Core CSS -->
<link href="/resources/css/a-bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="/resources/css/style2.css" type="text/css" media="all" />
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
<!-- font-awesome-icons -->
<link href="/resources/css/font-awesome2.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<!-- /Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700"
	rel="stylesheet">
<!-- //Fonts -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<script>
function getThumbFileName(fullFilePath) {
	var arrString = fullFilePath.split("/");
	arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
	return arrString.join("/");
}
</script>
<body>
	<div class="main-sec inner-page">
			<header class="py-sm-3 pt-3 pb-2" id="home">
<style>
.absolute {
	position: absolute;
}

.right {
	float: right;
}
</style>
			<!-- nav -->
			<div class="menubar">
				<li class="absolute"><img src="/resources/img/logo2.png"></li>
				<ul class="right">
					<li><a href="/">HOME</li>
					<li><a href="#">국내</a>
						<ul>
							<li><a href="/info/seoul-i">서울</a></li>
							<li><a href="/info/busan-i">부산</a></li>
							<li><a href="/info/gyeongju-i">경주</a></li>
							<li><a href="/info/jeonju-i">전주</a></li>
						</ul></li>
					<li><a href="#">아시아</a>
						<ul>
							<li><a href="/info/japan-i">일본</a></li>
							<li><a href="/info/china-i">중국</a></li>
							<li><a href="/info/tai-i">태국</a></li>
							<li><a href="/info/hongkong-i">홍콩</a></li>
						</ul></li>
					<li><a href="#">유럽</a>
						<ul>
							<li><a href="/info/england-i">영국</a></li>
							<li><a href="/info/ita-i">이탈리아</a></li>
							<li><a href="/info/france-i">프랑스</a></li>
							<li><a href="/info/ger-i">독일</a></li>
						</ul></li>
					<li><a href="/shop/shop">패키지</a></li>
					<li><a href="/faq/index_faq">자주 묻는 질문</a></li>

						<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal.username" var="user_id" />
					<li><a href="/front/mypage?userid=${user_id}">마이페이지</a></li>
					<li><a href="/customLogout">
					<i class="fa fa-sign-out fa-fw"></i>Logout</a></li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
					<li><a href="/login/login">
					<i class="fa fa-sign-out fa-fw"></i>Login</a></li>
					</sec:authorize>
				</ul>
			</div>
			<!-- //nav -->

		</header>		
	</div>
<!-- /.row -->
<div id="wrapper">
        <div id="page-wrapper">
        <div class="graphs">
        <div class="col-md-8 inbox_right">
        	<div class="Compose-Message">
                <div class="panel panel-default">
                    <div class="panel-body">	
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">문의상세보기   </h1>
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
          <label>문의번호</label> <input class="form-control1 control3" name='q_idx'
            value='<c:out value="${inquire.q_idx}"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control1 control3" name='title'
            value='<c:out value="${inquire.title }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>Text area</label>
          <textarea class="form-control1 control3" rows="3" name='content'
            readonly="readonly"><c:out value="${inquire.content}" /></textarea>
        </div>

        <div class="form-group">
          <label>작성자</label> <input class="form-control1 control3" name='userid'
            value='<c:out value="${inquire.userid }"/>' readonly="readonly">
        </div>
        
        <sec:authentication property="principal" var="pinfo"/>
        
         <sec:authorize access="isAuthenticated()">
         
         <c:if test="${pinfo.username eq inquire.userid }">
         
        <button data-oper='modify' class="btn btn-default" 
            onclick="location.href='/shop/inquire/modify?q_idx=<c:out value="${inquire.q_idx }"/>'">수정</button>
            </c:if>
            </sec:authorize>
					<sec:authorize access="isAnonymous()">
					</sec:authorize>
	   <button data-oper='list' class="btn btn-info">
<a href='/shop/inquire?product_num=<c:out value="${inquire.product_num}"/>'>목록</a></button>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<div class='row'>

  <div class="col-lg-12">

    <!-- /.panel -->
    <div class="panel panel-default">
      
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> 답변
      </div>      
      <!-- /.panel-heading -->
      <div class="panel-body">        
       <textarea class="form-control1 control3" rows="3" name='answer'
            readonly="readonly"><c:out value="${inquire.answer}" /></textarea>
      </div>
	<div class="panel-footer"></div>
		</div>
  </div>
  <!-- ./ end row -->
</div>
	                 </div>
                 </div>
              </div>
         </div>
         <div class="clearfix"> </div>
   </div>
   </div>
      
      <!-- /#page-wrapper -->
   </div>
	<!-- /댓글 modal -->
		<footer class="py-sm-5">
		<div class="container">
			<div class="row py-5">
				<!-- footer grid1 -->
				<div class="col-lg-4 text-center">
					<h2>
						<a class="text-white" href="/"> <img
							src="/resources/img/logo2.png" class="img-fluid"
							alt="Responsive image" />
						</a>
					</h2>
				</div>
				<!-- //footer gri12 -->
				<!-- footer grid2 -->
				<div class="col-lg-4  footv3-left text-center my-lg-0 my-5">
					<h3 class="mb-3">Get In Touch</h3>
					<div class="fv3-contact mt-3"><p>S TRIP you can travel anywhere</p></div>
					<div class="fv3-contact mt-3">
						<p>90 Street, City, State 34789.</p>
					</div>
					<div class="fv3-contact my-3">
						<p>+456 123 7890</p>
					</div>
					<div class="fv3-contact">
						<p>
							<a href="mailto:example@email.com">info@example.com</a>
						</p>
					</div>
				</div>
				<!-- //footer grid2 -->
				<!-- footer grid3 -->
				<div class="col-lg-4  footv3-left text-center">
					<h3 class="mb-3">Navigation</h3>
					<ul class="list-agileits">
						<ul class="mb-3">
							<a style="color:white" href="/">Home</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href="/info/seoul-i">국내</a></a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href"/info/japan-i">아시아</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white"href="/info/england-i">유럽</a>
						</ul>
						<ul class="mb-3">
							<a style="color:white" href="/shop/shop">패키지</a>
						</ul>
					</ul>
				</div>

			</div>

		</div>
		<!-- //footer container -->
	</footer>
</body>  
</html>    
<script type="text/javascript" src="/resources/js/reply.js?v=1.0"></script>

<script type="text/javascript">
$(document).ready(function () {
	  
	var bnoValue = '<c:out value="${inquire.q_idx}"/>';
	var replyUL = $(".chat");
	  
	showList(1);
	
	// 댓글 목록을 출력하는 함수
	function showList(page){
		
		replyService.getList({bno:bnoValue, page: page|| 1 }, function(list) {
	      
			var str="";
	     
			if(list == null || list.length == 0){
				replyUL.html("");
				return;
			}
	     
			for (var i = 0, len = list.length || 0; i < len; i++) {
				str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				str +="  <div><div class='header'><strong class='primary-font'>["
					+ list[i].rno+"] "+list[i].replyer+"</strong>"; 
				str +="    <small class='pull-right text-muted'>"
					+ replyService.displayTime(list[i].replyDate)+"</small></div>";
				str +="    <p>"+list[i].reply+"</p></div></li>";
			}
	     
			replyUL.html(str);
	     
		});//end function
	     
	}//end showList
	
	/* 댓글 modal 창 동작 부분*/
	var modal = $(".modal");
    var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
		modal.find("input").val("");
		modal.find("input[name='replyer']").val(replyer);
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id !='modalCloseBtn']").hide();
		
		modalRegisterBtn.show();
		$(".modal").modal("show");
    });
    
	// Ajax Spring Security Header
    $(document).ajaxSend(function(e, xhr, options) { 
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
	});
    
    // 댓글 등록
	modalRegisterBtn.on("click",function(e){
      
		var reply = {
			reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
		};
      
		replyService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        showList(1);
        //showList(-1);
        
      });
      
    });
    
	//댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
		var rno = $(this).data("rno");
		console.log(rno);
		
		replyService.get(rno, function(reply){
	
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime( reply.replyDate)).attr("readonly","readonly");
			modal.data("rno", reply.rno);
			
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
		});
	});
	
	// 댓글 수정 이벤트. security 적용 후
	modalModBtn.on("click", function(e){
		
		var originalReplyer = modalInputReplyer.val();
		
		var reply = {
				rno:modal.data("rno"), 
				reply: modalInputReply.val(),
				replyer: originalReplyer
				};
	  
		if(!replyer){
			alert("로그인후 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}

		console.log("Original Replyer: " + originalReplyer);
		
		if(replyer  != originalReplyer){
			alert("자신이 작성한 댓글만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}
		  
		replyService.update(reply, function(result){
			alert(result);
			modal.modal("hide");
			showList(1);
		});
	});

	// 댓글 삭제 이벤트
	modalRemoveBtn.on("click", function (e){
	  	  
		var rno = modal.data("rno");

		console.log("RNO: " + rno);
		console.log("REPLYER: " + replyer);
	   	  
		if(!replyer){
			alert("로그인후 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		var originalReplyer = modalInputReplyer.val();
	   	  
		console.log("Original Replyer: " + originalReplyer);
	   	  
		if(replyer !== originalReplyer){
	   		  
			alert("자신이 작성한 댓글만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		replyService.remove(rno, originalReplyer, function(result){
			alert(result);
			modal.modal("hide");
			showList(1);
		});
	});
	
	/* 댓글 modal 창 동작 부분*/
	
	// 댓글 인증 부분 추가
	var replyer = null;
    
    <sec:authorize access="isAuthenticated()">
	replyer = '<sec:authentication property="principal.username"/>';   
	</sec:authorize>
 
	var csrfHeaderName ="${_csrf.headerName}"; 
	var csrfTokenValue="${_csrf.token}";
	
});
</script>

<script type="text/javascript">

$(document).ready(function() {
  
	var operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/board/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#bno").remove();
		operForm.attr("action","/board/list")
		operForm.submit();
    
	});
  

	
	
	/*
	(function(){
		  
	    var bno = '<c:out value="${board.bno}"/>';
	    
	  
	    $.getJSON("/board/getAttachList", {bno: bno}, function(arr){
	        
	       console.log(arr);
	       
	       var str = "";
	       
	       $(arr).each(function(i, attach){
	       
	         //image type
	         if(attach.fileType){
	           var fileCallPath =  encodeURIComponent( attach.uploadPath+ "/s_"+attach.uuid +"_"+attach.fileName);
	           
	           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
	           str += "<img src='/display?fileName="+fileCallPath+"'>";
	           str += "</div>";
	           str +"</li>";
	         }else{
	             
	           str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
	           str += "<span> "+ attach.fileName+"</span><br/>";
	           str += "<img src='/resources/img/attach.png'></a>";
	           str += "</div>";
	           str +"</li>";
	         }
	       });
	       
	       $(".uploadResult ul").html(str);
	       
	       
	     });//end getjson

	    
	  })();//end function
	*/
});
</script>