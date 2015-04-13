<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Smartweb | Welcome</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${BASEPATH}assets/global/css/google-font.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${BASEPATH}assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="${BASEPATH}assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${BASEPATH}assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="${BASEPATH}assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="${BASEPATH}assets/admin/pages/css/welcome.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="${BASEPATH}assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="${BASEPATH}assets/admin/layout/css/themes/grey.css" rel="stylesheet" type="text/css"/>
<link href="${BASEPATH}assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="${BASEPATH}assets/admin/layout/img/favicon.png"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12 welcome-header">
			<img src="${BASEPATH}assets/admin/layout/img/logo-default.png" alt="logo"/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 welcome-content">
			<h1 class="welcome-page-title">为 WEB 程序员创造的前端开发框架。</h1>
			<h2 class="welcome-page-description">WEB前端代码不再是伤痛. 您可以每天愉悦的编程 &amp; 享受新鲜的空气.</h2>
			<div class="callto">
				<a href="${BASEPATH}dashboard/start" class="btn btn-lg blue m-icon-big">使用指南</a>
				<a href="${BASEPATH}home" class="btn btn-lg blue m-icon-big">3DHAND</a>
			</div>
		</div>
	</div>
	<!--/end row-->
	<div class="row">
		<div class="col-md-12 welcome-footer">2015 &copy; Smartweb.</div>
	</div>
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${BASEPATH}assets/global/plugins/respond.min.js"></script>
<script src="${BASEPATH}assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${BASEPATH}assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${BASEPATH}assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${BASEPATH}assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${BASEPATH}assets/global/scripts/smartweb.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/admin/layout/scripts/project.js" type="text/javascript"></script>



<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
	Smartweb.init('${BASEPATH}', '${PATHINFO}');
	Layout.init(); // init current layout
	Project.init(); // init demo features

	// init background slide images
    $.backstretch([
            "${BASEPATH}assets/admin/pages/media/bg/1.jpg",
            "${BASEPATH}assets/admin/pages/media/bg/2.jpg",
            "${BASEPATH}assets/admin/pages/media/bg/3.jpg",
    		"${BASEPATH}assets/admin/pages/media/bg/4.jpg"
        ], {
        fade: 1000,
        duration: 10000
   });
});
</script>
<!-- END JAVASCRIPTS -->

</body>
<!-- END BODY -->
</html>