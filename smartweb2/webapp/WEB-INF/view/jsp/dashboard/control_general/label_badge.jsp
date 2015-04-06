<div id="intro_label_badge" class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-cogs"></i>
			<span class="caption-subject bold uppercase">标签和徽章</span>
			<span class="caption-helper"></span>
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>
	<div class="portlet-body">
		<h4 class="block">采用 <code class="language-smartweb">span</code> 标签实现</h4>
		<div class="portlet-tabs">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#intro3_tab1" data-toggle="tab"> 效果 </a></li>
				<li><a href="#intro3_tab2" data-toggle="tab"> 代码 </a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="intro3_tab1">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Class</th>
								<th>Labels</th>
								<th>Badges</th>
								<th>Roundless Badges</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Default</td>
								<td><span class="label label-default"> Default </span></td>
								<td><span class="badge badge-default"> 5 </span></td>
								<td><span class="badge badge-default badge-roundless"> 3 </span></td>
							</tr>
							<tr>
								<td>Primary</td>
								<td><span class="label label-primary"> Primary </span></td>
								<td><span class="badge badge-primary"> 4 </span></td>
								<td><span class="badge badge-primary badge-roundless"> Hot </span></td>
							</tr>
							<tr>
								<td>Info</td>
								<td><span class="label label-info"> Info </span></td>
								<td><span class="badge badge-info"> 6 </span></td>
								<td><span class="badge badge-info badge-roundless"> New </span></td>
							</tr>
							<tr>
								<td>Success</td>
								<td><span class="label label-success"> Success </span></td>
								<td><span class="badge badge-success"> 1 </span></td>
								<td><span class="badge badge-success badge-roundless"> 2 </span></td>
							</tr>
							<tr>
								<td>Danger</td>
								<td><span class="label label-danger"> Danger </span></td>
								<td><span class="badge badge-danger"> 3 </span></td>
								<td><span class="badge badge-danger badge-roundless"> 5 </span></td>
							</tr>
							<tr>
								<td>Warning</td>
								<td><span class="label label-warning"> Warning </span></td>
								<td><span class="badge badge-warning"> 12 </span></td>
								<td><span class="badge badge-warning badge-roundless"> 3 </span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane" id="intro3_tab2">
					<pre class="language-smartweb"><code class="language-smartweb">
&lt;table class="table table-bordered table-striped"&gt;
	&lt;thead&gt;
		&lt;tr&gt;
			&lt;th&gt;Class&lt;/th&gt;
			&lt;th&gt;Labels&lt;/th&gt;
			&lt;th&gt;Badges&lt;/th&gt;
			&lt;th&gt;Roundless Badges&lt;/th&gt;
		&lt;/tr&gt;
	&lt;/thead&gt;
	&lt;tbody&gt;
		&lt;tr&gt;
			&lt;td&gt;Default&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-default"&gt; Default &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-default"&gt; 5 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-default badge-roundless"&gt; 3 &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;Primary&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-primary"&gt; Primary &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-primary"&gt; 4 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-primary badge-roundless"&gt; Hot &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;Info&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-info"&gt; Info &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-info"&gt; 6 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-info badge-roundless"&gt; New &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;Success&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-success"&gt; Success &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-success"&gt; 1 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-success badge-roundless"&gt; 2 &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;Danger&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-danger"&gt; Danger &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-danger"&gt; 3 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-danger badge-roundless"&gt; 5 &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
		&lt;tr&gt;
			&lt;td&gt;Warning&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="label label-warning"&gt; Warning &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-warning"&gt; 12 &lt;/span&gt;</span>&lt;/td&gt;
			&lt;td&gt;<span class="token scope">&lt;span class="badge badge-warning badge-roundless"&gt; 3 &lt;/span&gt;</span>&lt;/td&gt;
		&lt;/tr&gt;
	&lt;/tbody&gt;
&lt;/table&gt;
					</code></pre>
				</div>
			</div>
		</div>
	</div>
</div>