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
                <li>
                    <a href='<c:url value="/portfolio"/>'>
                        <i class="pe-7s-note2"></i>
                        <p>Portfolio</p>
                    </a>
                </li>
                <li class="active">
                    <a href='<c:url value="/visitor"/>'>
                        <i class="pe-7s-users"></i>
                        <p >Visitor</p>
                        <!-- <div class="dropup"> -->
                       	<span class="caret" style="float:right"></span>
                       	<!-- </div> -->
                    </a>
                </li>
                
                <li id="visitor-write" >
                    <a href='#'>
                        <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPost</p>
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

    <div class="main-panel" id="visitor-scroll-page">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
            	<div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href='<c:url value="/visitor"/>'>Visitor</a>
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
                   	 	<!-- <li>
	                			<input type="text" class="form-control" placeholder="search" id="ms-board-search">
	                		</li>
	                		<li>
	                           <a href="">
	                                <i class="fa fa-search"></i>
	                            </a>
	                        </li> -->
                	</ul>
                 	   
                </div>
            </div>
        </nav>


        <div class="content" >
        	<!-- <button type="button" class="btn btn-primary btn-fill" id="visitor-write" >POST</button><br><br> -->
            <div class="container-fluid" id="visitor-container">
            <!-- <div class="row"> -->
	            <%-- <c:forEach items="${visitors}" var="visitor" varStatus="index"> 
	            	<div class="col-md-3">
							<div class="card card-user">
	                            <div class="image">
	                                <img src='<c:url value="/resources/settingImg/${visitor.playerDTO.bgUrl }"/>'/>
	                            </div>
	                            <div class="content">
	                                <div class="author">
	                                    <img class="avatar border-gray" src='<c:url value="/resources/settingImg/${visitor.playerDTO.url }"/>'/>
	
	                                      <h4 class="title">${visitor.playerDTO.name}<br />
	                                         <small>${visitor.subject}</small>
	                                      </h4>
	                                </div>
	                                <p class="description text-center" > ${visitor.content }
	                                </p>
	                            </div>
	                            <hr>
	                            
	                            <c:if test="${sessionScope.player==2 }">
		                            <div class="text-right">
		                            	<button type="button" class="close" id='visitordel-${visitor.visitorSq}'>&times;</button>
		                            </div>
	                            </c:if>
	                            
	                            <div class="text-left">
									${visitor.time }
	                            </div>
	                        </div>                	
	                	</div>
	            </c:forEach> --%>
	          <!--  </div> -->
            </div>
        </div>
        <footer class="footer">
            
                <p class="copyright pull-right">
                    &copy;<a href="mailto:viviennes7@naver.com">Kim Min-soo</a> Since 2016.07.25 
                </p>
            </div>
        </footer>
		<!-- Modal -->
		<div id="visitor-modal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Record</h4>
		      </div>
		      <div class="modal-body">
		      	<form id="visitor-modal-form">
                  <input type="text" id="visitor-subject" name="subject" class="form-control" placeholder="제목"><br>
                  <textarea rows="5" name="content" class="form-control" placeholder="방명록"></textarea>
                </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-success btn-fill" data-dismiss="modal" id="visitor-save">Save</button>
		        <button type="button" class="btn btn-danger btn-fill" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		    
		  </div>
		</div>
		
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
    		
    		var playerSq= "${sessionScope.player}"; 
    		console.log("SQ : " + playerSq)
    		
    		/*모달띄우기*/
    		$(document).on("click","#visitor-write",function(){ 
  				$("#visitor-modal").appendTo("body").modal("show");
  				return false;
    		});
    		
    		
    		/*방명록쓰기*/
    		$("#visitor-save").on("click",function(){
    			$.ajax({
    				url:"visitorInsert",
    				type:"post",
    				dataType:"json",
    				data:$("#visitor-modal-form").serialize(),
    				success:function(data){
    					console.log(data);
    					str="";
    					str+="<div class='col-md-3'>";
						str+="<div class='card card-user'>";
						str+="<div class='image'>";
						str+="<img src='resources/settingImg/"+data.playerDTO.bgUrl+"'/>";
						str+="</div>";
						str+="<div class='content'>";
						str+="<div class='author'>";
						str+="<img class='avatar border-gray' src='resources/settingImg/"+data.playerDTO.url+"'/>";
						str+="<h4 class='title'>"+data.playerDTO.name+"<br/>";
						str+="<small>"+data.subject+"</small></h4></div>";
						str+="<p class='description text-center'>"+data.content+"</p></div>";
						str+="<hr><div class='text-right'><button type='button' class='close visitor-delete' id='visitordel-"+data.visitorSq+"'>&times;</button></div><div class='text-left'>"+ data.time +"</div></div></div>";
						$("#visitor-container").prepend(str);
    				},
    				error:function(){
    					console.log("방명록쓰기 오류");
    				}
    			})
    		})
    		
    		//현재 페이지
    		var pageLoaded = 0; 
    		
    		/*스크롤 페이징*/
    		$("#visitor-scroll-page").scroll(function() {
		    	if($(this).scrollTop() + $(this).innerHeight() +1 >= $(this)[0].scrollHeight) {
		    		visitorScroll();
    		    } 
    		});
    		
    		/*스크롤페이징*/
    		var visitorScroll = function(){
    			pageLoaded++
				$.ajax({
					url:"visitorSelect",
					type:"post",
					dataType:"json",
					data:"page="+pageLoaded,
					success:function(data){
						console.log(data);
						if(data.length==0){ 
							pageLoaded--
							return;
						}
						/* var str="<div class='row'>"; */
						var str="";
						$.each(data,function(index,item){
							str+="<div class='col-md-3'>";
							str+="<div class='card card-user'>";
							str+="<div class='image'>";
							str+="<img src='resources/settingImg/"+item.playerDTO.bgUrl+"'/>";
							str+="</div>";
							str+="<div class='content'>";
							str+="<div class='author'>";
							str+="<img class='avatar border-gray' src='resources/settingImg/"+item.playerDTO.url+"'/>";
							str+="<h4 class='title'>"+item.playerDTO.name+"<br/>";
							str+="<small>"+item.subject+"</small></h4></div>";
							str+="<p class='description text-center'>"+item.content+"</p></div><hr>";
							if(playerSq==item.playerDTO.playSq){							
								str+="<div class='text-right'><button type='button' class='close visitor-delete' value='"+item.visitorSq+"'>&times;</button></div>";
							}
							str+="<div class='text-left'>"+item.time +"</div></div></div>";
							
							/* str+="<hr><div class='text-right'><button type='button' class='close' id='visitordel-"+item.visitorSq+"'>&times;</button></div><div class='text-left'>"+item.time +"</div></div></div>"; */
							
						})
						/* str+="</div>"; */
						$("#visitor-container").append(str);
					},
					error:function(){
						console.log("스크롤 페이징 오류");
					}
				})    		
    		}
    		visitorScroll();
    		setTimeout(function() {
    			visitorScroll();
    		},20)
    		
    		
    		
    		/*방명록 삭제*/
    		$(document).on("click",".visitor-delete",function(){
    			
    			$.ajax({
    				url:"visitorDel",
    				type:"post",
					data:"visitorSq="+$(this).attr("value"),
					success:function(data){
						console.log($(this));
					},
					error:function(){
						console.log("방명록삭제 오류")
					}
    			})
    		})
    	})
 	</script>
    		
</html>
