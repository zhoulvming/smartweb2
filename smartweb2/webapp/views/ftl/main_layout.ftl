<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>3DHandbook</title>
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
<!--[if !IE]><!--> <link href="${BASEPATH}assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/> <!--<![endif]-->
<!--[if lt IE 9]>
<link href="${BASEPATH}assets/admin/layout/css/layout_ie8.css" rel="stylesheet" type="text/css"/>
<![endif]-->
<!--[if gt IE 8]>
<link href="${BASEPATH}assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/> 
<![endif]-->
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
<body class="page-header-fixed page-container-bg-solid  page-sidebar-fixed">
<!-- BEGIN Preloader -->
<div id="preloader">
  <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<!-- END Preloader -->
<!-- BEGIN HEADER -->
<#include "main_header.ftl">
<!-- END HEADER -->
<div class="clearfix"></div>
<!-- DOC: when page-boxed，container DIV need to open -->
<!-- <div class="container"> -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<#include "main_sidebar.ftl">
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="portlet layout-portlet">
					<div id="layout_portlet_title" class="portlet-title">
						<div class="caption">
							<i id="page_icon" class="icon-home bold font-green"></i>
							<span id="page_name" class="caption-subject bold uppercase font-green"> 首页</span>
							<span id="page_caption" class="caption-helper"></span>
						</div>
						<div class="actions">
							<a id="fullscreen_icon" class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
						</div>
					</div>
					<div id="layout_portlet_body" class="portlet-body">
					<div class="page-error"></div>
					<div class="page-success"><@page_content/></div>
					</div>
				</div>
			</div>
		</div>
		<!-- END CONTENT -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">2015 &copy; atoz.</div>
		<div class="scroll-to-top"><i class="icon-arrow-up"></i></div>
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
<script src="${BASEPATH}assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="${BASEPATH}assets/global/scripts/smartweb.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/project.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/scripts/env.js" type="text/javascript"></script>
<script>
    jQuery(document).ready(function() {
		Smartweb.init('${BASEPATH}', '${PATHINFO}');
		Layout.init();
		Project.init();
    });
</script>
<!-- END JAVASCRIPTS -->
<@page_script/>
</body>
<!-- END BODY -->
</html>