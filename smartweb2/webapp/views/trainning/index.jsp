<#include "../ftl/main_layout.ftl">
<#macro page_style>
<link rel="stylesheet" href="${BASEPATH}assets/global/plugins/jstree/dist/themes/default/style.min.css"/>
</#macro>

<#macro page_content>
<#include "folder_modal.jsp">
<div class="row">
	<div class="col-md-5">
		<!-- <div class="portlet" style="border: 1px solid #ccc"> -->
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"><i class="fa fa-twitter"></i>建模规范</div>
				<div class="actions">
					<a  href="javascript:;" class="btn default btn-sm collapse-expand" onclick="">
					<i class="fa fa-angle-double-right"></i></a>
				</div>
			</div>
			<div class="portlet-body">
				<div id="doc_tree"></div>
			</div>
		</div>
	</div>
	<div class="col-md-7" style="margin-left:-15px;">
		<!-- <div class="portlet" style="border: 1px solid #ccc"> -->
		<div class="portlet box grey-cascade" style="margin-right:-15px;">
			<div class="portlet-title">
				<div class="caption"><i class="fa fa-file"></i>文档内容</div>
				<div class="actions">
					<a href="javascript:;" class="btn default btn-sm" onclick="">
					<i class="fa fa-times"></i></a>
				</div>
			</div>
			<div class="portlet-body">
				<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
			</div>
		</div>
	</div>
</div>



</#macro> <#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jstree/dist/jstree.min.js"></script>
<script src="${BASEPATH}assets/admin/pages/scripts/trainning/trainning-index.js"></script>

<script>
	$(document).ready(function() {
		TrainningIndex.init('${BASEPATH}');
		TrainningIndex.maketree();
	});
</script>
</#macro>