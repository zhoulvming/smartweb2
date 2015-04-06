<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link href="${BASEPATH}assets/admin/layout/css/helper.css" rel="stylesheet" type="text/css"/>
</#macro>

<#macro page_content>

<div class="row">
	<div class="col-md-10">
		<div class="portlet light">
			<div class="portlet-title">
				<div class="caption font-purple-plum">
					<i class="icon-speech font-purple-plum"></i>
					<span class="caption-subject bold"> 通用控件</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">
				<!-- BEGIN ALERTS -->
				<#include "control_general/alert.jsp">
				<!-- END ALERTS -->
			
				<!-- BEGIN NOTES -->
				<#include "control_general/note.jsp">			
				<!-- END NOTES -->
				
				<!-- BEGIN Labels & Badges -->
				<#include "control_general/label_badge.jsp">
				<!-- END Labels & Badges -->
				
				<!-- BEGIN Modals -->
				<#include "control_general/modals.jsp">
				<!-- END Modals -->
				
				<!-- BEGIN Tooltip -->
				<#include "control_general/tooltip.jsp">
				<!-- END Tooltip -->
				
				<!-- BEGIN Popover -->
				<#include "control_general/popover.jsp">
				<!-- END Popover -->
				
				<!-- BEGIN List Gropt -->
				<#include "control_general/list_group.jsp">
				<!-- END List Gropt -->
				
				<!-- BEGIN Panel -->
				<#include "control_general/panel.jsp">
				<!-- END Panel -->				
			</div>
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro_alert">警告框</a></li>
				<li><a href="#intro_note">通知信息</a></li>
				<li><a href="#intro_label_badge">标签和徽章</a></li>
				<li><a href="#intro_modal">模态框</a></li>
				<li><a href="#intro_tooltip">工具提示</a></li>
				<li><a href="#intro_popover">弹出框</a></li>
				<li><a href="#intro_list_group">列表</a></li>
				<li><a href="#intro_panel">面板</a></li>
			</ul>
		</div>
	</div>
	
</div>


</#macro>

<#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jquery.nav.js" type="text/javascript"></script>
<script>

	/* var offset = 10; 
	var hash = globalHash; 
	if (hash) {
		scrollBodyTopTo($("div#c_"+hash).offset().top-offset); 
	}  */
	function scrollBodyTopTo(pos) {
		$("html,body").animate({scrollTop:pos}); 
	}
	
	function test() {
		var tt = $(window).height() - $('#basic .modal-content').height();
		$('#basic .modal-dialog').css('margin-top', tt/2 + 'px');
		
		$('#basic').modal('show');
	}
	
	$(document).ready(function(){
		$('.theme-panel').addClass('hide');
		$('#nav').onePageNav();
		
		
	});
	
	

</script>
</#macro>