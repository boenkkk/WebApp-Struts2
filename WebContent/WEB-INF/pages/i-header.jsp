<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ page contentType = "text/html; charset = UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" href="${pageContext.request.contextPath}/assets/admin/images/favicon.ico" type="image/ico" />
		<title>WebApp</title>
		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
		
		<!-- bootstrap-progressbar -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
		<!-- JQVMap -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
		<!-- bootstrap-daterangepicker -->
		<link href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
		<!-- Custom Theme Style -->
		<link href="${pageContext.request.contextPath}/assets/admin/build/css/custom.min.css" rel="stylesheet">
	</head>

	<body class="nav-md">
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/nprogress/nprogress.js"></script>
		<!-- Chart.js -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Chart.js/dist/Chart.min.js"></script>
		<!-- gauge.js -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/gauge.js/dist/gauge.min.js"></script>
		<!-- bootstrap-progressbar -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- iCheck -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/iCheck/icheck.min.js"></script>
		<!-- Skycons -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/skycons/skycons.js"></script>
		<!-- Flot -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.pie.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.time.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.stack.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.resize.js"></script>
		<!-- Flot plugins -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/flot.curvedlines/curvedLines.js"></script>
		<!-- DateJS -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/DateJS/build/date.js"></script>
		<!-- JQVMap -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
		<!-- <script src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script> -->
		<!-- bootstrap-daterangepicker -->
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/moment/min/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
		
		<div class="container body">
			<div class="main_container">
				
				<div class="col-md-3 left_col">
					<div class="left_col scroll-view">
						<div class="navbar nav_title" style="border: 0;">
							<a href="${pageContext.request.contextPath}/dashboard" class="site_title"><i class="fa fa-paw"></i> <span>WebApp</span></a>
						</div>
						<div class="clearfix"></div>
						<!-- menu profile quick info -->
						<div class="profile clearfix">
							<div class="profile_pic">
								<img src="${pageContext.request.contextPath}/assets/admin/images/user.png" alt="..." class="img-circle profile_img">
							</div>
							<div class="profile_info">
								<span>Welcome,</span>
								<h2><s:property value="#session.nama"/></h2>
							</div>
						</div>
						<!-- /menu profile quick info -->
						<br />
						
						<%@include file ="i-menu.jsp" %>
						
					</div>
		        </div>
			        
		        <!-- top navigation -->
		        <div class="top_nav">
		          <div class="nav_menu">
		            <nav>
		              <div class="nav toggle">
		                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
		              </div>
		
		              <ul class="nav navbar-nav navbar-right">
		              	<li class="">
		                  <a href='<s:url namespace="/" action="logout"/>' class="info-number" aria-expanded="false">
		                    <i class="fa fa-sign-out"></i>
		                    <span>Log Out</span>
		                  </a>
		                </li>
		                <li role="presentation" class="dropdown">
		                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
		                    <i class="fa fa-bell-o"></i>
		                    <span class="badge bg-green">6</span>
		                  </a>
		                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
		                    <li>
		                      <a>
		                        <span class="image"><img src="${pageContext.request.contextPath}/assets/admin/images/img.jpg" alt="Profile Image" /></span>
		                        <span>
		                          <span><s:property value="#session.nama"/></span>
		                          <span class="time">3 mins ago</span>
		                        </span>
		                        <span class="message">
		                          Film festivals used to be do-or-die moments for movie makers. They were where...
		                        </span>
		                      </a>
		                    </li>
		                    <li>
		                      <div class="col-md-12">
		                   	  	<div class="text-center">
		                        	<a>
		                          		<strong>See All Alerts</strong><i class="fa fa-angle-right"></i>
		                       		</a>
		                      	</div>
		                      </div>
		                    </li>
		                  </ul>
		                </li>
		              </ul>
		            </nav>
		          </div>
		        </div>
		        <!-- /top navigation -->
		        
		        <script>
		        	$(function () {
		        		init_sidebar();
		        	})
	        	</script>