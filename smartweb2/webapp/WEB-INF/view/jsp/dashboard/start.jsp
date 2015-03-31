<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link href="${BASEPATH}assets/admin/layout/css/help.css" rel="stylesheet" type="text/css"/>
</#macro>

<#macro page_content>
<h3 class="page-title">开始使用<small> &nbsp;SMARTWEB概览，使用，模版示例......</small></h3>
<div class="row">
	<div class="col-md-10">
		<div class="portlet light">
			<div class="portlet-title">
				<div class="caption font-purple-plum">
					<i class="icon-speech font-purple-plum"></i>
					<span class="caption-subject bold uppercase"> SMARTWEB 简介</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">
				<div class="doc-content" id="intro1">
					<h3>1. 关于SMARTWEB</h3>
					<p>Smartweb是一个轻量级的响应式设计前端框架，基于Bootstrp3和Jquery编写，模版技术采用Freemarker。</p>
					<p>Smartweb面向 HTML5 开发，使用 CSS3 来做动画交互，平滑、高效，更适合移动设备，让 Web 应用更快速载入。</p>
					<p><strong>Smartweb特色：</strong></p>
					<ol>
						<li><p class="font-red">基于 Bootstrap3.3 构造</p></li>
						<li><p class="font-red">所有应用到的JQUERY插件都是基于官方开源代码构建</p></li>
						<li><p class="font-red">框架中定义的各种组件达几十种，完全满足WEB项目开发需求</p></li>
						<li><p class="font-red">支持所有主流浏览器，特别针对IE8（包括IE8）浏览器做了适配</p></li>
						<li><p class="font-red">扁平化及响应式设计，一份代码适配于各种设备（PC、笔记本、PAD、手机）</p></li>
						<li><p class="font-red">模版可无编码变换主题和风格，以适用不同用户需求</p></li>
						<li><p class="font-red">代码在模版中编写，风格统一，对调试和维护有很大好处</p></li>
						<li><p class="font-red">程序员只需针对当前页面的需求来编写代码，编码效率极大得到提升</p></li>
					</ol>
					
				</div>
				<div class="doc-content" id="intro2">
				<h3>2. SMARTWEB目录结构</h3>
					<pre>Smartweb
|-- assets
|   |-- admin
|   |   |-- layout
|   |   |   |-- css
|   |   |   |   `-- layout.css		<small class="text-muted">//框架样式主文件</small>
|   |   |   |   `-- custom.css
|   |   |   |   `-- fixie.css
|   |   |   |   |-- themes		<small class="text-muted">//不同主题颜色的模版样式</small>
|   |   |   |   |   `-- default.css
|   |   |   |   |   `-- dark.css
|   |   |   |   |   `-- grey.css
|   |   |   |   |   `-- blue.css
|   |   |   |   |   `-- light.css
|   |   |   |-- img
|   |   |   |-- scripts
|   |   |   |   `-- layout.js		<small class="text-muted">//框架布局JS</small>
|   |   |   |   `-- project.js		<small class="text-muted">//项目主JS</small>
|   |   |-- pages
|   |   |
|   |-- global
|   |   |-- css
|   |   |   `-- components.css
|   |   |   `-- google-font.css
|   |   |   `-- plugins.css
|   |   |-- fonts			<small class="text-muted">//存放google-font.css引用的字体</small>
|   |   |-- img
|   |   |-- plugins			<small class="text-muted">//基于jquery及bootstrap的各种插件</small>
|   |   |-- scripts
|   |       `-- smartweb.js		<small class="text-muted">//框架主引导JS</small>
|   |
|-- WEB-INF
    |-- view
        |-- ftl
        |   `-- mnlayout.ftl		<small class="text-muted">//模版文件</small>
        |-- user
            `-- list.jsp		<small class="text-muted">//业务画面</small>
            `-- edit.jsp
				</pre>
				</div>
				<div class="doc-content" id="intro3">
				<h3>3. 页面结构</h3>
				
				<blockquote>
				<p>我不是专业的WEB前端工程师</p>
				<p>复杂的 CSS 语法和 JS 对于我来说就是噩梦</p>
				<p>除非你使用 Smartweb</p>
				<p>会发现一切变的如此简单</p>
				<small>Smartweb</small>
				</blockquote>
				
				<p>Smartweb采用模版构造 jsp 页面，每个 jsp 页面都会继承自一个 Freemarker 模版（扩展名为 ftl 文件）。在模版文件中定义了页面的整体结构，并且定义了 3处 替换宏，
				分别为 <span class="warning">page_style</span>、<span class="warning">page_content</span>、<span class="warning">page_script</span>。构建具体页面时候，只需要建立单独 jsp 页面，分别填充这 3处 内容就可以了。</p>
				<p>采用模版结构的好处是，程序员只需要去做本页面的标签构建，而不需要去关心呈现在浏览器中的整个页面的内部结构，因为整个页面结构在模版文件中已经预先定义好了，一般不需要去变动。</p>
				<p>下面模版结构：</p>
				<div class="doc-actions"><div class="doc-act-inner"><span>Copy</span></div></div>
				<div class="doc-code">
					<pre>
&lt!DOCTYPE html&gt
&lthtml lang="en"&gt
&lthead&gt
&ltmeta charset="utf-8"/&gt
&lttitle>Smartsky | ADMIN&lt/title&gt
&ltmeta http-equiv="X-UA-Compatible" content="IE=edge"&gt
&ltmeta content="width=device-width, initial-scale=1.0" name="viewport"/&gt
&ltmeta http-equiv="Content-type" content="text/html; charset=utf-8"&gt
...
<<code class="code-warning">@page_style</code>/>
&lt/head&gt
&ltbody&gt
...
<<code class="code-warning">@page_content</code>/>
...

<<code class="code-warning">@page_script</code>/>
&lt/body&gt
&lt/html&gt
  					</pre>
				</div>				
				
				</div>
				<div class="doc-content" id="intro4">
				<h3 id="#intro4">4. 创建一个页面</h3>
				<ol>
					<li><p>在 web-inf/view目录下面新建一个 jsp 文件，将下面的代码粘贴到文件中；</p></li>
					<li><p>根据页面业务需求，查看 开发指南中 CSS、JS、JS 插件，拷贝符合的演示代码，粘贴到 ... 相对应的区域，并按需调整；</p></li>
					<li><p>一个简单的页面完成。</p></li>
					<li><p class="warning">注意：下面代码中的 $ 符号在实际代码中必须换成 #</p></li>
				</ol>
				<div class="doc-actions"><div class="doc-act-inner"><span>Copy</span></div></div>
				<div class="doc-code">
					<pre>
<<code>#</code>include "../ftl/mnlayout.ftl">

<<code>#</code>macro page_style>
    <code class="code-comment">&lt!-- 在这里添加当前页面需要引用的css文件  --&gt</code>
<<code>#</code>/macro>

<<code>#</code>macro page_content>
    <code class="code-comment">&lt!-- 在这里添加当前页面需要的标签内容  --&gt</code>
<<code>#</code>/macro>

<<code>#</code>macro page_script>
    <code class="code-comment">&lt!-- 在这里添加当前页面需要引用js文件和js代码  --&gt</code>
<<code>#</code>/macro>
  					</pre>
				</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro1">关于SmartWEB</a></li>
				<li class=""><a href="#intro2">目录结构</a></li>
				<li class=""><a href="#intro3">页面结构</a></li>
				<li><a href="#intro4">建立页面</a></li>
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
	
	$(document).ready(function(){
		$('.theme-panel').addClass('hide');
		$('#nav').onePageNav();
	});
	
	

</script>
</#macro>