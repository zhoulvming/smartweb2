<div id="intro_tooltip" class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-cogs "></i>
			<span class="caption-subject  bold uppercase">工具提示</span>
			<span class="caption-helper"></span>
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>
	<div class="portlet-body">
		<p>当您想要描述一个链接的时候，工具提示（Tooltip）就显得非常有用。它不需要依赖图像，而是改用 CSS 实现动画效果，用 data 属性存储标题信息。</p>
		<br><h4>基本语法:</h4>
		<pre class="language-smartweb"><code class="language-smartweb">
&lt;button class="btn <span class="token scope">tooltips</span>" data-container="body" <span class="token scope">data-placement="top" data-original-title="我在上面"</span>&gt;Top&lt;/button&gt;
		</code></pre>
		<div class="portlet-tabs">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#intro_tooltip_tab1" data-toggle="tab"> 效果 </a></li>
				<li><a href="#intro_tooltip_tab2" data-toggle="tab"> 代码 </a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="intro_tooltip_tab1">
					<button id="test" class="btn tooltips" data-container="body" data-placement="top" data-original-title="我在上面">Top</button>
					<button class="btn tooltips" data-container="body" data-placement="left" data-original-title="我在左边">Left</button>
					<button class="btn tooltips" data-container="body" data-placement="right" data-original-title="我在右边">Right</button>
					<button class="btn tooltips" data-container="body" data-placement="bottom" data-original-title="我在下面">Bottom</button>
					<div class="inline-block tooltips" data-container="body" data-original-title="非活跃元素提示">
						<button type="button" class="btn btn-default disabled">Disabled</button>
					</div>
				</div>
				<div class="tab-pane" id="intro_tooltip_tab2">
					<div class="doc-actions"><div class="doc-act-inner"><span>Copy</span></div></div>
					<div class="doc-code">
						<pre class="language-smartweb"><code class="language-smartweb">
&lt;button class="btn tooltips" data-container="body" data-placement="top" data-original-title="我在上面"&gt;Top&lt;/button&gt;
&lt;button class="btn tooltips" data-container="body" data-placement="left" data-original-title="我在左边"&gt;Left&lt;/button&gt;
&lt;button class="btn tooltips" data-container="body" data-placement="right" data-original-title="我在右边"&gt;Right&lt;/button&gt;
&lt;button class="btn tooltips" data-container="body" data-placement="bottom" data-original-title="我在下面"&gt;Bottom&lt;/button&gt;
&lt;div class="inline-block tooltips" data-container="body" data-original-title="非活跃元素提示"&gt;
	&lt;button type="button" class="btn btn-default disabled"&gt;Disabled&lt;/button&gt;
&lt;/div&gt;
						</code></pre>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>