/**
 * <管理页面> 脚本
 */
var ManageIndex = function () {
	
	var rightJsonData = [{
		"id":1,
		"name":"测试组",
		"children":[{
			"id":11,
			"name":"2015质量大会",
			"department":"测试组",
		},{
			"id":12,
			"name":"集成测试报告",
			"department":"测试组",
		}],
		"state":"opened"
	},{
		"id":2,
		"name":"研发部门",
		"children":[{
			"id":21,
			"name":"2015质量大会",
			"department":"研发部门",
		},{
			"id":22,
			"name":"集成测试报告",
			"department":"研发部门",
		}],
		"state":"opened"
	}];
	
	var jsondata = [{
		"id":1,
		"name":"我的报告",
		"date":"2015-04-05 22:22",
		"children":[{
			"id":2,
			"name":"维修手册",
			"date":"03/20/2010",
			"children":[{
				"id":21,
				"name":"维修手册11111",
				"status":"待审核",
				"secret":1,
				"code":"111-11",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"01/13/2010",
			},{
				"id":22,
				"name":"维修手册2222",
				"status":"待审核",
				"secret":1,
				"code":"111-11",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"01/13/2010",
			},{
				"id":23,
				"name":"维修手册3333",
				"status":"待审核",
				"secret":1,
				"code":"111-11",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"01/13/2010",
			},{
				"id":24,
				"name":"维修手册44444",
				"status":"待审核",
				"secret":1,
				"code":"111-11",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"01/13/2010",
			}],
			"state":"opened",
		},{
			"id":3,
			"name":"作业指导书",
			"size":"",
			"date":"01/20/2010",
			"children":[{
				"id":31,
				"name":"作业指导书11111",
				"status":"未发布",
				"secret":2,
				"code":"111-22",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"05/19/2009"
			}],
			"state":"opened",
		},{
			"id":4,
			"name":"作业指导书",
			"size":"",
			"date":"01/20/2010",
			"children":[{
				"id":41,
				"name":"作业指导书11111",
				"status":"未发布",
				"secret":2,
				"code":"111-22",
				"intro":"为了放置加载子节点，我们需要为每个节点重命名",
				"checker":"莱昂纳多",
				"checkercon":"文档不符合",
				"date":"05/19/2009"
			}],
			"state":"opened",
		}]
	}];

    return {
        // main function to initiate the module
        init: function () {
        	$('#page_name').text('管理');
        	$('#page_caption').text('我的报告／管理');
        },
        
        // return jsondata
        getJsonData: function() {
        	return jsondata;
        },
        getRightJsonData: function() {
        	return rightJsonData;
        },
        
        // handle left&right portlet's show/hide
        expandLeft: function(el) {
        	var iconHtml_min = '<i class="fa fa-angle-double-right"></i>';
        	var iconHtml_max = '<i class="fa fa-angle-double-left"></i>';
        	var div_el = $(el).closest('.portlet').parent();
        	
        	if ($(el).children('i').hasClass('fa-angle-double-right')) {
        		$(el).closest('a').html(iconHtml_max);
            	div_el.attr('class', 'col-md-12');
            	$('#rightdiv').hide();
        	} else {
        		$(el).closest('a').html(iconHtml_min);
            	div_el.attr('class', 'col-md-8');
            	$('#rightdiv').show();
        	}
        	
        	$(window).trigger('resize');
        },
        
        // show report-edit-modal modal
        reportEdit: function(id) {
        	
        	// get current selected data
            var row = $('#tg1').treegrid('getSelected');
            if ( Env.isEmpty(row)) {
            	alert('please select data');
            	return ;
            }
            
            // when selected node is a leaf, alert error then return
            if ( Env.isEmpty(row.code)) {
            	alert('this is a leaf, please select data');
            	return ;
            }

            // set data to modal
            $('#txt_name').val(row.name);
            
            // last to show modal
        	$('#report-edit-modal').modal('show');
        },
    };

}();