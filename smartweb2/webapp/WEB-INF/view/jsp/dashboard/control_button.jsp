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
					<span class="caption-subject bold uppercase"> 按钮</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">
				<h4>基本使用</h4>
				<p>在要应用按钮样式的元素上添加 <code class="token scope">.btn</code>，再设置相应的颜色和大小。以下样式可用于&lt;a&gt;, &lt;button&gt;, 或 &lt;input&gt; 元素上：</p>
				<table class="table table-striped table-bordered table-advance table-hover">
					<thead><tr><th>类</th><th>描述</th></tr></thead>
					<tbody>
						<tr>
							<td><code class="token scope">.btn</code></td>
							<td>添加按钮基本样式</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-default</code></td>
							<td>默认/标准按钮</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-primary</code></td>
							<td>原始按钮样式（未被操作）</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-success</code></td>
							<td>表示成功的动作</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-info</code></td>
							<td>该样式可用于要弹出信息的按钮</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-warning</code></td>
							<td>表示需要谨慎操作的按钮</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-danger</code></td>
							<td>表示一个危险动作的按钮操作</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-link</code></td>
							<td>让按钮看起来像个链接 (仍然保留按钮行为)</td>
						</tr>
						<tr>
							<td><code class="token scope">.disabled</code></td>
							<td>禁用按钮</td>
						</tr>
						<tr>
							<td>
								<code class="token scope">.default</code> ,
								<code class="token scope">.red</code> , ...
							</td>
							<td>设置按钮颜色，具体颜色请参考颜色帮助文档</td>
						</tr>
						<tr>
							<td>
								<code class="token scope">.red-stripe</code> ,
								<code class="token scope">.blue-stripe</code> , ...
							</td>
							<td>设置带有颜色条纹的按钮，具体颜色请参考颜色帮助文档</td>
						</tr>
						<tr>
							<td>
								<code class="token scope">.btn-lg</code> ,
								<code class="token scope">.btn-sm</code> ,
								<code class="token scope">.btn-xs</code>
							</td>
							<td>设置按钮的大小，分别有 大、小、超小 三种样式</td>
						</tr>
						<tr>
							<td><code class="token scope">.btn-block</code></td>
							<td>块级按钮(拉伸至父元素100%的宽度)</td>
						</tr>
						<tr>
							<td><code class="token scope">.active</code></td>
							<td>让按钮处于激活状态</td>
						</tr>
					</tbody>
				</table>
		
				<!-- BEGIN Default Buttons  -->
				<div id="intro1" class="portlet box blue-hoki margin-top-20">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">基础按钮</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<h4 class="block"># Bootstrap 样式按钮</h4>
							<!-- Standard gray button with gradient -->
							<button type="button" class="btn btn-default">Default</button>
							<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							<button type="button" class="btn btn-primary">Primary</button>
							<!-- Indicates a successful or positive action -->
							<button type="button" class="btn btn-success">Success</button>
							<!-- Contextual button for informational alert messages -->
							<button type="button" class="btn btn-info">Info</button>
							<!-- Indicates caution should be taken with this action -->
							<button type="button" class="btn btn-warning">Warning</button>
							<!-- Indicates a dangerous or potentially negative action -->
							<button type="button" class="btn btn-danger">Danger</button>
							<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
							<button type="button" class="btn btn-link">Link</button>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># Smartweb 风格按钮</h4>
							<button type="button" class="btn default">Default</button>
							<button type="button" class="btn red">Red</button>
							<button type="button" class="btn blue">Blue</button>
							<button type="button" class="btn green">Green</button>
							<button type="button" class="btn yellow">Yellow</button>
							<button type="button" class="btn purple">Purple</button>
							<button type="button" class="btn dark">Dark</button>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 不同颜色的按钮（更多颜色选择请参考  <a href="javascript:;"> Smartweb颜色 </a>） </h4>
							<button type="button" class="btn blue-hoki">Blue Hoki</button>
							<button type="button" class="btn blue-madison">Blue Madison</button>
							<button type="button" class="btn green-meadow">Green Meadow</button>
							<button type="button" class="btn red-sunglo">Red Sunglo</button>
							<button type="button" class="btn yellow-crusta">Yellow Crusta</button>
							<button type="button" class="btn purple-plum">Purple Plum</button>
							<button type="button" class="btn grey-cascade">Grey Cascade</button>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 带有颜色条纹的按钮</h4>
							<a href="javascript:;" class="btn default red-stripe">
							Red </a>
							<a href="javascript:;" class="btn default blue-stripe">
							Blue </a>
							<a href="javascript:;" class="btn default green-stripe">
							Green </a>
							<a href="javascript:;" class="btn default yellow-stripe">
							Yellow </a>
							<a href="javascript:;" class="btn default purple-stripe">
							Purple </a>
							<a href="javascript:;" class="btn default green-stripe">
							Green </a>
							<a href="javascript:;" class="btn default dark-stripe">
							Dark </a>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 禁用按钮</h4>
							<a href="javascript:;" class="btn default disabled">Default </a>
							<a href="javascript:;" class="btn red disabled">Red </a>
							<a href="javascript:;" class="btn blue disabled">Blue </a>
							<a href="javascript:;" class="btn green disabled">Green </a>
							<a href="javascript:;" class="btn yellow disabled">Yellow </a>
							<a href="javascript:;" class="btn purple disabled">Purple </a>
							<a href="javascript:;" class="btn dark disabled">Dark </a>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 不同大小的按钮</h4>
							<button type="button" class="btn default btn-lg">Large button</button>
							<button type="button" class="btn red">Default button</button>
							<button type="button" class="btn blue btn-sm">Small button</button>
							<button type="button" class="btn green btn-xs">Extra small button</button>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 标记按钮</h4>
							<a href="javascript:;" class="btn default">Link </a>
							<button class="btn default">Button</button>
							<input type="button" class="btn default" value="Input">
							<input type="submit" class="btn default" value="Submit">
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 块级按钮</h4>
							<a href="javascript:;" class="btn default btn-block">Link </a>
							<button class="btn blue btn-block">Button</button>
							<input type="button" class="btn red btn-block" value="Input">
							<input type="submit" class="btn purple btn-block" value="Submit">
						</div>
					</div>
				</div>
				<!-- END Default Buttons -->
			
				<!-- BEGIN Button Groups  -->
				<div id="intro2" class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">按钮组</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix margin-top-10">
							<h4 class="block"># 基础例子</h4>
							<div class="btn-group">
								<button type="button" class="btn btn-default">Left</button>
								<button type="button" class="btn btn-default">Middle</button>
								<button type="button" class="btn btn-default">Right</button>
							</div>
							<div class="btn-group btn-group-solid">
								<button type="button" class="btn red">Left</button>
								<button type="button" class="btn yellow">Middle</button>
								<button type="button" class="btn green">Right</button>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 工具栏按钮</h4>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group">
									<button type="button" class="btn btn-default">1</button>
									<button type="button" class="btn btn-default">2</button>
									<button type="button" class="btn btn-default">3</button>
									<button type="button" class="btn btn-default">4</button>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-default">5</button>
									<button type="button" class="btn btn-default">6</button>
									<button type="button" class="btn btn-default">7</button>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-default">8</button>
								</div>
							</div>
							<div class="btn-toolbar">
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">1</button>
									<button type="button" class="btn green">2</button>
									<button type="button" class="btn blue">3</button>
									<button type="button" class="btn yellow">4</button>
								</div>
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn purple">5</button>
									<button type="button" class="btn dark">6</button>
									<button type="button" class="btn default">7</button>
								</div>
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">8</button>
								</div>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 不同大小的按钮组</h4>
							<p>通过设置 <code class="token scope">.btn-group-lg</code>、
								<code class="token scope">.btn-group-sm</code>、
								<code class="token scope">.btn-group-xs</code>
								来变化大小
							</p>
							<div class="btn-toolbar">
								<div class="btn-group btn-group-lg btn-group-solid margin-bottom-10">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-sm btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-xs btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 让按钮垂直排列</h4>
							<p>通过给按钮元素的外层容器设置 <code class="token scope">.btn-group-vertical</code> 来达到垂直排列的效果
							<div class="btn-group-vertical margin-right-10">
								<button type="button" class="btn btn-default">Button</button>
								<button type="button" class="btn btn-default">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop1">
										<li><a href="javascript:;">Dropdown link </a></li>
										<li><a href="javascript:;">Dropdown link </a></li>
									</ul>
								</div>
								<button type="button" class="btn btn-default">Button</button>
								<button type="button" class="btn btn-default">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop2" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop2">
										<li><a href="javascript:;">Dropdown link </a></li>
										<li><a href="javascript:;">Dropdown link </a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop3" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop3">
										<li><a href="javascript:;">Dropdown link </a></li>
										<li><a href="javascript:;">Dropdown link </a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop4" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop4">
										<li><a href="javascript:;"> Dropdown link </a></li>
										<li><a href="javascript:;"> Dropdown link </a></li>
									</ul>
								</div>
							</div>
							<div class="btn-group-vertical btn-group-solid">
								<button type="button" class="btn blue">Button</button>
								<button type="button" class="btn green">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop5" type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop5">
										<li><a href="javascript:;">Dropdown link </a></li>
										<li><a href="javascript:;">Dropdown link </a></li>
									</ul>
								</div>
								<button type="button" class="btn red">Button</button>
								<button type="button" class="btn dark">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop6" type="button" class="btn default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop6">
										<li><a href="javascript:;"> Dropdown link </a></li>
										<li><a href="javascript:;"> Dropdown link </a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop7" type="button" class="btn purple dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop7">
										<li><a href="javascript:;"> Dropdown link </a></li>
										<li><a href="javascript:;"> Dropdown link </a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop8" type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop8">
										<li><a href="javascript:;"> Dropdown link </a></li>
										<li><a href="javascript:;"> Dropdown link </a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END Button Groups  -->
			
				<!-- BEGIN Button Dropdowns  -->
				<div id="intro3" class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">带有下拉菜单的按钮</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<h4 class="block"># 多级下拉菜单</h4>
							<div class="btn-group">
								<button class="btn blue dropdown-toggle" type="button" data-toggle="dropdown">
								Dropdown <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="javascript:;"> Action </a></li>
									<li><a href="javascript:;"> Another action </a></li>
									<li><a href="javascript:;"> Something else here </a></li>
									<li class="divider"></li>
									<li class="dropdown-submenu">
										<a href="javascript:;">
										More options </a>
										<ul class="dropdown-menu" style="">
											<li><a href="javascript:;"> Second level link </a></li>
											<li class="dropdown-submenu">
												<a href="javascript:;">
												More options </a>
												<ul class="dropdown-menu">
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
												</ul>
											</li>
											<li><a href="index.html"> Second level link </a></li>
											<li><a href="index.html"> Second level link </a></li>
											<li><a href="index.html"> Second level link </a></li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="btn-group dropup">
								<button class="btn green dropdown-toggle" type="button" data-toggle="dropdown">
								Dropup <i class="fa fa-angle-up"></i>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li><a href="javascript:;"> Action </a></li>
									<li><a href="javascript:;"> Another action </a></li>
									<li><a href="javascript:;"> Something else here </a></li>
									<li class="divider"></li>
									<li class="dropdown-submenu">
										<a href="javascript:;">
										More options </a>
										<ul class="dropdown-menu" style="">
											<li><a href="javascript:;"> Second level link </a></li>
											<li class="dropdown-submenu">
												<a href="javascript:;">
												More options </a>
												<ul class="dropdown-menu pull-right">
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
													<li><a href="index.html"> Third level link </a></li>
												</ul>
											</li>
											<li><a href="index.html"> Second level link </a></li>
											<li><a href="index.html"> Second level link </a></li>
											<li><a href="index.html"> Second level link </a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 向上弹出式菜单 & 靠右弹出式菜单</h4>
							<p>有时，根据画面布局，菜单要设置弹出的方向（上或下、左或右），可以按如下方式设置：</p>
							<p>&nbsp;&nbsp;通过给按钮外层容器设置 <code class="token scope">.dropup</code> 让菜单向上弹出（缺省是向下）</p>
							<p>&nbsp;&nbsp;通过给下拉菜单(ul)设置 <code class="token scope">.pull-right</code> 让菜单靠右边弹出（缺省是靠左）</p>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group dropup">
									<button type="button" class="btn btn-default">Dropup</button>
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
								<div class="btn-group dropup">
									<button type="button" class="btn btn-primary">Right dropup</button>
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
							</div>
							<div class="btn-toolbar">
								<div class="btn-group dropup">
									<button type="button" class="btn blue">Dropup</button>
									<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
								<div class="btn-group dropup">
									<button type="button" class="btn green">Right dropup</button>
									<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 鼠标浮动弹出</h4>
							<p>通过给按钮设置 <code class="token scope">data-toggle="dropdown"</code> 属性，使鼠标移动到按钮上时就弹出菜单</p>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group">
									<button type="button" class="btn btn-default">Dropdown</button>
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"><i class="fa fa-angle-down"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
								<div class="btn-group dropup">
									<button type="button" class="btn btn-primary">Dropup</button>
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
									Dropup <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li><a href="javascript:;"> Action </a></li>
										<li><a href="javascript:;"> Another action </a></li>
										<li><a href="javascript:;"> Something else here </a></li>
										<li class="divider"></li>
										<li><a href="javascript:;"> Separated link </a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix margin-top-10">
							<h4 class="block"># 包含表单控件（checkbox、radio、input）</h4>
							<div class="btn-group">
								<button class="btn green dropdown-toggle" type="button" data-toggle="dropdown">
								Search Dropdown <i class="fa fa-angle-down"></i>
								</button>
								<div class="dropdown-menu dropdown-content input-large hold-on-click" role="menu">
									<form action="#">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="search...">
											<span class="input-group-btn">
											<button class="btn blue" type="submit">Go!</button>
											</span>
										</div>
									</form>
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn blue">Checkbox Dropdown</button>
								<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-checkboxes" role="menu">
									<label><input type="checkbox">Option 1</label>
									<label><input type="checkbox" checked>Option 2</label>
									<label><input type="checkbox">Option 3</label>
									<label><input type="checkbox" checked>Option 4</label>
									<label><input type="checkbox">Option 5</label>
								</div>
							</div>
							<div class="btn-group dropup">
								<button type="button" class="btn green">Checkbox Dropup</button>
								<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-checkboxes" role="menu">
									<label><input type="checkbox">Option 1</label>
									<label><input type="checkbox" checked>Option 2</label>
									<label><input type="checkbox">Option 3</label>
									<label><input type="checkbox" checked>Option 4</label>
									<label><input type="checkbox">Option 5</label>
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn blue">Radio</button>
								<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-radiobuttons" role="menu">
									<label><input type="radio" name="radio_button_1">Option 1</label>
									<label><input type="radio" name="radio_button_1">Option 2</label>
									<label><input type="radio" name="radio_button_1">Option 3</label>
									<label><input type="radio" name="radio_button_1">Option 4</label>
									<label><input type="radio" name="radio_button_1">Option 5</label>
								</div>
							</div>
							<div class="clearfix margin-top-10">
								<span class="label label-success">注意: </span>
								&nbsp; 通过设置 <code>.hold-on-click</code> 类来避免弹出框失去焦点
							</div>
						</div>
					</div>
				</div>
				<!-- END Button Dropdowns -->
				
				<!-- BEGIN Font Awesome Styled Buttons  -->
				<div id="intro4" class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">Font Awesome 风格按钮</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> 
							<a href="javascript:;" class="reload"></a> 
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<a href="javascript:;" class="icon-btn">
							<i class="fa fa-group"></i>
							<div>Users</div>
							<span class="badge badge-danger">2 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
							<i class="fa fa-barcode"></i>
							<div>Products</div>
							<span class="badge badge-success">4 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
							<i class="fa fa-bar-chart-o"></i>
							<div>Reports</div>
						</a>
						<a href="javascript:;" class="icon-btn">
							<i class="fa fa-sitemap"></i>
							<div>Categories</div>
						</a>
					</div>
				</div>
				<!-- END Font Awesome Styled Buttons  -->

				<!-- BEGIN Social Icons  -->
				<div id="intro5" class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">社交图标</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> 
							<a href="javascript:;" class="reload"></a> 
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body util-btn-margin-bottom-5">
						<a href="javascript:;" data-original-title="klout" class="social-icon social-icon-circle klout">
						</a>
						<a href="javascript:;" data-original-title="myspace" class="social-icon social-icon-circle myspace">
						</a>
						<a href="javascript:;" data-original-title="quora" class="social-icon social-icon-circle quora">
						</a>
					</div>
				</div>
				<!-- END Social Icons  -->
				
				<!-- BEGIN Button States  -->
				<div id="intro6" class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs"></i>
							<span class="caption-subject bold uppercase">按钮状态</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a> 
							<a href="javascript:;" class="reload"></a> 
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body util-btn-margin-bottom-5">
						<h4># 显示加载状态的按钮</h4>
						<div class="clearfix">
							<button type="button" data-loading-text="加载中..." class="demo-loading-btn btn btn-primary">
							Loading state </button>
						</div>
						<h4 class="margin-top-20"># Checkbox 按钮</h4>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn default active">
								<input type="checkbox" class="toggle"> Option 1 </label>
								<label class="btn default">
								<input type="checkbox" class="toggle"> Option 2 </label>
								<label class="btn default">
								<input type="checkbox" class="toggle"> Option 3 </label>
							</div>
						</div>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn btn-default">
								<input type="checkbox" class="toggle"> Option 1 </label>
								<label class="btn btn-default active">
								<input type="checkbox" class="toggle"> Option 2 </label>
								<label class="btn btn-default">
								<input type="checkbox" class="toggle"> Option 3 </label>
							</div>
						</div>
						<h4 class="margin-top-20"># Radio 按钮</h4>
						<div class="clearfix">
							<div class="btn-group" data-toggle="buttons">
								<label class="btn blue active">
								<input type="radio" class="toggle"> Option 1 </label>
								<label class="btn blue">
								<input type="radio" class="toggle"> Option 2 </label>
								<label class="btn blue">
								<input type="radio" class="toggle"> Option 3 </label>
							</div>
						</div>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn btn-default active">
								<input type="radio" class="toggle"> Option 1 </label>
								<label class="btn btn-default">
								<input type="radio" class="toggle"> Option 2 </label>
								<label class="btn btn-default">
								<input type="radio" class="toggle"> Option 3 </label>
							</div>
						</div>
					</div>
				</div>
				<!-- END Button States  -->
				
			</div>
		</div>
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro1" >基础按钮</a></li>
				<li><a href="#intro2">按钮组</a></li>
				<li><a href="#intro3">下拉菜单按钮</a></li>
				<li><a href="#intro4">Fontawesome 按钮</a></li>
				<li><a href="#intro5">社交按钮</a></li>
				<li><a href="#intro6">按钮状态</a></li>
			</ul>
		</div>
	</div>
	
</div>


</#macro>

<#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jquery.nav.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jstree/dist/jstree.min.js"></script>
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
		
	    $('.demo-loading-btn')
	      .click(function () {
	        var btn = $(this)
	        btn.button('loading')
	        setTimeout(function () {
	          btn.button('reset')
	        }, 3000)
	    });
		
	});
	
	

</script>
</#macro>