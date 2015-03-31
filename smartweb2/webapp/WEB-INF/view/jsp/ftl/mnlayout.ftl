<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>&nbsp;SMARTWEB</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${BASEPATH}assets/global/css/google-font.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN THEME STYLES -->
<link href="${BASEPATH}assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="${BASEPATH}assets/admin/layout/css/themes/grey.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->

<!--[if lt IE 9]>
<link href="${BASEPATH}assets/admin/layout/css/fixie8.css" rel="stylesheet" type="text/css"/>
<![endif]-->

<!-- BEGIN PAGE LEVEL STYLES -->
<@page_style/>
<!-- END PAGE LEVEL STYLES -->


<link rel="shortcut icon" href="${BASEPATH}assets/admin/layout/img/favicon.png"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- <body class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo"> -->
<body class="page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo">
<!-- BEGIN Preloader -->
<div id="preloader">
  <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<!-- END Preloader -->
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<!-- DOC: when page-boxed,need to add container after page-header-inner -->
	<!-- <div class="page-header-inner container"> -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="${BASEPATH}">
				<img src="${BASEPATH}assets/admin/layout/img/logo-default.png" alt="logo" class="logo-default"/>
			</a>
			<div class="menu-toggler sidebar-toggler"></div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN PAGE ACTIONS -->
		<!-- DOC: Remove "hide" class to enable the page header actions -->
		<div class="page-actions">
			<div class="btn-group">
				<button type="button" class="btn btn-circle green-haze dropdown-toggle" data-toggle="dropdown">
				<span class="hidden-sm hidden-xs">常用功能&nbsp;</span>&nbsp;<i class="fa fa-angle-down"></i>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="javascript:;">
						<i class="icon-docs"></i> 新建订单 </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-tag"></i> 打印订单 </a>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-share"></i> 审批 </a>
					</li>
				</ul>
			</div>
		</div>
		<!-- END PAGE ACTIONS -->
		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			<!-- BEGIN HEADER SEARCH BOX -->
			<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
			<form class="search-form search-form-expanded" action="#" method="GET">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search..." name="query">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
				</div>
			</form>
			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					
					<!-- BEGIN INBOX DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-inbox dropdown-dark" id="header_inbox_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="icon-envelope-open"></i>
						<span class="badge badge-default">
						4 </span>
						</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>你有 <span class="bold">4 个</span> 新消息</h3>
								<a href="javascript:;">查看</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
										<span class="photo">
										<img src="${BASEPATH}assets/admin/layout/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">刚刚 </span>
										</span>
										<span class="message">
										没什么可给你，但求凭这阙歌。谢谢你风雨里，都不退愿陪着我... </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="photo">
										<img src="${BASEPATH}assets/admin/layout/img/avatar3.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Richard Doe </span>
										<span class="time">16 分钟前 </span>
										</span>
										<span class="message">
										多么高兴 在琉璃屋中快乐生活 对世界说 甚么是光明和磊落 我就是我 是颜色不一样的烟火... </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="photo">
										<img src="${BASEPATH}assets/admin/layout/img/avatar1.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Bob Nilson </span>
										<span class="time">2 小时前 </span>
										</span>
										<span class="message">
										叫小球原因是因为小球以前喜欢穿宽宽的衣裤,风大时跑起来像球.因为小球比较怕冷... </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="photo">
										<img src="${BASEPATH}assets/admin/layout/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">40 分钟前 </span>
										</span>
										<span class="message">
										怎样才能够看穿面具里的谎话？别让我的真心散的像沙。如果有一天我变得更复杂，还能不能唱出歌声里的那幅画？ </span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-tasks dropdown-dark" id="header_task_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<i class="icon-calendar"></i>
						<span class="badge badge-default">
						3 </span>
						</a>
						<ul class="dropdown-menu extended tasks">
							<li class="external">
								<h3>你有 <span class="bold">3个 待解决</span> 任务</h3>
								<a href="javascript:;">查看</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 225px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">新版本 v1.2 发布</span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">系统应用部署</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">新手机APP发布</span>
										<span class="percent">98%</span>
										</span>
										<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">98% Complete</span></span>
										</span>
										</a>
									</li>
								</ul>
							</li>							
						</ul>
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img-circle" src="${BASEPATH}assets/admin/layout/img/avatar3_small.jpg"/>
						<span class="username username-hide-on-mobile">
						COB </span>
						<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="javascript:;">
								<i class="icon-user"></i> 我的帐户 </a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-calendar"></i> 我的哩哩 </a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-envelope-open"></i> 我的收件 <span class="badge badge-danger">
								3 </span>
								</a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-rocket"></i> 我的任务 <span class="badge badge-success">
								7 </span>
								</a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-lock"></i> 锁屏 </a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-key"></i> 注销 </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- DOC: when page-boxed，container DIV need to open -->
<!-- <div class="container"> -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<!-- <div class="page-sidebar navbar-collapse collapse"> -->
			<div class="page-sidebar">
				<!-- BEGIN SIDEBAR MENU -->
				<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
				<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
				<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
				<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
				<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
					<li class="start active">
						<a href="${BASEPATH}dashboard/start">
						<!-- <i class="icon-home"></i> -->
						<i class="icon-rocket"></i>
						<span class="title">开始使用</span>
						<span class="selected"></span>
						</a>
					</li>
					<li>
						<a href="javascript:;">
							<i class="icon-magnet"></i>
							<span class="title">UI Features</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="${BASEPATH}dashboard/control/general">
									<i class="icon-tag font-yellow"></i> General
								</a>
							</li>
							<li>
								<a href="${BASEPATH}dashboard/control/tree">
									<i class="icon-tag font-yellow"></i> TreeView
								</a>
							</li>
							<li>
								<a href="${BASEPATH}dashboard/control/button">
									<i class="icon-tag font-yellow"></i> Buttons
								</a>
							</li>
							<li>
								<a href="${BASEPATH}dashboard/control/font">
									<i class="icon-tag font-yellow"></i> Fonts&Icons
								</a>
							</li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Flat UI Colors</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Typography(排版)</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Modals</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Tabs & Navs </a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Bootbox Dialogs</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Tiles(瓷砖)</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Toastr Notifications</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Growl Notifications</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Nestable List </a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Session Timeout</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Block UI</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Page Progress Bar</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Alerts&Dialogs API</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Sliders</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Knob Circle Dials</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="icon-wallet"></i>
							<span class="title">Portlets</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub-menu">
							<li><a href="javascript:;"><i class="icon-tag"></i> General Portlets</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> News Portlets</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Ajax Portlets</a></li>
							<li><a href="javascript:;"><i class="icon-tag"></i> Draggable Portlets</a></li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
							<i class="icon-docs"></i>
							<span class="title">页面示例</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="javascript:;">
									<i class="icon-settings"></i> 博客页面 <span class="arrow"></span>
								</a>
							</li>
							<li>
								<a href="javascript:;">
									<i class="icon-settings"></i> 新闻页面 <span class="arrow"></span>
								</a>
							</li>
							<li>
								<a href="javascript:;">
									<i class="icon-settings"></i> CRUD页面 <span class="arrow"></span>
								</a>
							</li>
						</ul>
					</li>					
					<li class="">
						<a href="javascript:;">
						<i class="icon-paper-plane"></i>
						<span class="title">后台开发</span>
						<span class="selected"></span>
						<span class="arrow open"></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="javascript:;">
								<i class="icon-tag"></i>
								传值方法</a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-tag"></i>
								数据库操作</a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-tag"></i>
								JSON使用</a>
							</li>
						</ul>
					</li>
					<li class="last ">
						<a href="javascript:;">
						<i class="icon-note"></i>
						<span class="title">开发示例</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="${BASEPATH}user/list">
								<span class="badge badge-roundless badge-danger">new</span>用户管理</a>
							</li>
							<li>
								<a href="javascript:;">
								<span class="badge badge-roundless badge-warning">new</span>文件上传</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN STYLE CUSTOMIZER -->
				<div class="theme-panel">
					<div class="toggler tooltips" data-container="body" data-placement="left" data-html="true" data-original-title="点击这里设置页面主题">
						<i class="icon-settings"></i>
					</div>
					<div class="toggler-close">
						<i class="icon-close"></i>
					</div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span>
							主题颜色 </span>
							<ul>
								<li class="color-default tooltips" data-style="default" data-container="body" data-original-title="Default">
								</li>
								<li class="color-grey current tooltips" data-style="grey" data-container="body" data-original-title="Grey">
								</li>
								<li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue">
								</li>
								<li class="color-dark tooltips" data-style="dark" data-container="body" data-original-title="Dark">
								</li>
								<li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light">
								</li>
							</ul>
						</div>
						<div class="theme-option">
							<span>
							主题风格 </span>
							<select class="layout-style-option form-control input-small">
								<option value="square" selected="selected">Square corners</option>
								<option value="rounded">Rounded corners</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							布局 </span>
							<select class="layout-option form-control input-small">
								<option value="fluid" selected="selected">Fluid</option>
								<option value="boxed">Boxed</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							头部 </span>
							<select class="page-header-option form-control input-small">
								<option value="fixed" selected="selected">Fixed</option>
								<option value="default">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							头部下拉框</span>
							<select class="page-header-top-dropdown-style-option form-control input-small">
								<option value="light" selected="selected">Light</option>
								<option value="dark">Dark</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							侧边栏模式</span>
							<select class="sidebar-option form-control input-small">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							侧边栏风格</span>
							<select class="sidebar-style-option form-control input-small">
								<option value="default" selected="selected">Default</option>
								<option value="compact">Compact</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							侧边栏菜单 </span>
							<select class="sidebar-menu-option form-control input-small">
								<option value="accordion" selected="selected">Accordion</option>
								<option value="hover">Hover</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							侧边栏位置 </span>
							<select class="sidebar-pos-option form-control input-small">
								<option value="left" selected="selected">Left</option>
								<option value="right">Right</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							底部 </span>
							<select class="page-footer-option form-control input-small">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
					</div>
				</div>
				<!-- END STYLE CUSTOMIZER -->
				<@page_content/>
			</div>
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<!--Cooming Soon...-->
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			 2015 &copy; Smartweb by atoz.
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<!-- END FOOTER -->
<!-- </div> -->



<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${BASEPATH}assets/global/plugins/respond.min.js"></script>
<script src="${BASEPATH}assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${BASEPATH}assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- 重要：为了解决与jquery ui tooltip插件的冲突，此处的query-ui.min.js一定要在bootstrap.min.js前载入 -->
<script src="${BASEPATH}assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="${BASEPATH}assets/admin/pages/scripts/ui-blockui.js"></script>
<script src="${BASEPATH}assets/global/scripts/smartweb.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/project.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/scripts/env.js" type="text/javascript"></script>


<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
		Smartweb.init('${BASEPATH}'); // init Smartsky core components
		Layout.init(); // init current layout
		Project.init(); // init demo features
    });
</script>
<!-- END JAVASCRIPTS -->
<@page_script/>
</body>

<!-- END BODY -->
</html>