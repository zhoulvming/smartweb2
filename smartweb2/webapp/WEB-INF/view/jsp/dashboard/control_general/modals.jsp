<div id="intro_modal" class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-cogs"></i>
			<span class="caption-subject bold uppercase">模态框</span>
			<span class="caption-helper"></span>
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>
	<div class="portlet-body">
		<p>模态框（Modal）是覆盖在父窗体上的子窗体。通常，目的是显示来自一个单独的源的内容，可以在不离开父窗体的情况下有一些互动。子窗体可提供信息、交互等。</p>
		<br>
		<div class="portlet-tabs">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#intro4_tab1" data-toggle="tab"> 效果 </a></li>
				<li><a href="#intro4_tab2" data-toggle="tab"> 代码 </a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="intro4_tab1">
					<table class="table table-hover table-striped table-bordered">
						<tr>
							<td>基本样式</td>
							<td><a class="btn default" data-toggle="modal"
								href="#" onclick="test()"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>能拖动的模态框</td>
							<td><a class="btn default" data-toggle="modal"
								href="#draggable"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>很大的模态框</td>
							<td><a class="btn default" data-toggle="modal"
								href="#large"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>很小的模态框</td>
							<td><a class="btn default" data-toggle="modal"
								href="#small"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>全宽度模态框</td>
							<td><a class="btn default" data-toggle="modal"
								href="#full"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>响应式模态框</td>
							<td><a class="btn default" data-toggle="modal"
								href="#responsive"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>下层不能点击的</td>
							<td><a class=" btn default" data-toggle="modal"
								href="#static"> 查看例子 </a></td>
						</tr>
						<tr>
							<td>好高的模态框</td>
							<td><a class=" btn default" data-toggle="modal"
								href="#long"> 查看例子 </a></td>
						</tr>
					</table>
					<div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content" style="height:170px">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Modal Title</h4>
								</div>
								<div class="modal-body">
									 Modal body goes here
								</div>
								<div class="modal-footer">
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
									<button type="button" class="btn blue">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade draggable-modal" id="draggable">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Start Dragging Here</h4>
								</div>
								<div class="modal-body">
									 Modal body goes here
								</div>
								<div class="modal-footer">
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
									<button type="button" class="btn blue">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="full" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-full">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Modal Title</h4>
								</div>
								<div class="modal-body">
									 Modal body goes here
								</div>
								<div class="modal-footer">
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
									<button type="button" class="btn blue">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade bs-modal-lg" id="large" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Modal Title</h4>
								</div>
								<div class="modal-body">Modal body goes here</div>
								<div class="modal-footer">
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
									<button type="button" class="btn blue">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade bs-modal-sm" id="small" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Modal Title</h4>
								</div>
								<div class="modal-body">Modal body goes here</div>
								<div class="modal-footer">
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
									<button type="button" class="btn blue">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Responsive & Scrollable</h4>
								</div>
								<div class="modal-body">
									<div class="scroller" style="height:300px" data-always-visible="1" data-rail-visible1="1">
										<div class="row">
											<div class="col-md-6">
												<h4>Some Input</h4>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
											</div>
											<div class="col-md-6">
												<h4>Some More Input</h4>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
												<p>
													<input type="text" class="col-md-12 form-control">
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn default">Close</button>
									<button type="button" class="btn green">Save changes</button>
								</div>
							</div>
						</div>
					</div>
					<div id="stack1" class="modal fade" tabindex="-1" data-width="400">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Stack One</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">
											<h4>Some Input</h4>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
										</div>
									</div>
									<a class="btn green" data-toggle="modal" href="#stack2">
									Launch modal </a>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn">Close</button>
									<button type="button" class="btn red">Ok</button>
								</div>
							</div>
						</div>
					</div>
					<div id="stack2" class="modal fade" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Stack Two</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-12">
											<h4>Some Input</h4>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
											<p>
												<input type="text" class="col-md-12 form-control">
											</p>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn">Close</button>
									<button type="button" class="btn yellow">Ok</button>
								</div>
							</div>
						</div>
					</div>
					<div id="static" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Confirmation</h4>
								</div>
								<div class="modal-body">
									<p>
										 Would you like to continue with some arbitrary task?
									</p>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn default">Cancel</button>
									<button type="button" data-dismiss="modal" class="btn green">Continue Task</button>
								</div>
							</div>
						</div>
					</div>
					<div id="long" class="modal fade modal-scroll" tabindex="-1" data-replace="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">A Fairly Long Modal</h4>
								</div>
								<div class="modal-body">
									<img style="height: 800px" alt="" src="${BASEPATH}assets//admin/pages/img/KwPYo.jpg">
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="intro4_tab2">
					<pre class="language-smartweb"><code class="language-smartweb">
<span class="token comment">&lt;!-- 调用处代码 --&gt;</span>
&lt;a class="btn default" data-toggle="modal" href="<span class="token scope">#basic</span>"&gt; 查看例子 &lt;/a&gt;

<span class="token comment">&lt;!-- 对话框代码 --&gt;</span>					
&lt;div class="modal fade" id="<span class="token scope">basic</span>" tabindex="-1" role="basic" aria-hidden="true"&gt;
	&lt;div class="modal-dialog"&gt;
		&lt;div class="modal-content"&gt;
			&lt;div class="modal-header"&gt;
				&lt;button type="button" class="close" data-dismiss="modal" aria-hidden="true"&gt;&lt;/button&gt;
				&lt;h4 class="modal-title"&gt;Modal Title&lt;/h4&gt;
			&lt;/div&gt;
			&lt;div class="modal-body"&gt;
				 Modal body goes here
			&lt;/div&gt;
			&lt;div class="modal-footer"&gt;
				&lt;button type="button" class="btn default" data-dismiss="modal"&gt;Close&lt;/button&gt;
				&lt;button type="button" class="btn blue"&gt;Save changes&lt;/button&gt;
			&lt;/div&gt;
		&lt;/div&gt;
	&lt;/div&gt;
&lt;/div&gt;	
					</code></pre>
				</div>
			</div>
		</div>
	</div>
</div>