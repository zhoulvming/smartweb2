<#include "../ftl/mnlayout.ftl">
<#macro page_style>
</#macro>

<#macro page_content>
<div class="row" style="padding:20px 60px;">
	<img src="${BASEPATH}assets/admin/layout/img/banner1.png" class="img-responsive" alt="">
	
</div>
<div class="row">
	<div class="well pull-right" style="margin-top:-90px;background-color:#F1F3FA">
		<h1>SMARTWEB     
		<button type="button" onclick="goStart()" class="btn btn-circle green-haze dropdown-toggle" data-toggle="dropdown">
				<span class="hidden-sm hidden-xs">开始使用&nbsp;</span>
				</button>
		</h1>
		<h3>SpringMVC + Mybatis 后台架构 </h3>
		<h3>Jquery + Bootstrap ＋Jquery丰富插件 前台架构</h3>
		<h3>WEB响应式设计风格</h3>
	</div>
</div>
</#macro>

<#macro page_script>
<script>
	function goStart() {
		window.location.href = '${BASEPATH}dashboard/start';
	}
</script>
</#macro>