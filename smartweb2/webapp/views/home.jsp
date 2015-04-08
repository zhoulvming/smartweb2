<#include "ftl/main_layout.ftl">
<#macro page_style>
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/select2/select2.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/bootstrap-datepicker/css/datepicker.css">
</#macro>

<#macro page_content>
<!-- BEGIN PAGE HEADER-->

<!-- END PAGE HEADER-->
<div class="portlet solid grey-steel">

	<div class="portlet-title">
		<div class="caption" data-toggle="collapse" data-target=".todo-project-list-content">
			<!-- <span class="caption-subject font-green-sharp">查询条件 </span> -->
			<!-- <span class="caption-helper">输入检索条件过滤数据</span> -->
			<div class="btn-group" data-toggle="buttons">
				<!-- "max-width:none" must be added, or ie8 can't play well. -->
				<label class="btn grey-steel active btn-sm" style="max-width:none">
				<input type="radio" class="toggle"><i class="fa fa-adn font-yellow-gold"></i> 按平均分排序 </label>
				<label class="btn grey-steel btn-sm" style="max-width:none">
				<input type="radio" class="toggle"><i class="fa fa-eye font-green"></i>  按阅读数排序${base } </label>
			</div>
		</div>
		<div class="actions">
			<button type="button" class="btn btn-success btn-sm"><i class="fa fa-sign-out"></i> 导出&nbsp;&nbsp;</button>
		</div>
	</div>
	<div class="portlet-body">
		<div class="form-body single-line-form">
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<label class="control-label col-md-3">报告日期：&nbsp;</label>
						<div class="col-md-9 input-group date-picker input-daterange" data-date="10/11/2012" data-date-format="yyyy/mm/dd">
							<input type="text" class="input-icon input-sm form-control" name="product[available_from]">
							<span class="input-group-addon"> to </span>
							<input type="text" class="input-icon input-sm form-control" name="product[available_to]">
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="col-md-3 control-label">部门：&nbsp;</label>
						<div class="col-md-9" style="padding:0">
							<select class="input-icon form-control input-sm" name="product[tax_class]">
								<option value="">请选择...</option>
								<option value="1">系统用户</option>
								<option value="2">部门经理</option>
								<option value="3">项目经理</option>
								<option value="4">财务主管</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="col-md-3 control-label">分类：&nbsp;</label>
						<div class="col-md-9">
							<select class="input-icon form-control input-sm" name="product[tax_class]">
								<option value="">请选择...</option>
								<option value="1">系统用户</option>
								<option value="2">部门经理</option>
								<option value="3">项目经理</option>
								<option value="4">财务主管</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<button type="submit" class="btn btn-success btn-sm action-button"><i class="fa fa-search"></i> 查询&nbsp;&nbsp;</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row margin-top-10">
	<div class="col-md-12">
		<div class="listview">
			<div class="listview-item listview-item-border-green">
				<img class="listview-item-userpic pull-left" src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				<div class="listview-item-title">这里显示报告的名称报告的名称报告的名称报告的名称报告的名称</div>
				<div class="listview-item-username">
					<ul style="list-style:none;margin:0">
						<li style="display:inline">
							赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00&nbsp;&nbsp;</small>
						</li>
						<li style="display:inline">
							<span class="listview-badge badge badge-roundless font-grey-gallery">
								<i class="fa fa-lock font-red"></i> 秘密&nbsp;&nbsp;
								<i class="fa fa-wrench font-blue"></i> 维修手册
							</span>
						</li>
					</ul>
					<!-- 赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00</small> -->
				</div>
				<div class="listview-item-text">
					<p>注意：当为这个认证模型设计数据库结构时，密码字段至少有60个字符宽度。同样，在开始之前，请先确认您的 users (或其他同义) 数据库表包含一个名为 remember_token 长度为 100 的string类型、可接受 null 的字段。这个字段将会被用来储存「记住我」的 session token。也可以通过在迁移文件中使用 $table->rememberToken(); 方法。 当然， Laravel 5 自带的 migrations 里已经设定了这些字段。</p>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">审核人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar2.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">协作人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar3.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar4.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-item-attach">
					<span class="listview-badge badge badge-roundless">
						<i class="fa fa-star font-yellow-gold"></i>&nbsp;&nbsp;总分：8分，平均分：3分
					</span>
				</div>
				<div class="listview-item-social">
					<a href="javascript:;"><i class="fa fa-eye"></i> 阅读(10)</a>
					<a href="javascript:;"><i class="fa fa-comment"></i> 评论(3)</a>
					<a href="javascript:;"><i class="fa fa-search"></i> 查看</a>
					<a href="javascript:;"><i class="fa fa-download"></i> 下载</a>
				</div>
			</div>

			<div class="listview-item listview-item-border-green">
				<img class="listview-item-userpic pull-left" src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				<div class="listview-item-title">这里显示报告的名称报告的名称报告的名称报告的名称报告的名称</div>
				<div class="listview-item-username">
					<ul style="list-style:none;margin:0">
						<li style="display:inline">
							赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00&nbsp;&nbsp;</small>
						</li>
						<li style="display:inline">
							<span class="listview-badge badge badge-roundless font-grey-gallery">
								<i class="fa fa-lock font-red"></i> 秘密&nbsp;&nbsp;
								<i class="fa fa-wrench font-blue"></i> 维修手册
							</span>
						</li>
					</ul>
					<!-- 赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00</small> -->
				</div>
				<div class="listview-item-text">
					<p>注意：当为这个认证模型设计数据库结构时，密码字段至少有60个字符宽度。同样，在开始之前，请先确认您的 users (或其他同义) 数据库表包含一个名为 remember_token 长度为 100 的string类型、可接受 null 的字段。这个字段将会被用来储存「记住我」的 session token。也可以通过在迁移文件中使用 $table->rememberToken(); 方法。 当然， Laravel 5 自带的 migrations 里已经设定了这些字段。</p>
				</div>
				<div class="listview-item-intropic">
					<img src="${BASEPATH}assets/admin/pages/img/intropic1.png">
					<img src="${BASEPATH}assets/admin/pages/img/intropic2.jpg">
					<img src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">审核人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar2.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">协作人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar3.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar4.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-item-attach">
					<span class="listview-badge badge badge-roundless">
						<i class="fa fa-star-half-empty font-blue"></i> &nbsp;&nbsp;总分：5分，平均分：3分
					</span>
				</div>
				<div class="listview-item-social">
					<a href="javascript:;"><i class="fa fa-eye"></i> 阅读(10)</a>
					<a href="javascript:;"><i class="fa fa-comment"></i> 评论(3)</a>
					<a href="javascript:;"><i class="fa fa-search"></i> 查看</a>
					<a href="javascript:;"><i class="fa fa-download"></i> 下载</a>
				</div>
			</div>
			
			<div class="listview-item listview-item-border-green">
				<img class="listview-item-userpic pull-left" src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				<div class="listview-item-title">这里显示报告的名称报告的名称报告的名称报告的名称报告的名称</div>
				<div class="listview-item-username">
					<ul style="list-style:none;margin:0">
						<li style="display:inline">
							赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00&nbsp;&nbsp;</small>
						</li>
						<li style="display:inline">
							<span class="listview-badge badge badge-roundless font-grey-gallery">
								<i class="fa fa-lock font-red"></i> 秘密&nbsp;&nbsp;
								<i class="fa fa-wrench font-blue"></i> 维修手册
							</span>
						</li>
					</ul>
					<!-- 赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00</small> -->
				</div>
				<div class="listview-item-text">
					<p>注意：当为这个认证模型设计数据库结构时，密码字段至少有60个字符宽度。同样，在开始之前，请先确认您的 users (或其他同义) 数据库表包含一个名为 remember_token 长度为 100 的string类型、可接受 null 的字段。这个字段将会被用来储存「记住我」的 session token。也可以通过在迁移文件中使用 $table->rememberToken(); 方法。 当然， Laravel 5 自带的 migrations 里已经设定了这些字段。</p>
				</div>
				<div class="listview-item-intropic">
					<img src="${BASEPATH}assets/admin/pages/img/intropic1.png">
					<img src="${BASEPATH}assets/admin/pages/img/intropic2.jpg">
					<img src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">审核人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar2.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">协作人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar3.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar4.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-item-attach">
					<span class="listview-badge badge badge-roundless">
						<i class="fa fa-star-half-empty font-blue"></i> &nbsp;&nbsp;总分：5分，平均分：3分
					</span>
				</div>
				<div class="listview-item-social">
					<a href="javascript:;"><i class="fa fa-eye"></i> 阅读(10)</a>
					<a href="javascript:;"><i class="fa fa-comment"></i> 评论(3)</a>
					<a href="javascript:;"><i class="fa fa-search"></i> 查看</a>
					<a href="javascript:;"><i class="fa fa-download"></i> 下载</a>
				</div>
			</div>

			<div class="listview-item listview-item-border-green">
				<img class="listview-item-userpic pull-left" src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				<div class="listview-item-title">这里显示报告的名称报告的名称报告的名称报告的名称报告的名称</div>
				<div class="listview-item-username">
					<ul style="list-style:none;margin:0">
						<li style="display:inline">
							赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00&nbsp;&nbsp;</small>
						</li>
						<li style="display:inline">
							<span class="listview-badge badge badge-roundless font-grey-gallery">
								<i class="fa fa-lock font-red"></i> 秘密&nbsp;&nbsp;
								<i class="fa fa-wrench font-blue"></i> 维修手册
							</span>
						</li>
					</ul>
					<!-- 赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00</small> -->
				</div>
				<div class="listview-item-text">
					<p>注意：当为这个认证模型设计数据库结构时，密码字段至少有60个字符宽度。同样，在开始之前，请先确认您的 users (或其他同义) 数据库表包含一个名为 remember_token 长度为 100 的string类型、可接受 null 的字段。这个字段将会被用来储存「记住我」的 session token。也可以通过在迁移文件中使用 $table->rememberToken(); 方法。 当然， Laravel 5 自带的 migrations 里已经设定了这些字段。</p>
				</div>
				<div class="listview-item-intropic">
					<img src="${BASEPATH}assets/admin/pages/img/intropic1.png">
					<img src="${BASEPATH}assets/admin/pages/img/intropic2.jpg">
					<img src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">审核人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar2.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">协作人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar3.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar4.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-item-attach">
					<span class="listview-badge badge badge-roundless">
						<i class="fa fa-star-half-empty font-blue"></i> &nbsp;&nbsp;总分：5分，平均分：3分
					</span>
				</div>
				<div class="listview-item-social">
					<a href="javascript:;"><i class="fa fa-eye"></i> 阅读(10)</a>
					<a href="javascript:;"><i class="fa fa-comment"></i> 评论(3)</a>
					<a href="javascript:;"><i class="fa fa-search"></i> 查看</a>
					<a href="javascript:;"><i class="fa fa-download"></i> 下载</a>
				</div>
			</div>




			<div class="listview-item listview-item-border-green">
				<img class="listview-item-userpic pull-left" src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				<div class="listview-item-title">这里显示报告的名称报告的名称报告的名称报告的名称报告的名称</div>
				<div class="listview-item-username">
					<ul style="list-style:none;margin:0">
						<li style="display:inline">
							赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00&nbsp;&nbsp;</small>
						</li>
						<li style="display:inline">
							<span class="listview-badge badge badge-roundless font-grey-gallery">
								<i class="fa fa-lock font-red"></i> 秘密&nbsp;&nbsp;
								<i class="fa fa-wrench font-blue"></i> 维修手册
							</span>
						</li>
					</ul>
					<!-- 赵文卓&nbsp;&nbsp;<small class="text-muted">2015-01-11 22:00</small> -->
				</div>
				<div class="listview-item-text">
					<p>注意：当为这个认证模型设计数据库结构时，密码字段至少有60个字符宽度。同样，在开始之前，请先确认您的 users (或其他同义) 数据库表包含一个名为 remember_token 长度为 100 的string类型、可接受 null 的字段。这个字段将会被用来储存「记住我」的 session token。也可以通过在迁移文件中使用 $table->rememberToken(); 方法。 当然， Laravel 5 自带的 migrations 里已经设定了这些字段。</p>
				</div>
				<div class="listview-item-intropic">
					<img src="${BASEPATH}assets/admin/pages/img/intropic1.png">
					<img src="${BASEPATH}assets/admin/pages/img/intropic2.jpg">
					<img src="${BASEPATH}assets/admin/layout/img/avatar1.jpg">
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">审核人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar2.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-controls pull-left">
					<div class="tiles">
						<span class="pull-left bold font-red" style="margin-top:20px;">协作人：</span>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar3.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
						<div class="tile">
							<div class="tile-body">
								<img class="userpic" src="${BASEPATH}assets/admin/layout/img/avatar4.jpg">
							</div>
							<div class="tile-object">
								<div class="username">赵文卓</div>
							</div>
						</div>
					</div>
				</div>
				<div class="listview-item-attach">
					<span class="listview-badge badge badge-roundless">
						<i class="fa fa-star-half-empty font-blue"></i> &nbsp;&nbsp;总分：5分，平均分：3分
					</span>
				</div>
				<div class="listview-item-social">
					<a href="javascript:;"><i class="fa fa-eye"></i> 阅读(100)</a>
					<a href="javascript:;"><i class="fa fa-comment"></i> 评论(333)</a>
					<a href="javascript:;"><i class="fa fa-search"></i> 查看</a>
					<a href="javascript:;"><i class="fa fa-download"></i> 下载</a>
				</div>
			</div>

		</div>
	</div>
</div>



</#macro>

<#macro page_script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script>
    jQuery(document).ready(function() {

     	//init datepickers
    	$('.date-picker').datepicker({
            rtl: Smartweb.isRTL(),
            autoclose: true
        });
     	
    });
</script>
</#macro>