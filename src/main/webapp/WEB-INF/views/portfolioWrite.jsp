<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko-kr">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="resource/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>M.S Home</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css'/>">
	
    <!-- Animation library for notifications   -->
    <link href="<c:url value='/resources/css/animate.min.css'/>" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="<c:url value='/resources/css/light-bootstrap-dashboard.css'/>" rel="stylesheet"/>

	<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet"/>
	
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link href="<c:url value='/resources/css/pe-icon-7-stroke.css'/>"  rel="stylesheet" />
	<link rel="shortcut icon" href="resources/icon/favicon.ico">
	
	<!-- Froala -->
	<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css' rel="stylesheet"/>
	<link href='<c:url value="/resources/css/froala/froala_editor.css"/>' rel="stylesheet"/>
	<link href='<c:url value="/resources/css/froala/froala_style.css"/>' rel="stylesheet"/>
	<link href='<c:url value="/resources/css/froala/code_view.css"/>' rel="stylesheet"/>
	<link href='<c:url value="/resources/css/froala/image.css"/>' rel="stylesheet"/>
	<link href='<c:url value="/resources/css/froala/image_manager.css"/>' rel="stylesheet"/>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css' rel="stylesheet"/>	
	
	<style type="text/css">
	</style>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="<c:url value='/resources/img/sidebar-5.jpg'/>">

    <!--
        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag
    -->
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href='<c:url value="/main"/>' class="simple-text">
                    M.S Home
                </a>
            </div>

            <ul class="nav" id="ms-nav">
                <li>
                    <a href='<c:url value="/main"/>'>
                        <i class="pe-7s-user"></i>
                        <p>Profile</p>
                    </a>
                </li>
                <li>
                    <a href='<c:url value="/life"/>'>
                        <i class="pe-7s-science"></i>
                        <p>Life</p>
                    </a>
                </li>
                <li class="active">
                    <a href='<c:url value="/portfolio"/>'>
                        <i class="pe-7s-note2"></i>
                        <p>Portfolio</p><span class="caret" style="float:right"></span>
                    </a>
                </li>
                
                <li id="portfolio-write" class="active">
                    <a href='<c:url value="/portfolioWrite"/>'>
                        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPost</p>
                    </a>
                </li>
                
                <li>
                    <a href='<c:url value="/visitor"/>'>
                        <i class="pe-7s-users"></i>
                        <p>Visitor</p>
                    </a>
                </li>
                <%-- <li>
                    <a href='<c:url value="/maps"/>'>
                        <i class="pe-7s-map-marker"></i>
                        <p>Maps</p>
                    </a>
                </li> --%>
                <li>
                    <a href='<c:url value="/setting"/>'>
                        <i class="pe-7s-settings"></i>
                        <p>Setting</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
            	<div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href='<c:url value="/portfolio"/>'>Portfolio</a>
                </div>
                <div class="collapse navbar-collapse">
                	<ul class="nav navbar-nav navbar-right">
                		<!-- <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret"></b>
                                    <span class="notification">4</span>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">test 1</a></li>
                                <li><a href="#">test 2</a></li>
                                <li><a href="#">test 3</a></li>
                                <li><a href="#">test 4</a></li>
                              </ul>
                        </li> -->
                        <li>
                            <a href="#" id="personal-info">
                               <i class="fa fa-info-circle" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href='<c:url value="logout"/>'>
                                <i class="fa fa-sign-out" aria-hidden="true"></i>
                            </a>
                        </li>
                	</ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
	    			<div class="col-md-12">
	    				<div style="background-color: white; padding: 15px; border-radius: 8px">
	    					<div class="container-fluid">
	    					  
	    					  <form action="portfolioSave" enctype="multipart/form-data" method="post">
	    						<div class="row">
	    							<div class="col-md-12">
	               						<label>제목</label>
										<input type="text" class="form-control" name="subject" placeholder="제목"><br>
									</div>
								</div>
								
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>소제목1</label>
	               					</div>
               					</div>
								<div class="row">
	               					<div class="col-md-12">
										<input type="text" class="form-control" name="strapline1" placeholder="ex)팀명 : 대한민국">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>소제목2</label>
	               					</div>
               					</div>
								<div class="row">
	               					<div class="col-md-12">
										<input type="text" class="form-control" name="strapline2" placeholder="ex)팀원 : 홍길동">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>소제목3</label>
	               					</div>
               					</div>
								<div class="row">
	               					<div class="col-md-12">
										<input type="text" class="form-control" name="strapline3" placeholder="ex)프로젝트명 : 고조선">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>소제목4</label>
	               					</div>
               					</div>
								<div class="row">
	               					<div class="col-md-12">
										<input type="text" class="form-control" name="strapline4" placeholder="ex)프로젝트기간 : 2016.01.01~2017.01.01">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>소제목5</label>
	               					</div>
               					</div>
								<div class="row">
	               					<div class="col-md-12">
										<input type="text" class="form-control" name="strapline5" placeholder="ex)프로젝트소개 : API에 손쉽게 접근 가능">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>내용</label>
	               					</div>
               					</div>
               					
								<div class="row">
									<div class="col-md-12">
   										 <textarea id='edit' name="content"></textarea>
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>배경사진</label>
	               					</div>
               					</div>
								<div class="row">
									<div class="col-md-12">
										<input type="file" id="write-img" name="img" class="filestyle" data-iconName="glyphicon glyphicon-inbox">
									</div>
								</div><br>
								
								<div class="row">
	               					<div class="col-md-12">
	               						<label>자료</label>
	               					</div>
               					</div>
								<div class="row">
									<div class="col-md-12">
										<input type="file"  name="file" class="filestyle" data-iconName="glyphicon glyphicon-inbox">
									</div>
								</div><br><br>
								<div class="row" style="text-align: center">
									 <input type="submit" class="btn btn-default btn-fill" data-dismiss="modal" id="write-save" value="Save">
								</div>
					     	  </form>
							</div>
	    				</div>
	    			</div>
    			</div>
            </div>
        </div>


        <footer class="footer">
            
                <p class="copyright pull-right">
                    &copy;<a href="mailto:viviennes7@naver.com">Kim Min-soo</a> Since 2016.09.07 
                </p>
            </div>
        </footer>
		
		<jsp:include page="personalInfo.jsp"/>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"></script>
	<script src="<c:url value='/resources/js/bootstrap.js'/>"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="<c:url value='/resources/js/bootstrap-checkbox-radio-switch.js'/>" ></script>

    <!--  Notifications Plugin    -->
    <script src="<c:url value='/resources/js/bootstrap-notify.js'/>" ></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="<c:url value='/resources/js/light-bootstrap-dashboard.js'/>"></script>
	
	<!-- 파일올리는 버튼-->
	<script src="<c:url value='/resources/js/bootstrap-filestyle.js'/>"></script>
	
	<!-- froala -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
	<script src="<c:url value='/resources/js/froala/froala_editor.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/code_beautifier.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/code_view.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/draggable.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/font_size.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/font_family.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/paragraph_style.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/lists.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/image.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/link.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/video.min.js'/>"></script>
	<script src="<c:url value='/resources/js/froala/image_manager.min.js'/>"></script>
	
	
	
	<script src="<c:url value='/resources/js/script.js'/>"></script>




	<script type="text/javascript">
    	$(document).ready(function(){
    		$('#edit').froalaEditor();
    		$(":file").filestyle({iconName: "glyphicon-inbox"});
    		
    		$("#write-save").on("click",function(){
    			if($("#write-img").val()==""){
    				alert("배경사진을 업로드 하여 주십시오.");
    				return false;
    			}
    		})
    	});
	</script>

</html>
