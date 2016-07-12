<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]--><!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]--><!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]--><!-- BEGIN HEAD --><head>	<meta charset="utf-8" />	<title>主页</title>	<meta content="width=device-width, initial-scale=1.0" name="viewport" />	<meta content="" name="description" />	<meta content="" name="author" />	<!-- BEGIN GLOBAL MANDATORY STYLES -->	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>	<!-- END GLOBAL MANDATORY STYLES -->	<!-- BEGIN PAGE LEVEL STYLES --> 	<link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>	<link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />	<link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>	<link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>	<link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>	<!-- END PAGE LEVEL STYLES -->	<link rel="shortcut icon" href="media/image/favicon.ico" /></head><!-- END HEAD --><!-- BEGIN BODY --><body class="page-header-fixed"><jsp:include page="include/header.jsp"></jsp:include>	<!-- BEGIN CONTAINER -->	<div class="page-container">		<jsp:include page="include/sidebar.jsp"></jsp:include>		<!-- BEGIN PAGE -->		<div class="page-content">			<!-- BEGIN PAGE CONTAINER-->			<div class="container-fluid">				<!-- BEGIN PAGE HEADER-->				<div class="row-fluid">					<div class="span12">    						<!-- BEGIN PAGE TITLE & BREADCRUMB-->												<h3 class="page-title">							主页 <small>学生课程中心页面</small>						</h3>											<ul class="breadcrumb">							<li>								<i class="icon-home"></i>								<a href="#">主页</a>							</li>						</ul>						<!-- END PAGE TITLE & BREADCRUMB-->					</div>				</div>				<!-- END PAGE HEADER-->				<!-- BEGIN PAGE CONTENT-->				<div class="row-fluid">					<div class="portlet box blue calendar">													<div class="portlet-title">															<div class="caption"><i class="icon-bell"></i>日程安排</div>														</div>						<div class="portlet-body light-grey">							<div class="row-fluid">								<div class="span3 responsive" data-tablet="span12 fix-margin" data-desktop="span8">									<!-- BEGIN DRAGGABLE EVENTS PORTLET-->    									<h3 class="event-form-title">可拖动事件</h3>									<div id="external-events">										<form class="inline-form">											<input type="text" value="" class="m-wrap span12" placeholder="事件标题..." id="event_title" /><br />											<a href="javascript:;" id="event_add" class="btn green">添加工作</a>										</form>										<hr />										<div id="event_box">										</div>										<label for="drop-remove">										<input type="checkbox" id="drop-remove" />放置后删除                         										</label>										<hr class="visible-phone" />									</div>									<!-- END DRAGGABLE EVENTS PORTLET-->            								</div>								<div class="span9">									<div id="calendar" class="has-toolbar"></div>								</div>							</div>							<!-- END CALENDAR PORTLET-->						</div>					</div>				</div>				<!-- END PAGE CONTENT-->			</div>			<!-- END PAGE CONTAINER--> 		</div>		<!-- END PAGE -->	</div>	<!-- END CONTAINER -->	<jsp:include page="include/footer.jsp"></jsp:include>	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->	<!-- BEGIN CORE PLUGINS -->	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>	<!--[if lt IE 9]>	<script src="media/js/excanvas.min.js"></script>	<script src="media/js/respond.min.js"></script>  	<![endif]-->   	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>	<!-- END CORE PLUGINS -->	<!-- BEGIN PAGE LEVEL PLUGINS -->	<script src="media/js/jquery.vmap.js" type="text/javascript"></script>   	<script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>	<script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>	<script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>	<script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>	<script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>	<script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  	<script src="media/js/jquery.flot.js" type="text/javascript"></script>	<script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>	<script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>	<script src="media/js/date.js" type="text/javascript"></script>	<script src="media/js/daterangepicker.js" type="text/javascript"></script>     	<script src="media/js/jquery.gritter.js" type="text/javascript"></script>	<script src="media/js/fullcalendar.min.js" type="text/javascript"></script>	<script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>	<script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>  	<!-- END PAGE LEVEL PLUGINS -->	<!-- BEGIN PAGE LEVEL SCRIPTS -->	<script src="media/js/app.js" type="text/javascript"></script>	<script src="media/js/index.js" type="text/javascript"></script>  		<script src="media/js/calendar.js"></script>         	<!-- END PAGE LEVEL SCRIPTS -->  	<script>		jQuery(document).ready(function() {    		   App.init(); // initlayout and core plugins		   Index.init();		   Index.initJQVMAP(); // init index page's custom scripts		   Index.initCalendar(); // init index page's custom scripts		   Index.initCharts(); // init index page's custom scripts		   Index.initChat();		   Index.initMiniCharts();		   Index.initDashboardDaterange();		   Calendar.init();		});	</script>	<!-- END JAVASCRIPTS --></body><!-- END BODY --></html>