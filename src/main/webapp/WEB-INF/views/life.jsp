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
    
    <link href="<c:url value='/resources/css/fileinput.css'/>" rel="stylesheet" media="all"/>

	<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link href="<c:url value='/resources/css/pe-icon-7-stroke.css'/>"  rel="stylesheet" />
	<link rel="shortcut icon" href="resources/icon/favicon.png">
	
	
	<style type="text/css">
		/* jssor slider bullet navigator skin 13 css */
        /*
        .jssorb13 div           (normal)
        .jssorb13 div:hover     (normal mouseover)
        .jssorb13 .av           (active)
        .jssorb13 .av:hover     (active mouseover)
        .jssorb13 .dn           (mousedown)
        */
        .jssorb13 {
            position: absolute;
        }
        .jssorb13 div, .jssorb13 div:hover, .jssorb13 .av {
            position: absolute;
            /* size of bullet elment */
            width: 21px;
            height: 21px;
            background: url('<c:url value="resources/img/b13.png"/>') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb13 div { background-position: -5px -5px; }
        .jssorb13 div:hover, .jssorb13 .av:hover { background-position: -35px -5px; }
        .jssorb13 .av { background-position: -65px -5px; }
        .jssorb13 .dn, .jssorb13 .dn:hover { background-position: -95px -5px; } 
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
                <li class="active">
                    <a href='<c:url value="/life"/>'>
                        <i class="pe-7s-science"></i>
                        <p>Life</p>
                    </a>
                </li>
                <li>
                    <a href='<c:url value="/portfolio"/>'>
                        <i class="pe-7s-note2"></i>
                        <p>Portfolio</p>
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
                    <a class="navbar-brand" href="<c:url value='life'/>">Life</a>
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
        <!-- <button type="button" class="btn btn-primary btn-fill" id="life-write">POST</button><br><br> -->
            <div class="container-fluid">
                
                    <div class="col-md-6">
                            <div class="card">
	                            <div class="header">
	                                <h4 class="title" style='text-align: center;'>KOSTA(education)</h4>
	                            </div>
                            	
								<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden; visibility: hidden;">
							        <!-- Loading Screen -->
							        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
							            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							            <div style="position:absolute;display:block;background:url('<c:url value="resources/img/loading.gif"/>') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
							        </div>
							        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden;">
							        	<div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/6.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/1.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/2.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/3.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/4.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/5.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/7.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/8.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/9.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/10.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/11.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/kosta/12.jpg"/>' />
							            </div>
							            <a data-u="add" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>
							        
							        </div>
							        <!-- Bullet Navigator -->
							        <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
							            <!-- bullet navigator item prototype -->
							            <div data-u="prototype" style="width:21px;height:21px;"></div>
							        </div>
							    </div>
							
							    <!-- #endregion Jssor Slider End -->
                            </div>
                         </div> 
                         
                         <div class="col-md-6">
                            <div class="card">
	                            <div class="header">
	                                <h4 class="title" style='text-align: center;'>Culture Life</h4>
	                            </div>
                            	
								<div id="jssor_2" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden; visibility: hidden;">
							        <!-- Loading Screen -->
							        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
							            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							            <div style="position:absolute;display:block;background:url('<c:url value="resources/img/loading.gif"/>') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
							        </div>
							        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden;">
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/1.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/22.jpg"/>' />
							            </div><div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/2.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/3.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/4.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/8.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/9.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/5.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/6.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/art/7.jpg"/>' />
							            </div>
							            <a data-u="add" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>
							        
							        </div>
							        <!-- Bullet Navigator -->
							        <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
							            <!-- bullet navigator item prototype -->
							            <div data-u="prototype" style="width:21px;height:21px;"></div>
							        </div>
							    </div>
							
							    <!-- #endregion Jssor Slider End -->
                            </div>
                         </div> 
                         
                         <div class="col-md-6">
                            <div class="card">
	                            <div class="header">
	                                <h4 class="title" style='text-align: center;'>Sports</h4>
	                            </div>
                            	
								<div id="jssor_3" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden; visibility: hidden;">
							        <!-- Loading Screen -->
							        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
							            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							            <div style="position:absolute;display:block;background:url('<c:url value="resources/img/loading.gif"/>') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
							        </div>
							        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden;">
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/sports/1.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/sports/2.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/sports/3.jpg"/>' />
							            </div>
							            <a data-u="add" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>
							        
							        </div>
							        <!-- Bullet Navigator -->
							        <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
							            <!-- bullet navigator item prototype -->
							            <div data-u="prototype" style="width:21px;height:21px;"></div>
							        </div>
							    </div>
							
							    <!-- #endregion Jssor Slider End -->
                            </div>
                         </div> 
                         
                         <div class="col-md-6">
                            <div class="card">
	                            <div class="header">
	                                <h4 class="title" style='text-align: center;'>Travel</h4>
	                            </div>
                            	
								<div id="jssor_4" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden; visibility: hidden;">
							        <!-- Loading Screen -->
							        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
							            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							            <div style="position:absolute;display:block;background:url('<c:url value="resources/img/loading.gif"/>') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
							        </div>
							        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden;">
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/1.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/2.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/3.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/4.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/5.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/6.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/7.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/8.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/9.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/10.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/11.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/12.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/13.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/travel/14.jpg"/>' />
							            </div>
							            
							            <a data-u="add" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>
							        
							        </div>
							        <!-- Bullet Navigator -->
							        <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
							            <!-- bullet navigator item prototype -->
							            <div data-u="prototype" style="width:21px;height:21px;"></div>
							        </div>
							    </div>
							
							    <!-- #endregion Jssor Slider End -->
                            </div>
                         </div> 
                         
                         <div class="col-md-6">
                            <div class="card">
	                            <div class="header">
	                                <h4 class="title" style='text-align: center;'>Friend</h4>
	                            </div>
                            	
								<div id="jssor_5" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden; visibility: hidden;">
							        <!-- Loading Screen -->
							        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
							            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							            <div style="position:absolute;display:block;background:url('<c:url value="resources/img/loading.gif"/>') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
							        </div>
							        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 500px; overflow: hidden;">
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/1.jpg"/>' />
							            </div>
										<div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/2.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/3.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/4.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/5.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/6.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/7.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/8.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/9.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/10.jpg"/>' />
							            </div>
							            <div style="display: none;">
							                <img data-u="image" src='<c:url value="/resources/img/life/friend/11.jpg"/>' />
							            </div>
							            
							            <a data-u="add" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>
							        
							        </div>
							        <!-- Bullet Navigator -->
							        <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
							            <!-- bullet navigator item prototype -->
							            <div data-u="prototype" style="width:21px;height:21px;"></div>
							        </div>
							    </div>
							
							    <!-- #endregion Jssor Slider End -->
                            </div>
                         </div> 
                         
            </div>
         </div>
        <footer class="footer">
                <p class="copyright pull-right">
                    &copy;<a href="mailto:viviennes7@naver.com">Kim Min-soo</a> Since 2016.07.25 
                </p>
            </div>
        </footer>
        
</div>
		<jsp:include page="personalInfo.jsp"/>
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
	
	<!-- slider -->
	<script type="text/javascript" src="<c:url value='/resources/js/jssor.slider-21.1.5.mini.js'/>"></script>
	
	<!-- 파일업로드 -->
	<script src="<c:url value='/resources/js/fileinput.js'/>"></script>
	
	<script src="<c:url value='/resources/js/script.js'/>"></script>

	<script type="text/javascript">
    	$(document).ready(function(){
    		
    		$("#life-write").on("click",function(){
  				$("#uploadModal").appendTo("body").modal("show");
  				return false;
   			});
    		
    		
    		
			/*모바일일경우*/
    		/* if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    			 // some code..
    			 alert("모바일입니다.");
   			} */

    		
    		/*POST클릭*/
    		/* $("#life-write").on("click",function(){
    			$.ajax({
    				url:"lifePost",
    				type:"post",
    				success:function(sq){
    					console.log(sq);
    				},
    				error:function(){
    					console.log("POST 실패");
    				}
    			})
    		})
    		
    		$("#life-upload").fileinput({
    		    uploadUrl: "imageUpload",
    		    allowedFileExtensions: ["jpg", "png", "gif"],
    		    minImageWidth: 50,
    		    minImageHeight: 50,
    		    uploadExtraData:{value : "오잉?"},
    		    uploadAsync:false,
    		    fileActionSettings:{"showUpload":false,"showZoom":false}
    		}); */
    		
    		/*업로드 클릭*/
    		/* $('#life-upload').on('filepreajax',function(event, previewId, index){
    			$("#life-upload").fileinput({
        		    uploadUrl: "imageUploadaaa" })
    		});  */
    		
    		var jssor = function(name){
	    		var jssor_1_SlideshowTransitions = [
                            {$Duration:1200,$Zoom:11,$Rotate:-1,$Easing:{$Zoom:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Round:{$Rotate:0.5},$Brother:{$Duration:1200,$Zoom:1,$Rotate:1,$Easing:$Jease$.$Swing,$Opacity:2,$Round:{$Rotate:0.5},$Shift:90}},
                            {$Duration:1400,x:0.25,$Zoom:1.5,$Easing:{$Left:$Jease$.$InWave,$Zoom:$Jease$.$InSine},$Opacity:2,$ZIndex:-10,$Brother:{$Duration:1400,x:-0.25,$Zoom:1.5,$Easing:{$Left:$Jease$.$InWave,$Zoom:$Jease$.$InSine},$Opacity:2,$ZIndex:-10}},
                            {$Duration:1200,$Zoom:11,$Rotate:1,$Easing:{$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Round:{$Rotate:1},$ZIndex:-10,$Brother:{$Duration:1200,$Zoom:11,$Rotate:-1,$Easing:{$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Round:{$Rotate:1},$ZIndex:-10,$Shift:600}},
                            {$Duration:1500,x:0.5,$Cols:2,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InOutCubic},$Opacity:2,$Brother:{$Duration:1500,$Opacity:2}},
                            {$Duration:1500,x:-0.3,y:0.5,$Zoom:1,$Rotate:0.1,$During:{$Left:[0.6,0.4],$Top:[0.6,0.4],$Rotate:[0.6,0.4],$Zoom:[0.6,0.4]},$Easing:{$Left:$Jease$.$InQuad,$Top:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Brother:{$Duration:1000,$Zoom:11,$Rotate:-0.5,$Easing:{$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Shift:200}},
                            {$Duration:1500,$Zoom:11,$Rotate:0.5,$During:{$Left:[0.4,0.6],$Top:[0.4,0.6],$Rotate:[0.4,0.6],$Zoom:[0.4,0.6]},$Easing:{$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Brother:{$Duration:1000,$Zoom:1,$Rotate:-0.5,$Easing:{$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Shift:200}},
                            {$Duration:1500,x:0.3,$During:{$Left:[0.6,0.4]},$Easing:{$Left:$Jease$.$InQuad,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true,$Brother:{$Duration:1000,x:-0.3,$Easing:{$Left:$Jease$.$InQuad,$Opacity:$Jease$.$Linear},$Opacity:2}},
                            {$Duration:1200,x:0.25,y:0.5,$Rotate:-0.1,$Easing:{$Left:$Jease$.$InQuad,$Top:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Brother:{$Duration:1200,x:-0.1,y:-0.7,$Rotate:0.1,$Easing:{$Left:$Jease$.$InQuad,$Top:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2}},
                            {$Duration:1600,x:1,$Rows:2,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1600,x:-1,$Rows:2,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
                            {$Duration:1600,x:1,$Rows:2,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1600,x:-1,$Rows:2,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
                            {$Duration:1600,y:-1,$Cols:2,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1600,y:1,$Cols:2,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
                            {$Duration:1200,y:1,$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1200,y:-1,$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
                            {$Duration:1200,x:1,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1200,x:-1,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
               	            {$Duration:1200,y:-1,$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Brother:{$Duration:1200,y:-1,$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Shift:-100}},
                            {$Duration:1200,x:1,$Delay:40,$Cols:6,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Brother:{$Duration:1200,x:1,$Delay:40,$Cols:6,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Shift:-100}},
                            {$Duration:1500,x:-0.1,y:-0.7,$Rotate:0.1,$During:{$Left:[0.6,0.4],$Top:[0.6,0.4],$Rotate:[0.6,0.4]},$Easing:{$Left:$Jease$.$InQuad,$Top:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2,$Brother:{$Duration:1000,x:0.2,y:0.5,$Rotate:-0.1,$Easing:{$Left:$Jease$.$InQuad,$Top:$Jease$.$InQuad,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuad},$Opacity:2}},
                            {$Duration:1600,x:-0.2,$Delay:40,$Cols:12,$During:{$Left:[0.4,0.6]},$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Assembly:260,$Easing:{$Left:$Jease$.$InOutExpo,$Opacity:$Jease$.$InOutQuad},$Opacity:2,$Outside:true,$Round:{$Top:0.5},$Brother:{$Duration:1000,x:0.2,$Delay:40,$Cols:12,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Assembly:1028,$Easing:{$Left:$Jease$.$InOutExpo,$Opacity:$Jease$.$InOutQuad},$Opacity:2,$Round:{$Top:0.5}}}
                          ];
                          
                          var jssor_1_options = {
                            $AutoPlay: true,
                            $FillMode: 5,
                            $SlideshowOptions: {
                              $Class: $JssorSlideshowRunner$,
                              $Transitions: jssor_1_SlideshowTransitions,
                              $TransitionsOrder: 1
                            },
                            $BulletNavigatorOptions: {
                              $Class: $JssorBulletNavigator$
                            }
                          };
                          
                          var jssor_1_slider = new $JssorSlider$(name, jssor_1_options);
                          
                          //responsive code begin
                          //you can remove responsive code if you don't want the slider scales while window resizing
                          function ScaleSlider() {
                              var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                              if (refSize) {
                                  refSize = Math.min(refSize, 600);
                                  jssor_1_slider.$ScaleWidth(refSize);
                              }
                              else {
                                  window.setTimeout(ScaleSlider, 30);
                              }
                          }
                          ScaleSlider();
                          $(window).bind("load", ScaleSlider);
                          $(window).bind("resize", ScaleSlider);
                          $(window).bind("orientationchange", ScaleSlider);
                          //responsive code end
    		}
    		
    		jssor(jssor_1);
    		jssor(jssor_2);
    		jssor(jssor_3);
    		jssor(jssor_4);
    		jssor(jssor_5);
    		
    		
    		$.notify({
				// options
				icon: 'glyphicon glyphicon-bell',
				message: '이미지를 드래그하여 넘길 수 있습니다.' 
			},{
				// settings
				type: 'info',
				placement: {
					from: "top",
					align: "right"
				},
				timer: 5000
			});
    		
    	});
	</script>

</html>
