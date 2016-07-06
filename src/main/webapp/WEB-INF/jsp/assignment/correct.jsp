<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>作业管理</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style-responsive.css" rel="stylesheet" type="text/css" />

	<link href="/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="/media/css/invoice.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/print.css" rel="stylesheet" type="text/css" media="print"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="/media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->

<div class="header navbar navbar-inverse navbar-fixed-top">

	<!-- BEGIN TOP NAVIGATION BAR -->

	<div class="navbar-inner">

		<div class="container-fluid">

			<!-- BEGIN  -->

			<a class="brand" href="#">

				<img src="/media/image/logo.png" alt="logo"/>

			</a>

			<!-- END LOGO -->

			<!-- BEGIN RESPONSIVE MENU TOGGLER -->

			<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="/media/image/menu-toggler.png" alt="" />

			</a>

			<!-- END RESPONSIVE MENU TOGGLER -->

			<!-- BEGIN TOP NAVIGATION MENU -->

			<ul class="nav pull-right">

				<!-- BEGIN USER LOGIN DROPDOWN -->

				<li class="dropdown user">

					<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<span class="username">${sessionScope.user.name}</span>

						<i class="icon-angle-down"></i>

					</a>

					<ul class="dropdown-menu">

						<li><a href="/logout"><i class="icon-key"></i>退出</a></li>

					</ul>

				</li>

				<!-- END USER LOGIN DROPDOWN -->

			</ul>

			<!-- END TOP NAVIGATION MENU -->

		</div>

	</div>

	<!--END OF NAVIGATION BAR -->

</div>

<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->   

	<div class="page-container row-fluid">

		<jsp:include page="../include/sidebar.jsp"></jsp:include>


		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid hidden-print">

					<div class="span12">

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							作业批改 <small>请为这名学生的作业进行打分与评价</small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="teacher_homepage.html">主页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="teacher_homework.html">作业管理</a>

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="teacher_homework_check.html">作业列表</a>

								<i class="icon-angle-right"></i>

							</li>

							<li>
							
								<a href="teacher_homework_checking.html">作业批改</a>
								
							</li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid invoice">

					<div class="row-fluid">

								<div class="span3">

									<h4>课程：</h4>

									<ul class="unstyled">

										<h1>${course.name}<h1>

									</ul>

								</div>

								<div class="span4">

									<h4>作业信息：</h4>

									<ul class="unstyled">

										<li><strong>作业名:</strong> ${assignment.name }</li>

										<li><strong>开始时间：</strong> ${assignment.startTime }</li>

										<li><strong>结束时间：</strong> ${assignment.deadline }</li>

										<li><strong>详细需求：</strong>	 ${assignment.basicRequirement }</li>

									</ul>

								</div>

								<div class="span4 invoice-payment">

									<h4>个人信息：</h4>

									<ul class="unstyled">

										<li><strong>姓名：</strong> ${student.name }</li>

										<li><strong>学号：</strong> ${student.id }</li>

									</ul>

								</div>
					
					</div>
					
					<div class="row-fluid">
					
						<div class="span12">

							<div class="portlet box yellow">

								<div class="portlet-title">

									<div class="caption"><i class="icon-pencil"></i>作业详情</div>

									<div class="tools">

										<a href="javascript:;" class="collapse"></a>

										<a href="#portlet-config" data-toggle="modal" class="config"></a>

										<a href="javascript:;" class="reload"></a>

										<a href="javascript:;" class="remove"></a>

									</div>

								</div>

								<div class="portlet-body">
								
									<div>
										
										<h3><strong>查阅</strong></h3>

											<textarea class="span10 m-wrap" rows="8">${homework.text }</textarea>
											
											<div class="row-fluid span10"><a class="btn green pull-right"><i class="icon-download"></i></a></div>
									</div>
									
									<br/>
									
									<hr/>
									
									<div class="post-comment">

										<h3><strong>批示</strong></h3>

										<form action="/assignment/correct/${homeworkId}" method="POST">

											<label>
											
												<big>分数</big><span class="color-red">*</span>
												
												<input type="text" class="span1" name="score">
											
												<strong><big><big>/${assignment.highestScore }</big></big></strong>
											
											</label>


											<label><big>作业评价<big></label>

											<textarea class="span10 m-wrap" rows="8" name="comment"></textarea>
																<div class="row-fluid">

											<div class="span4">

											</div>
					
											<div class="span8 invoice-block">
				
											<br />
				
											<input type="submit" value="确认" class="btn green big hidden-print"></input>
				
											<a class="btn big hidden-print" href="/assignment/correct">取消</a>
				
											</div>
				
											</div>
										</form>
										
									</div>
								</div>
								
							</div>
						
						</div>

					</div>



				</div>

				<!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2013 &copy; Metronic by keenthemes.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="/media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="/media/js/excanvas.min.js"></script>

	<script src="/media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<script src="/media/js/app.js"></script>      

	<script>

		jQuery(document).ready(function() {    

		   App.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>