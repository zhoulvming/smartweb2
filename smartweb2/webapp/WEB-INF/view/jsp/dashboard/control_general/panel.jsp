<div id="intro_panel" class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-cogs"></i>
			<span class="caption-subject bold uppercase">面板</span>
			<span class="caption-helper"></span>
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>
	<div class="portlet-body">
		<div class="portlet-tabs">
			<p>创建一个基本的面板，只需要向 &lt;div&gt; 元素添加 <code> .panel</code> 和 <code>.panel-default</code> 即可，如下所示：</p>
			<p>面板的［头部、身体、底部］分别对应为［<code>panel-heading</code>、<code>panel-heading</code>、<code>panel-heading</code>］</p>
			<br>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#intro_panel_tab1" data-toggle="tab"> 效果 </a></li>
				<li><a href="#intro_panel_tab2" data-toggle="tab"> 代码 </a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="intro_panel_tab1">
					<!-- <h4 class="block"># 基础面板样式</h4> -->
					<div class="panel panel-default">
						<div class="panel-heading">你不懂我，我不怪你&nbsp;&nbsp;&nbsp;(panel header)</div>
						<div class="panel-body">
							<p>每个人都有一个死角， 自己走不出来，别人也闯不进去。</p>
							<p>我把最深沉的秘密放在那里。</p>
							<p>你不懂我，我不怪你。</p>
						</div>
						<div class="panel-footer">莫言&nbsp;&nbsp;&nbsp;(panel footer)</div>
					</div>
				</div>
				<div class="tab-pane" id="intro_panel_tab2">
					<pre class="language-samrtweb"><code class="language-samrtweb">
&lt;div class="panel panel-default"&gt;
	&lt;div class="panel-heading"&gt;你不懂我，我不怪你&nbsp;&nbsp;&nbsp;(panel header)&lt;/div&gt;
	&lt;div class="panel-body"&gt;
		&lt;p&gt;每个人都有一个死角， 自己走不出来，别人也闯不进去。&lt;/p&gt;
		&lt;p&gt;我把最深沉的秘密放在那里。&lt;/p&gt;
		&lt;p&gt;你不懂我，我不怪你。&lt;/p&gt;
	&lt;/div&gt;
	&lt;div class="panel-footer"&gt;莫言&nbsp;&nbsp;&nbsp;(panel footer)&lt;/div&gt;
&lt;/div&gt;
					</code></pre>
				</div>
			</div>
		</div>	
	</div>
</div>