<#include "../ftl/main_layout.ftl">
<#macro page_style>
<link rel="stylesheet" href="${BASEPATH}assets/global/plugins/jstree/dist/themes/default/style.min.css"/>
</#macro>

<#macro page_content>
<div class="row">
	<div class="col-md-8">
		<div class="portlet delicate left">
			<div class="portlet-body">
				
				<div id="doc_tree"></div>
				<button onclick="addNode()" class="btn btn-success">新增</button>
				
			</div>
		</div>
	</div>
</div>

</#macro> <#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jstree310/jstree.min.js"></script>
<script>
	$(document).ready(function() {
		$('#doc_tree')
		.jstree({
			"core": {
				"animation" : 0,
				"check_callback" : true,
				"themes" : { "stripes" : true },
				'data' : {
					'url' : function (node) {
						return node.id === '#' ? 'assets/data/ajax_demo_roots.json' : 'assets/data/ajax_demo_children.json';
					},
					'data' : function (node) {
						return { 'id' : node.id };
					}
				}
			},
			"types": {
				"#": { "max_children" : 1, "max_depth" : 5, "valid_children" : ["root"] },
				"root": { "icon" : "glyphicon glyphicon-book", "valid_children" : ["default"] },
				//"default": { "valid_children" : ["default","file"] },
				
				"default" : {
					"icon" : "fa fa-folder icon-state-success icon-lg"
				},
				
				"file": { "icon" : "glyphicon glyphicon-file", "valid_children" : [] }
			},
			"plugins": [ "contextmenu", "dnd", "search", "state", "types", "wholerow" ],
			"contextmenu": {
				"items": {
					"Create": {
						"label": "新建文件夹",
						"action" :function (data) {
							addNode();
						}
					}
				}
			}
			
		});
	});
	
	function addNode() {
		var ref = $('#doc_tree').jstree(true);
		var sel = ref.get_selected();
		
		//if(!sel.length) { return false; }
		sel = sel[0];
		
		//sel = ref.create_node(sel, {"type":"file"});// file node
		sel = ref.create_node(sel, {});// folder node
		//alert(sel);
		if(sel) {
			ref.edit(sel);
		}
	}
</script>
</#macro>