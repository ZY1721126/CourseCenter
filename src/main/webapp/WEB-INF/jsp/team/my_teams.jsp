<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>我的团队</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link rel="stylesheet" href="/media/css/DT_bootstrap.css" />
    
    <link href="/media/css/jquery.fancybox.css" rel="stylesheet" />

	<link href="/media/css/jquery.fileupload-ui.css" rel="stylesheet" />
    
    <link rel="stylesheet" type="text/css" href="/media/css/bootstrap-fileupload.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/jquery.gritter.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/chosen.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/select2_metro.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/jquery.tagsinput.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/clockface.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/bootstrap-wysihtml5.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/datepicker.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/timepicker.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/colorpicker.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/bootstrap-toggle-buttons.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/daterangepicker.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/datetimepicker.css" />

	<link rel="stylesheet" type="text/css" href="/media/css/multi-select-metro.css" />

	<link href="/media/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="/media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<jsp:include page="../include/header.jsp"></jsp:include>

	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<jsp:include page="../include/sidebar.jsp"></jsp:include>

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN PAGE CONTAINER-->        

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							我的团队

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="/index">主页</a> 

								<i class="icon-angle-right"></i>

							</li>
							<li>

								<a href="#">我的团队</a> 

							</li>
						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- BEGIN PAGE CONTENT-->
				<div class="row-fluid">
					
					<div class="span12">


						<div class="portlet box green">
							<div class="portlet-title">

								<div class="caption"><i class="icon-edit"></i>我的团队列表 </div>

							</div>
							<div class="portlet-body">
								<a  class="btn blue" href="#form_modal2"  data-toggle="modal"><i class="icon-group"></i>&nbsp;创建团队</a> 
								<div style="padding:5px"></div>
								<table class="table table-striped table-hover table-bordered" >

									<thead>

										<tr>

											<th><div align="center">团队编号</div></th>

											<th><div align="center">团队名</div></th>

											<th><div align="center">负责人</div></th>

											<th><div align="center">人数</div></th>
											
											<th><div align="center">团队详情</div></th>
										</tr>

									</thead>

									<tbody>
										<c:forEach items="${teams}" var="item">
										<tr class="">

											<td><div align="center">${item.id}</div></td>

											<td><div align="center">${item.name}</div></td>

											<td><div align="center">${item.leaderName}</div></td>

											<td><div align="center">${item.num}</div></td>
											<td><div align="center"><a href="/team/team_details/${item.id}" class="btn mini green" style="margin-right:10px">查看</a></div></td>
										</tr>
										</c:forEach>
									</tbody>

								</table>

							</div>

						</div>


						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>
   				<div class="row-fluid">
					
					<div class="span12">


						<div class="portlet box purple">
							<div class="portlet-title">

								<div class="caption"><i class="icon-edit"></i>申请加入团队列表 </div>

							</div>

							<div class="portlet-body">
								<table class="table table-striped table-hover table-bordered">

									<thead>
										<tr>

											<th><div align="center">团队编号</div></th>

											<th><div align="center">团队名</div></th>

											<th><div align="center">负责人</div></th>

											<th><div align="center">人数</div></th>
											
											<th><div align="center">申请时间</div></th>
											
											<th><div align="center">状态</div></th>

										</tr>
									</thead>

									<tbody>

										<c:forEach items="${teamApplications}" var="item">
										<c:if test="${item.studentDelete==false}">
										<tr class="">

											<td><div align="center">${item.teamId}</div></td>

											<td><div align="center">${teamsApplied[item.teamId+0].name}</div></td>

											<td><div align="center">${teamsApplied[item.teamId+0].leaderName}</div></td>

											<td><div align="center">${teamsApplied[item.teamId+0].num}</div></td>
											
											<td><div align="center">${item.applyTime}</div></td>
											
											<td><div align="center">
											<c:if test="${item.status==0}">未处理</c:if>
											<c:if test="${item.status==1}">已加入&nbsp;<a href="/team/deleteTeamApplication/${item.id}" class="btn mini red"><i class="icon-trash"></i>&nbsp;删除</a></c:if>
											<c:if test="${item.status==2}">已拒绝&nbsp;<a href="/team/deleteTeamApplication/${item.id}" class="btn mini red"><i class="icon-trash"></i>&nbsp;删除</a></c:if>
											</div></td>
										</tr>
										</c:if>
										</c:forEach>
									</tbody>

								</table>

							</div>

						</div>


						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>
				

				
						<!-- END SAMPLE TABLE PORTLET-->

					
                    <div id="form_modal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">

									<div class="modal-header">

										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

										<h3 id="myModalLabel2">创建团队</h3>

									</div>
									<form action="/team/create_team" class="form-horizontal" method="POST" id="form">
									<div class="modal-body">

                                        
                                        	<div class="control-group">

										<label class="control-label">团队名称</label>

										<div class="controls">

											<input type="text" id="name" name="name"/>
										</div>

									</div>
                                    
                                    <div class="control-group">

										<label class="control-label">人数上限</label>

										<div class="controls">

											<input type="text" id="maxNum" name="maxNum"/>
                                            
                                          
										</div>

									</div>


									</div>

									</form>
									<div class="modal-footer">

										<button class="btn green btn-primary" onclick="checkAndSubmit()">创建</button>
										
										<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
									
									</div>
										
								</div>
                    </div>

				<!-- END PAGE CONTENT-->

			</div></div>

			<!-- END PAGE CONTAINER-->


		<!-- END PAGE -->


	<!-- END CONTAINER -->

	<jsp:include page="../include/footer.jsp"></jsp:include>


	<script src="/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="/media/js/bootstrap.min.js" type="text/javascript"></script>  

	<script src="/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="/media/js/app.js"></script>  
    
    <script src="/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="/media/js/bootstrap.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="/media/js/ckeditor.js"></script>  

	<script type="text/javascript" src="/media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="/media/js/chosen.jquery.min.js"></script>

	<script type="text/javascript" src="/media/js/select2.min.js"></script>

	<script type="text/javascript" src="/media/js/wysihtml5-0.3.0.js"></script> 

	<script type="text/javascript" src="/media/js/bootstrap-wysihtml5.js"></script>

	<script type="text/javascript" src="/media/js/jquery.tagsinput.min.js"></script>

	<script type="text/javascript" src="/media/js/jquery.toggle.buttons.js"></script>

	<script type="text/javascript" src="/media/js/bootstrap-datepicker.js"></script>

	<script type="text/javascript" src="/media/js/bootstrap-datetimepicker.js"></script>

	<script type="text/javascript" src="/media/js/clockface.js"></script>

	<script type="text/javascript" src="/media/js/date.js"></script>

	<script type="text/javascript" src="/media/js/daterangepicker.js"></script> 

	<script type="text/javascript" src="/media/js/bootstrap-colorpicker.js"></script>  

	<script type="text/javascript" src="/media/js/bootstrap-timepicker.js"></script>

	<script type="text/javascript" src="/media/js/jquery.inputmask.bundle.min.js"></script>   

	<script type="text/javascript" src="/media/js/jquery.input-ip-address-control-1.0.min.js"></script>

	<script type="text/javascript" src="/media/js/jquery.multi-select.js"></script>   

	<script src="/media/js/bootstrap-modal.js" type="text/javascript" ></script>

	<script src="/media/js/bootstrap-modalmanager.js" type="text/javascript" ></script> 

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="/media/js/app.js"></script>

	<script src="/media/js/form-components.js"></script>     

	<!-- END PAGE LEVEL SCRIPTS -->

	<script>

		jQuery(document).ready(function() {       

		   // initiate layout and plugins

		   App.init();

		   FormComponents.init();

		});

	</script>
	<script>
		function checkAndSubmit(){
			if(checkForm())
				document.getElementById("form").submit();
		}
		function checkForm(){   
			var name = document.getElementById("name").value;
			var maxNum = document.getElementById("maxNum").value;
			if(name==null||name ==''){
				alert("请输入团队名称");
				return false;
			}
			if(name.indexOf(' ')>=0){
				alert("团队名称不能含空格");
				return false;
			}
			if(maxNum== null||maxNum==''){
				alert("请输入人数上限");
				return false;
			}
			if(maxNum.indexOf(' ')>=0){
				alert("人数上限不能含空格");
				return false;
			}
			var re = /^[1-9][0-9]?$/ ;
			if(!re.test(maxNum)){
				alert("人数上限须为两位以内正整数");
				return false;
			}
			return true;
		}
	</script>

	<!-- END JAVASCRIPTS -->   
   

</body>

<!-- END BODY -->

</html>