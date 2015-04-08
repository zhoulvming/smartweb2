<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link href="${BASEPATH}assets/admin/layout/css/help.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="${BASEPATH}assets/global/plugins/jstree/dist/themes/default/style.min.css"/>
</#macro>

<#macro page_content>

<div class="row">
	<div class="col-md-10">
		<div class="portlet light">
			<div class="portlet-title">
				<div class="caption font-purple-plum">
					<i class="icon-speech font-purple-plum"></i>
					<span class="caption-subject bold uppercase"> 树控件</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">


				<!-- BEGIN Default TREE  -->
				<div id="intro1" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Default Tree</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="reload" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="remove" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						<div id="tree_1" class="tree-demo">
							<ul>
								<li>
									 Root node 1
									<ul>
										<li data-jstree='{ "selected" : true }'>
											<a href="javascript:;">
											Initially selected </a>
										</li>
										<li data-jstree='{ "icon" : "fa fa-briefcase icon-state-success " }'>
											 custom icon URL
										</li>
										<li data-jstree='{ "opened" : true }'>
											 initially open
											<ul>
												<li data-jstree='{ "disabled" : true }'>
													 Disabled Node
												</li>
												<li data-jstree='{ "type" : "file" }'>
													 Another node
												</li>
											</ul>
										</li>
										<li data-jstree='{ "icon" : "fa fa-warning icon-state-danger" }'>
											 Custom icon class (bootstrap)
										</li>
									</ul>
								</li>
								<li data-jstree='{ "type" : "file" }'>
									<a href="http://www.jstree.com">
									Clickanle link node </a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- END Default TREE -->
			
				<!-- BEGIN Checkable TREE  -->
				<div id="intro2" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Checkable Tree</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="reload" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="remove" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						<div id="tree_2" class="tree-demo">
						</div>
					</div>
				</div>
				<!-- END Checkable TREE -->
			
			
				<!-- BEGIN Contextual Menu with Drag & Drop TREE  -->
				<div id="intro3" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Contextual Menu with Drag & Drop</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="reload" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="remove" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						<div id="tree_3" class="tree-demo">
						</div>
					</div>
				</div>
				<!-- END Contextual Menu with Drag & Drop -->
				<!-- BEGIN Ajax Drag & Drop TREE  -->
				<div id="intro4" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Ajax Tree with Drag & Drop</span>
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="reload" data-original-title="" title="">
							</a>
							<a href="javascript:;" class="remove" data-original-title="" title="">
							</a>
						</div>
					</div>
					<div class="portlet-body">
						<div id="tree_4" class="tree-demo"></div>
					</div>
				</div>
				<!-- END Ajax Drag & Drop TREE -->
			</div>
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro1" ><i class="fa fa-tree"></i>  Default</a></li>
				<li><a href="#intro2"><i class="fa fa-gear"></i> Checkable</a></li>
				<li><a href="#intro3"><i class="fa fa-gear"></i> Contextual Menu</a></li>
				<li><a href="#intro4"><i class="fa fa-gear"></i> Drag&Drop</a></li>
			</ul>
		</div>
	</div>
	
</div>


</#macro>

<#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jquery.nav.js" type="text/javascript"></script>
<script src="${BASEPATH}assets/global/plugins/jstree/dist/jstree.min.js"></script>
<script>

	/* var offset = 10; 
	var hash = globalHash; 
	if (hash) {
		scrollBodyTopTo($("div#c_"+hash).offset().top-offset); 
	}  */
	function scrollBodyTopTo(pos) {
		$("html,body").animate({scrollTop:pos}); 
	}

    var testTree1 = function () {

        $('#tree_1').jstree({
            "core" : {
                "themes" : {
                    "responsive": false
                }            
            },
            "types" : {
                "default" : {
                    "icon" : "fa fa-folder icon-state-warning icon-lg"
                },
                "file" : {
                    "icon" : "fa fa-file icon-state-warning icon-lg"
                }
            },
            "plugins": ["types"]
        });

        // handle link clicks in tree nodes(support target="_blank" as well)
        $('#tree_1').on('select_node.jstree', function(e,data) { 
            var link = $('#' + data.selected).find('a');
            if (link.attr("href") != "#" && link.attr("href") != "javascript:;" && link.attr("href") != "") {
                if (link.attr("target") == "_blank") {
                    link.attr("href").target = "_blank";
                }
                document.location.href = link.attr("href");
                return false;
            }
        });
    };

    var testTree2 = function () {
        $('#tree_2').jstree({
            'plugins': ["wholerow", "checkbox", "types"],
            'core': {
                "themes" : {
                    "responsive": false
                },    
                'data': [{
                        "text": "Same but with checkboxes",
                        "children": [{
                            "text": "initially selected",
                            "state": {
                                "selected": true
                            }
                        }, {
                            "text": "custom icon",
                            "icon": "fa fa-warning icon-state-danger"
                        }, {
                            "text": "initially open",
                            "icon" : "fa fa-folder icon-state-default",
                            "state": {
                                "opened": true
                            },
                            "children": ["Another node"]
                        }, {
                            "text": "custom icon",
                            "icon": "fa fa-warning icon-state-warning"
                        }, {
                            "text": "disabled node",
                            "icon": "fa fa-check icon-state-success",
                            "state": {
                                "disabled": true
                            }
                        }]
                    },
                    "And wholerow selection"
                ]
            },
            "types" : {
                "default" : {
                    "icon" : "fa fa-folder icon-state-warning icon-lg"
                },
                "file" : {
                    "icon" : "fa fa-file icon-state-warning icon-lg"
                }
            }
        });
    };	
	
    var testTree3 = function() {
        $("#tree_3").jstree({
            "core" : {
                "themes" : {
                    "responsive": false
                }, 
                // so that create works
                "check_callback" : true,
                'data': [{
                        "text": "Parent Node",
                        "children": [{
                            "text": "Initially selected",
                            "state": {
                                "selected": true
                            }
                        }, {
                            "text": "Custom Icon",
                            "icon": "fa fa-warning icon-state-danger"
                        }, {
                            "text": "Initially open",
                            "icon" : "fa fa-folder icon-state-success",
                            "state": {
                                "opened": true
                            },
                            "children": [
                                {"text": "Another node", "icon" : "fa fa-file icon-state-warning"}
                            ]
                        }, {
                            "text": "Another Custom Icon",
                            "icon": "fa fa-warning icon-state-warning"
                        }, {
                            "text": "Disabled Node",
                            "icon": "fa fa-check icon-state-success",
                            "state": {
                                "disabled": true
                            }
                        }, {
                            "text": "Sub Nodes",
                            "icon": "fa fa-folder icon-state-danger",
                            "children": [
                                {"text": "Item 1", "icon" : "fa fa-file icon-state-warning"},
                                {"text": "Item 2", "icon" : "fa fa-file icon-state-success"},
                                {"text": "Item 3", "icon" : "fa fa-file icon-state-default"},
                                {"text": "Item 4", "icon" : "fa fa-file icon-state-danger"},
                                {"text": "Item 5", "icon" : "fa fa-file icon-state-info"}
                            ]
                        }]
                    },
                    "Another Node"
                ]
            },
            "types" : {
                "default" : {
                    "icon" : "fa fa-folder icon-state-warning icon-lg"
                },
                "file" : {
                    "icon" : "fa fa-file icon-state-warning icon-lg"
                }
            },
            "state" : { "key" : "demo2" },
            "plugins" : [ "contextmenu", "dnd", "state", "types" ]
        });	
    }
	
	
    var testTree4 = function() {

        $("#tree_4").jstree({
            "core" : {
                "themes" : {
                    "responsive": false
                }, 
                "check_callback" : true,
                'data' : {
                    'url' : function (node) {
                      return '${BASEPATH}dashboard/jstree/ajax';
                    },
                    'data' : function (node) {
                      return { 'parent' : node.id };
                    }
                }
            },
            "types" : {
                "default" : {
                    "icon" : "fa fa-folder icon-state-warning icon-lg"
                },
                "file" : {
                    "icon" : "fa fa-file icon-state-warning icon-lg"
                }
            },
            "state" : { "key" : "demo3" },
            "plugins" : [ "dnd", "state", "types" ]
        });
    
    };
	
	
	$(document).ready(function(){
		
		$('.theme-panel').addClass('hide');
		$('#nav').onePageNav();
		
		testTree1();
		testTree2();
		testTree3();
		testTree4();
	});
	
	

</script>
</#macro>