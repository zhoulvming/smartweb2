<div class="modal fade" id="report-edit-modal" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title"><i class="fa fa-pencil-square-o"></i> 报告编辑</h4>
			</div>
			<div class="modal-body">
				 <form action="#" class="form-horizontal single-line-form">
					<div class="form-body">
						<div class="form-group input-sm">
							<label class="col-md-2 control-label">名称：</label>
							<div class="col-md-9 margin-bottom-10">
								<input id="txt_name" type="text" class="form-control" placeholder="输入报告名称">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group input-sm">
							<label class="col-md-2 control-label">编码：</label>
							<div class="col-md-9 margin-bottom-10">
								<input type="text" class="form-control" placeholder="输入报告编码">
								<span class="help-block"><small>请输入合法的编码格式 123-123</small></span>
							</div>
						</div>
						<div class="form-group input-sm">
							<label class="control-label col-md-2">报告：</label>
							<div class="col-md-9 margin-bottom-10">
								<div class="fileinput fileinput-new" data-provides="fileinput">
									<div class="input-group">
										<div class="form-control uneditable-input span3" data-trigger="fileinput">
											<i class="fa fa-file fileinput-exists"></i>&nbsp; <span class="fileinput-filename">
											</span>
										</div>
										<span class="input-group-addon btn default btn-file">
											<a href="javascript:;" class="fileinput-new">选择</a>
											<a href="javascript:;" class="fileinput-exists">重选</a>
											<input class="" type="file" name="...">
										</span>
										<a href="javascript:;" class="input-group-addon btn red fileinput-exists" data-dismiss="fileinput">清除</a>
									</div>
								</div>
							</div>
						</div>						
						<div class="form-group input-sm last">
							<label class="col-md-2 control-label">摘要：</label>
							<div class="col-md-9">
								<textarea class="intpu-sm input-icon form-control maxlength-handler" rows="4" name="user_description" maxlength="255"></textarea>
								<span class="help-block">最多255个字符 </span>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn blue"><i class="fa fa-check"></i> 确定&nbsp;&nbsp;</button>
				<button type="button" class="btn default" data-dismiss="modal"><i class="fa fa-times"></i> 取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</div>
</div>