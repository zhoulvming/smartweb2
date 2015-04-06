<div id="intro_popover" class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-cogs "></i>
			<span class="caption-subject  bold uppercase">弹出框</span>
			<span class="caption-helper"></span>
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>
	<div class="portlet-body">
		<p>Popover（弹出框）可以理解为扩展的Tooltip, 它可以用来显示任何元素的一些信息。</p>
		<br><h4>基本语法:</h4>
		<pre class="language-smartweb"><code class="language-smartweb">
&lt;button class="btn <span class="token scope">popovers</span>" data-container="body" <span class="token scope"> data-trigger="hover" data-placement="top" data-content="远方 有一个地方 那里种有我们的梦想"  data-original-title="我在上面"</span>&gt;Top&lt;/button&gt;

&lt;a href="javascript:;" class="popovers" data-container="body" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Default Popover">
		</code></pre>
		<div class="portlet-tabs">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#intro_popover_tab1" data-toggle="tab"> 效果 </a></li>
				<li><a href="#intro_popover_tab2" data-toggle="tab"> 代码 </a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="intro_popover_tab1">
					<p>南极洲又称第七大陆，是地球上最后一个被发现、唯一没有土著人居住的大陆。 
						<a href="javascript:;" class="popovers" data-container="body" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Default Popover">
						trigger me on click </a>
						南极大陆为通常所说的南大洋（太平洋、印度洋和大西洋的南部水域）所包围，它与南美洲最近的距离为965公里，距新西兰2000公里、距澳大利亚2500公里、距南非3800公里、距中国北京的距离约有12000公里。						
						<a href="javascript:;" class="popovers" data-container="body" data-trigger="hover" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Another Popover">
						trigger me on hover </a>
						南极大陆的总面积为1390万平方公里，相当于中国和印巴次大陆面积的总和，居世界各洲第五位。
					</p>
					<button class="btn popovers" data-container="body" data-trigger="hover" data-placement="top" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Popover in top">Top</button>
					<button class="btn popovers" data-container="body" onclick=" " data-trigger="hover" data-placement="left" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Popover in left">Left</button>
					<button class="btn popovers" data-container="body" data-trigger="hover" data-placement="right" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Popover in right">Right</button>
					<button class="btn popovers" data-container="body" data-trigger="hover" data-placement="bottom" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Popover in bottom">Bottom</button>
					<div class="inline-block popovers" data-container="body" data-trigger="hover" data-placement="bottom" data-content="远方 有一个地方 那里种有我们的梦想" data-original-title="Popover in bottom">
						<button type="button" class="btn btn-default disabled">Disabled</button>
					</div>
				</div>
				<div class="tab-pane" id="intro_popover_tab2">
					<div class="doc-actions"><div class="doc-act-inner"><span>Copy</span></div></div>
					<div class="doc-code">
						<pre class="language-smartweb"><code class="language-smartweb">
						</code></pre>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>