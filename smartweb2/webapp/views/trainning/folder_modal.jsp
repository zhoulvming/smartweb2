<div class="modal fade" id="folder_modal" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title"><i class="fa fa-book font-green"></i> 新建文件夹</h4>
			</div>
			<div class="modal-body">
				 <form action="#" class="form-horizontal single-line-form">
				 	<!-- 隐藏字段用于存储folderid -->
					<input id="hf_folderid" name="hf_folderid" type="hidden" value="">
					<!-- 隐藏字段用于存储parentid -->
					<input id="hf_parentid" name="hf_parentid" type="hidden" value="">
					<div class="form-body">
						<div class="form-group input-sm">
							<label class="col-md-2 control-label">名称：</label>
							<div class="col-md-9 margin-bottom-10">
								<input id="txt_foldername" type="text" class="form-control" placeholder="输入报告名称">
								<span class="help-block"></span>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn blue" onclick="TrainningIndex.saveFolder()"><i class="fa fa-check"></i> 确定&nbsp;&nbsp;</button>
				<button type="button" class="btn default" data-dismiss="modal"><i class="fa fa-times"></i> 取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</div>
</div>