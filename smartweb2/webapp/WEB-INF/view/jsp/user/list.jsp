<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/select2/select2.css">
<!-- <link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"> -->
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/datatables/media/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/bootstrap-datepicker/css/datepicker.css">
</#macro>

<#macro page_content>
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title">开发示例<small> &nbsp;用户管理</small></h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="#">首页</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">开发示例</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">用户管理</a>
		</li>
	</ul>
	<div class="page-toolbar">
		<div class="btn-group pull-right">
			<button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
			操作 <i class="fa fa-angle-down"></i>
			</button>
			<ul class="dropdown-menu pull-right" role="menu">
				<li>
					<a href="#">操作1</a>
				</li>
				<li>
					<a href="#">操作2</a>
				</li>
				<li class="divider">
				</li>
				<li>
					<a href="#">其他</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- END PAGE HEADER-->

<!-- BEGIN PAGE CONTENT-->
<div class="row">
	<div class="col-md-12">
		<div class="portlet">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-user"></i>用户一览
				</div>
				<div class="actions">
					<a href="../user/add" class="btn default yellow-stripe">
						<i class="fa fa-plus"></i>
						<span class="hidden-480"> 新增 </span>
					</a>
					<div class="btn-group">
						<a class="btn default yellow-stripe dropdown-toggle" href="javascript:;" data-toggle="dropdown">
							<i class="fa fa-share"></i>
							<span class="hidden-480"> 工具 </span> <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu pull-right">
							<li>
								<a href="javascript:;"> 导出为EXCEL文件 </a>
							</li>
							<li>
								<a href="javascript:;"> 导出为CSV文件 </a>
							</li>
							<li>
								<a href="javascript:;"> 导出为XML文件 </a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="javascript:;"> 打印 </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="portlet-body">
				<div class="table-container">
					<div class="table-actions-wrapper">
						<span>
						</span>
						<select class="table-group-action-input form-control input-inline input-small input-sm">
							<option value="">Select...</option>
							<option value="Cancel">Cancel</option>
							<option value="Cancel">Hold</option>
							<option value="Cancel">On Hold</option>
							<option value="Close">Close</option>
						</select>
						<button class="btn btn-sm yellow table-group-action-submit"><i class="fa fa-check"></i> Submit</button>
					</div>
					
					<table id="example" class="display" cellspacing="0" width="100%">
  					    <thead>
					        <tr>
					        	<th width="10%" align="center">
									<input type="checkbox" />
								</th>
					            <th>名称</th>
					            <th>昵称</th>
					            <th>注册时间</th>
					            <th width="20%" align="center"></th>
					        </tr>
					    </thead>
					</table>					
					
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END PAGE CONTENT-->

</#macro>

<#macro page_script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<script src="${BASEPATH}assets/global/scripts/datatable.js"></script>
<script src="${BASEPATH}assets/admin/pages/scripts/ecommerce-orders.js"></script>
<script>
    jQuery(document).ready(function() {       
    	//EcommerceOrders.init();
    	
    	var selected = [];
    	
		var t = $('#example').dataTable( {
			"lengthMenu": [
	            [10, 20, 50, 100, -1],
	            [10, 20, 50, 100, "全部"] // change per page values here
	        ],
			"pageLength": 3,
	        "ajax": {
	            "url": "../user/users?json",
	            "dataSrc": ""
	        },
	        "rowCallback": function( row, data ) {
	            if ( $.inArray(data.DT_RowId, selected) !== -1 ) {
	                $(row).addClass('selected');
	            }
	        },
	        "columns": [
	            { "data": null, "mRender":function(data,type,full){
	            	return '<div class="checker"><span><input type="checkbox"></span></div>';
	            }},
	            { "data": "name"},
	            { "data": "nickname" },
	            { "data": "createdAt" },
	            { "data": null, "mRender":function(data,type,full){
	            	return '<a href="../user/edit/'+ data.id + '" class="btn btn-xs default btn-editable"><i class="fa fa-pencil"></i> 编辑</a>';
	            }}
	        ],
	        "columnDefs": [ {
	            "searchable": false,
	            "orderable": false,
	            "targets": 0
	        } ],
	        "order": [[ 1, 'asc' ]],
	        "oLanguage": {
                "sProcessing": "正在加载中......",
            	"sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "对不起，查询不到相关数据！",
                "sEmptyTable": "无数据存在！",
                "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
                "sSearch": "",
                "oPaginate": {
                	"sFirst": "首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast": "末页"
            	}
            }, //多语言配置
            "stateSave": true //save the state of a table 
	    });
		


		$('#example_wrapper .dataTables_filter input').addClass("form-control input-sm").attr("placeholder", "搜索");
		$('#example_wrapper .dataTables_length select').addClass("m-wrap small");
		$('#example_column_toggler input[type="checkbox"]').change(function () {
            /* Get the DataTables object again - this is not a recreation, just a get of the object */
            var iCol = parseInt($(this).attr("data-column"));
            var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
            oTable.fnSetColumnVis(iCol, (bVis ? false : true));
        });
		
		$('#example tbody').on('click', 'tr', function () {
	        var id = this.id;
	        var index = $.inArray(id, selected);
	        if ( index === -1 ) {
	            selected.push( id );
	        } else {
	            selected.splice( index, 1 );
	        }
	        $(this).toggleClass('selected');
	        
	        //获取选择纪录
	        //alert( table.rows('.selected').data().length +' row(s) selected' );
	    } );
	 
		
	  		    
	  		    

    });
</script>

</#macro>