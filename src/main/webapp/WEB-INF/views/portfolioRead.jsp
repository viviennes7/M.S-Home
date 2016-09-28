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
    <link href="<c:url value='/resources/css/pe-icon-7-stroke.css'/>"  rel="stylesheet" />
	<link rel="shortcut icon" href="resources/icon/favicon.ico">
	
	<style type="text/css">
		#ms-board-search{margin-top:10px;}
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
                        <p>Portfolio</p>
                        <c:if test="${sessionScope.player==2}">
                        	<span class="caret" style="float:right"></span>
                        </c:if>
                    </a>
                </li>
				
				<c:if test="${sessionScope.player==2}">
	                <li id="portfolio-write">
	                    <a href='<c:url value="/portfolioWrite"/>'>
	                        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPost</p>
	                    </a>
	                </li>
                </c:if>
                
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
                        	<a href='<c:url value="https://www.facebook.com/minsu.kim.54584"/>' target="_blank">
                               <i class="fa fa-facebook-square" aria-hidden="true"></i>
                            </a>
                        </li>
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
       	 <div style="background-color: white; padding: 15px; border-radius: 8px">
            <div class="container-fluid">
		         ${portfolio.content}
            </div>
          </div>
          
          <br><br>
          <a target= "_blank" href="<c:url value='/resources/portFolioFile/${portfolio.file }'/>">${portfolio.originFile }</a>
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
	
	<script src="<c:url value='/resources/js/script.js'/>"></script>

	<script type="text/javascript">
    	$(document).ready(function(){
    		/* $("#portfolio-write").on("click",function(){
  				$("#portfolio-modal").appendTo("body").modal("show");
  				return false;
   			}); */
    	});
	</script>

</html>
