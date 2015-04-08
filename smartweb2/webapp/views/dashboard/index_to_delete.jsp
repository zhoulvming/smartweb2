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

<div class="vertical">
    <div class="main-header-content inner">
        <h1 class="page-title">为 WEB 艺术家创造的 前端框架。</h1>
        <h2 class="page-description">HTML&CSS&JS THAT DOESN'T HURT. CODE HAPPY &amp; ENJOY THE FRESH AIR.</h2>
    </div>
    <div class="callto">
        <div class="new-docs">
            <a href="http://www.golaravel.com/laravel/docs/5.0/" class="doc-button new" target="_blank">5.0 中文文档</a>
            <a href="http://www.golaravel.com/laravel/docs/4.2/" class="doc-button" target="_blank">4.2 中文文档</a>
            <a href="http://www.golaravel.com/laravel/docs/4.1/" class="doc-button" target="_blank">4.1 中文文档</a>
            <a href="http://www.golaravel.com/laravel/docs/4.0/" class="doc-button" target="_blank">4.0 中文文档</a>
            <a href="http://wenda.golaravel.com" class="doc-button" target="_blank">问答社区</a>
        </div>

        <div class="old-docs">
            <a id="old-link" href="http://v3.golaravel.com/">Laravel 3.2 中文文档</a>
        </div>
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