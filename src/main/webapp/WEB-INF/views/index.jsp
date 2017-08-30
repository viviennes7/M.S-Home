<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko-kr">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	 <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" type="text/css">
    <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css"> 
    <link rel="stylesheet" href="<c:url value='/resources/css/font-awesome.css'/>" type="text/css"> 
	<link rel="stylesheet" href="<c:url value='/resources/css/form-elements.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/css/loginstyle.css'/>" type="text/css">
	
	    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	
	<!-- Favicon and touch icons -->
	<link rel="shortcut icon" href="resources/icon/favicon.ico">
	
	<style>
		#index-login{margin-bottom: 10px; background-color: #986DDA;}
		form .btn:last-child{background-color: #59407E;}
		body {overflow-y:hidden}
	</style>
</head>

<body>
    <!-- Top content -->
    <div class="top-content">
    	
        <div class="inner-bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1><strong>Welcome To M.S Home</strong></h1>
                        <!-- <div class="description">
                        	<p>
                         	This is a free responsive login form made with Bootstrap. 
                         	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                        	</p>
                        </div> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                    	<div class="form-top">
                    		<div class="form-top-left">
                    			<h3>Login</h3>
                        		<p>Enter your username and password to log on:</p>
                    		</div>
                    		<div class="form-top-right">
                    			<i class="fa fa-lock"></i>
                    		</div>
                        </div>
                        <div class="form-bottom">
                   <form role="form" action='<c:url value="/main"/>' method="post" class="login-form">
                   	<div class="form-group">
                   		<label class="sr-only" for="form-username">Username</label>
                       	<input type="text" name="username" placeholder="Username" class="form-username form-control" id="form-username">
                       </div>
                       <div class="form-group">
                       	<label class="sr-only" for="form-password">Password</label>
                       	<input type="password" name="userpass" placeholder="Password" class="form-password form-control" id="form-password">
                       </div>
                       <button type="button" class="btn" id="index-login">Sign in!</button>
                       <button type="button" class="btn" data-target="#join-modal" data-toggle="modal">Sign up!</button>
                   </form>
                  </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 social-login">
                    	<!-- <div class="social-login-buttons">
                     	<a class="btn btn-link-2" href="https://www.facebook.com/minsu.kim.54584" target="_blank">
                     		<i class="fa fa-facebook"></i> Facebook
                     	</a> -->
                     	<!-- <a class="btn btn-link-2" href="#">
                     		<i class="fa fa-twitter"></i> Twitter
                     	</a>
                     	<a class="btn btn-link-2" href="#">
                     		<i class="fa fa-google-plus"></i> Google Plus
                     	</a> -->
                    	</div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
	<!-- 모달 -->
	<div class="modal fade" id="join-modal" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <!-- header -->
	      <div class="modal-header">
	        <!-- 닫기(x) 버튼 -->
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <!-- header title -->
	        <h2 class="modal-title"><b>Sign up!</b></h2>
	      </div>
	      <!-- body -->
	      <div class="modal-body">
	            <form class="form-horizontal">
				  <div class="form-group">
				    <label for="join-name" class="col-sm-2 control-label">Name</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="join-name">
				    </div>
				  </div>				  
				  <div class="form-group">
				    <label for="join-email" class="col-sm-2 control-label">Email</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="join-email">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="join-pass" class="col-sm-2 control-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="join-pass">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="join-confirm" class="col-sm-2 control-label">Confirm</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="join-confirm">
				    </div>
				  </div>
				  <!-- <div class="form-group">
				      <label for="join-birthdate" class="col-sm-2 control-label">BirthDate</label>
				      <div class="col-sm-10">
				      	<input type="date" class="form-control" id="join-birthdate">
				      </div>
				    </div> -->
				  
				</form>
	      </div>
	      <!-- Footer -->
	      <div class="modal-footer">
			<button type="button" class="btn btn-success" id="join-btn">Join</button>
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

</body>

<!-- Javascript -->
<script src="resources/js/jquery-2.2.4.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/jquery.backstretch.js"></script>
<script src="resources/js/loginscripts.js"></script>
<script src="<c:url value='/resources/js/bootstrap-notify.js'/>" ></script>

<!--[if lt IE 10]>	
    <script src="assets/js/placeholder.js"></script>
<![endif]-->
<script type="text/javascript">
	$(function(){
		
		/*익스플로러버전 확인*/
		function msieversion(){
	      var ua = window.navigator.userAgent;
	      var msie = ua.indexOf ( "MSIE " );
		
	      if ( msie > 0 )      // If Internet Explorer, return version number
	         return parseInt (ua.substring (msie+5, ua.indexOf (".", msie )));
	      else                 // If another browser, return 0
	         return 0;
	
	   }
		
		/*회원가입*/
		$("#join-btn").on("click",function(){
			var email = $("#join-email").val();
			
			if($("#join-name").val()==""){
				alert("이름을 입력해 주십시오.");
				return;
			}
			if(email.indexOf("@")===-1 && email.indexOf(".")===-1){
				alert("이메일 형식을 확인해 주십시오.");
				return;
			}
			if($("#join-pass")==""){
				alert("비밀번호를 입력해 주십시오.");
				return;
			}
			if($("#join-confirm").val()==""){
				alert("확인비밀번호를 입력해 주십시오.");
				return;
			}
			/* if($("#join-birthdate").val()==""){
				alert("생년월일을 입력해 주십시오.");
				return
			} */
			if($("#join-pass").val()!=$("#join-confirm").val()){
				alert("비밀번호가 일치하지 않습니다.");
			}
			
			$.ajax({
				url:"idCheck",
				type:"post",
				dataType:"text",
				data:{"loginId":$("#join-email").val()},
				success:function(result){
					console.log("결과 :  " +result);
					if(result=="success"){
						join();
					}else{
						alert("이미 사용중인 이메일입니다.");
					}
				},
			})
		})
		
		var join = function(){
			$.ajax({
				url:"join",
				type:"post",
				dataType:"text",
				data:{"name" : $("#join-name").val(), "id" : $("#join-email").val(),"password" : $("#join-pass").val()},
				success:function(result){
					$("#join-modal").modal("hide");
					$("#form-username").val( $("#join-email").val() );
					$("#form-password").val( $("#join-pass").val() );
					$(".form-horizontal input").val("");
				},
				error:function(err){
					console.log("회원가입 에러");
				}
			})
		}
		
		/*로그인*/
		$("#index-login").on("click", function(){
			login();
		});
		
		/* $("#form-username").val("TestEmail@naver.com");
		$("#form-password").val("123123"); */
		
		$("#form-password").keyup(function(e) {
		    if (e.keyCode == 13){
		    	login();
		    }
		});
		
		$("#form-username").keyup(function(e) {
		    if (e.keyCode == 13){
		    	login();
		    }
		});
		
		var login = function(I){
			$.ajax({
				url:"login",
				type:"post",
				dataType:"text",
				data:{"username":$("#form-username").val(), "userpass":$("#form-password").val()},
				success:function(data){
				 	if(data==="success"){
					    location.href="main";
					}else{
						alert("ID와 PASS를 확인해 주십시오.");						
					}
				},
				error:function(){
					console.log("로그인 에러");
				}
			});
		}
		
	});
</script>
</html>