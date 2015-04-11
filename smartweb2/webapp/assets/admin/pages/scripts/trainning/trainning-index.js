/**
 * <编写教材> 脚本
 */
var TrainningIndex = function () {
	
	// servlet mapping url
	var basepath = '';
	
	// 弹出文件夹编辑窗口
	var showFolderWindow = function(isUpdate, selectNode) {
		if (isUpdate){
			// 更新场合
			$("#hf_folderid").val(selectNode["id"]);
			$('#txt_foldername').val(selectNode["text"]);
		} else {
			// 新增场合，清空输入框上次现场的内容
			$("#hf_folderid").val("");
			$('#txt_foldername').val("");
		}
 	    $("#hf_parentid").val(selectNode["id"]);
		$("#folder_modal").modal('show');
	};
	
	// 新增文件夹
	var addNode = function(obj) {
		var ref = $('#doc_tree').jstree(true);
		var sel = ref.get_selected();
		
		if(!sel.length) { return false; }
		sel = sel[0];
		
		var id = 'F' + obj['folder']['standardFolderId'];
		var text = obj['folder']['folderName'];
		var parentId = obj['folder']['parentId'];
		
		ref.create_node(sel, 
			{id: id, text: text, parentId: parentId, type : "default" }, 
			"first", 
			function (new_node) {
				ref.deselect_node(sel);
				ref.select_node(new_node);
				//setTimeout(function () { ref.edit(new_node); }, 0);
			});
	};

    return {
    	
        // 页面初始化入口
        init: function (_basepath) {
        	basepath = _basepath;
        	$('#page_icon').attr('class', 'icon-pencil bold font-green');
        	$('#page_name').text('编写教材');
           	$('#page_caption').text('培训／编写教材');
        },
        
        // jstree 文档树 构造
        maketree: function() {
        	$('#doc_tree').jstree({
    			"core": {
    				"animation" : 0,
    				"themes": {'responsive':false, 'variant':'medium', 'stripes':false},
    				'data' : {
    					'url': basepath + 'trainning/doctree',
    					'data': function(node) {return { 'parent' : node.id };}
    				},
    				"check_callback": function(o, n, p, i, m) {
    					if(m && m.dnd && m.pos !== 'i') { return false; }
    					if(o === "move_node" || o === "copy_node") {
    						if(this.get_node(n).parent === this.get_node(p).id) { return false; }
    					}
    					return true;
    				},
    			},
    			"types": {
    				"#": { "max_children" : 1, "max_depth" : 15, "valid_children" : ["root"] },
    				"root": { "icon" : "fa fa-book", "valid_children" : ["default"] },
    				"default" : {"icon" : "fa fa-folder icon-state-success icon-lg"},
    				"file": { "icon" : "fa fa-file", "valid_children" : [] }
    			},
    			"plugins": [ "contextmenu", "dnd", "search", "sort", "state", "types", "wholerow" ],
    			"contextmenu": {
    				'items' : function(node) {
    					var tmp = $.jstree.defaults.contextmenu.items();
    					delete tmp.ccp;
    					tmp.create = {
    						"label"				: "新建",
    						"icon"				: "fa fa-plus-square",
    						"action"			: function (data) {
    							var inst = $.jstree.reference(data.reference),
    								obj = inst.get_node(data.reference);
    							showFolderWindow(false, obj);
    						}
    					};
    					tmp.rename = {
    						"label"				: "重命名",
    						"icon"				: "fa fa-pencil-square",
    						"action"			: function (data) {
    							var inst = $.jstree.reference(data.reference),
    								obj = inst.get_node(data.reference);
    							showFolderWindow(true, obj);
    						}
    					};
    					tmp.remove = {
    						"label"				: "删除",
    						"icon"				: "fa fa-minus-square",
    						"action"			: function (data) {
    							var inst = $.jstree.reference(data.reference),
    								obj = inst.get_node(data.reference);
    							alert('test remove');
    						}
//     						action: function(t) {
//     	                        var i = e.jstree.reference(t.reference), s = i.get_node(t.reference);
//     	                        i.is_selected(s) ? i.delete_node(i.get_selected()) : i.delete_node(s)
//     	                    }
    					};
    					//如果是文件节点，删除右键菜单项内容
    					if(this.get_type(node) === "file") {
    						delete tmp.create;
    						delete tmp.rename;
    						delete tmp.remove;
    					}
    					return tmp;
    				}
    			} // end of "contextmenu": {
    		}); // end of $('#doc_tree').jstree(
        }, // end of maketree
        
        // 文件夹数据保存到数据库
        saveFolder : function(node) {
         	$.ajax({
    		  type: 'POST',
    		  url: basepath + 'trainning/saveFolder',
    		  data: {
    		      id: $('#hf_folderid').val(),
    		      folderName: $('#txt_foldername').val(),
    		      parentId: $('#hf_parentid').val(),
    		  },
    		  beforeSend:function() {
    		  },
    		  complete:function(){
    		  },
    		  success: function(data) {//dataObj[对象key][对象属性]
    			  if (data['code'] == 0) {
    				  //添加节点到树中并且关闭弹出框
    				  addNode(data['data']);
    				  $("#folder_modal").modal('hide');
    			  } else {
    				  Smartweb.alert_dialog({
    					  type: 'error',
    					  title: '服务器端错误',
    					  message: data['data']['errmsg']
    				  }, function() {
    		    		//do something. ex:让焦点定位到名称输入框中
    				  });
    			  }
    		  },
    		  error: function(data) {
    			  var dataObj = eval("(" + data.responseText + ")");
    			  var errmsg = dataObj['data']['errmsg'];
    			  Smartweb.displayAjaxPageError(errmsg);
    		  	}
         	});	
     	},//end of saveFolder
       
    };

}();
