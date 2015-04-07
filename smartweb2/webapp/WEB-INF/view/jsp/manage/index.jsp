<#include "../ftl/main_layout.ftl">
<#macro page_style>
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/jquery-easyui/easyui.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/jquery-easyui/icon.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"/>
</#macro>

<#macro page_content>
<#include "report-edit-modal.jsp">
<div class="row">
	<div class="col-md-8">
		<div class="portlet delicate left">
			<div class="portlet-title">
				<div class="caption"><i class="fa fa-twitter"></i>报告列表</div>
				<div class="actions">
					<div class="btn-group" data-toggle="buttons">
						<a href="javascript:;" class="btn btn-default btn-sm" onclick="ManageIndex.reportEdit()">
						<i class="fa fa-pencil"></i> 修改 </a>
						<a href="javascript:;" class="btn btn-default btn-sm">
						<i class="fa fa-paper-plane"></i> 发布 </a>
						<a href="javascript:;" class="btn btn-default btn-sm">
						<i class="fa fa-download"></i> 下载 </a>
					</div>
					<div class="btn-group" data-toggle="buttons">
						<a href="javascript:;" class="btn grey btn-sm">
						<i class="fa fa-undo"></i> 取消发布 </a>
						<a href="javascript:;" class="btn grey btn-sm">
						<i class="fa fa-trash"></i> 删除 </a>
					</div>
					<a  href="javascript:;" class="btn default btn-sm collapse-expand" onclick="ManageIndex.expandLeft(this)">
					<i class="fa fa-angle-double-right"></i></a>
				</div>
			</div>
			<div class="portlet-body">
				<table id="tg1" title="" class="easyui-treegrid" style="width:100%;height:450px"
				        data-options="
				            data: ManageIndex.getJsonData(),
				            method: 'get',
				            rownumbers: false,
				            idField: 'id',
				            treeField: 'name',
				            onLoadSuccess: function(row) {
								$(this).treegrid('enableDnd', row?row.id:null);
							}">
				    <thead>
						<tr>
							<th data-options="field:'name'" width="25%">名称</th>
							<th data-options="field:'status'" width="8%">状态</th>
							<th data-options="field:'secret'" width="5%" align="center">密级</th>
							<th data-options="field:'code'" width="9%">编码</th>
							<th data-options="field:'intro'" width="15%">摘要</th>
							<th data-options="field:'check'" width="8%">审核人</th>
							<th data-options="field:'checkercon'" width="10%">审核意见</th>
							<th data-options="field:'date'" width="20%">更新时间</th>
						</tr>
				    </thead>
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-4" id="rightdiv">
		<div class="portlet delicate right">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-puzzle-piece"></i>报告模版
				</div>
				<div class="actions">
					<a href="javascript:;" class="btn default btn-sm" onclick="ManageIndex.expandLeft($('.collapse-expand'))">
					<i class="fa fa-times"></i></a>
				</div>
			</div>
			<div class="portlet-body">
				<table id="tg2" title="" class="easyui-treegrid" style="width:100%;height:450px"
				        data-options="
				            data: ManageIndex.getRightJsonData(),
				            method: 'get',
				            rownumbers: false,
				            idField: 'id',
				            treeField: 'name'">
				    <thead>
						<tr>
							<th data-options="field:'name'" width="60%">名称</th>
							<th data-options="field:'department'" width="40%">部门</th>
						</tr>
				    </thead>
				</table>
			</div>
		</div>
	</div>
</div>
</#macro>

<#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jquery-easyui/jquery.easyui.min.js"></script>
<script src="${BASEPATH}assets/global/plugins/jquery-easyui/treegrid-dnd.js"></script>
<script src="${BASEPATH}assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"></script>
<script src="${BASEPATH}assets/admin/pages/scripts/manage/manage-index.js"></script>
<script>
    jQuery(document).ready(function() {
    	ManageIndex.init();
    });
</script>
</#macro>