<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/select2/select2.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/bootstrap-datepicker/css/datepicker.css">
<link rel="stylesheet" type="text/css" href="${BASEPATH}assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
</#macro>

<#macro page_content>
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title">开发示例<small> &nbsp;用户管理</small></h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li><i class="fa fa-home"></i> <a href="#">首页</a> <i
			class="fa fa-angle-right"></i></li>
		<li><a href="#">开发示例</a> <i class="fa fa-angle-right"></i></li>
		<li><a href="#">用户管理</a></li>
	</ul>
	<div class="page-toolbar">
		<div class="btn-group pull-right">
			<button type="button"
				class="btn btn-fit-height grey-salt dropdown-toggle"
				data-toggle="dropdown" data-hover="dropdown" data-delay="1000"
				data-close-others="true">
				操作 <i class="fa fa-angle-down"></i>
			</button>
			<ul class="dropdown-menu pull-right" role="menu">
				<li><a href="#">操作1</a></li>
				<li><a href="#">操作2</a></li>
				<li class="divider"></li>
				<li><a href="#">其他</a></li>
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
					<i class="fa fa-user"></i><span>用户编辑</span>
				</div>
				<div class="actions btn-set">
					<button type="button" id="backBtn" name="back" class="btn default"><i class="fa fa-angle-left"></i> 返回</button>
					<button type="button" id="resetBtn" class="btn default"><i class="fa fa-reply"></i> 重置</button>
					<button class="btn green" onclick="saveUser()"><i class="fa fa-check"></i> 保存</button>
					<div class="btn-group">
						<a class="btn yellow dropdown-toggle" href="javascript:;"
							data-toggle="dropdown"> <i class="fa fa-share"></i> 更多 <i
							class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:;"> 复制 </a></li>
							<li><a href="javascript:;">删除 </a></li>
							<li class="divider"></li>
							<li><a href="javascript:;"> 打印 </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-md-12">
		<form id="user_form" class="form-horizontal form-row-seperated" action="#">
			<input id="hf_userid" name="hf_userid" type="hidden" value="">
			<div class="form-body">
				<div class="form-group">
					<label class="col-md-2 control-label">用户名称: <span class="required">* </span></label>
					<div class="col-md-10">
						<input type="text" class="input-icon form-control maxlength-handler" id="name" name="name" maxlength="20">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">用户昵称: <span class="required">* </span></label>
					<div class="col-md-10">
						<input type="text" class="input-icon form-control maxlength-handler" id="nickname" name="nickname" maxlength="25">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">用户描述:</label>
					<div class="col-md-10">
						<textarea class="input-icon form-control maxlength-handler" rows="4" name="user_description" maxlength="255"></textarea>
						<span class="help-block">max 255 chars </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">邮箱:</label>
					<div class="col-md-10">
						<input type="text" class="input-icon form-control placeholder-no-fix" placeholder="Email" id="email" name="email" aria-required="true" aria-describedby="email-error" aria-invalid="true">
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">注册日期: </label>
					<div class="col-md-10">
						<div class="input-group input-large date-picker input-daterange" data-date="10/11/2012" data-date-format="yyyy/mm/dd">
							<input type="text" class="input-icon form-control" name="product[available_from]">
							<span class="input-group-addon"> to </span>
							<input type="text" class="input-icon form-control" name="product[available_to]">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">注册时间: </label>
					<div class="col-md-10">
						<div class="input-group input-large date datetime-picker" data-date-format="yyyy/mm/dd hh:ii">
							<input type="text" class="input-icon form-control" readonly="" name="product_history_date_from" placeholder="From">
							<span class="input-group-btn">
							<button class="btn default date-set" type="button"><i class="fa fa-calendar"></i></button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label">用户类型: </label>
					<div class="col-md-10">
						<select class="input-icon table-group-action-input form-control input-medium" name="product[tax_class]">
							<option value="">请选择...</option>
							<option value="1">系统用户</option>
							<option value="2">部门经理</option>
							<option value="3">项目经理</option>
							<option value="4">财务主管</option>
						</select>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- END PAGE CONTENT-->

</#macro>

<#macro page_script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script type="text/javascript" src="${BASEPATH}assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>

<script src="${BASEPATH}assets/global/scripts/datatable.js"></script>
<script src="${BASEPATH}assets/admin/pages/scripts/ecommerce-orders.js"></script>

<!-- BEGIN 编辑状态进入页面时候填充数据 -->
<#if user ??>
<script>
$('#hf_userid').val(<#if user.id ??>'${user.id}'<#else>''</#if>);
$('#name').val(<#if user.name ??>'${user.name}'<#else>''</#if>);
$('#nickname').val(<#if user.nickname ??>'${user.nickname}'<#else>''</#if>);
</script>
</#if>
<!-- END 编辑状态进入页面时候填充数据 -->

<script>
    jQuery(document).ready(function() {
    	
		$('#backBtn').click(function(){
			window.location.href = '${BASEPATH}user/list';
		});
		$('#resetBtn').click(function(){
			$('#user_form')[0].reset();
		});
    	
    	//init datepickers
    	$('.date-picker').datepicker({
            rtl: Smartweb.isRTL(),
            autoclose: true
        });	 
		
    	//init datetimepickers
        $(".datetime-picker").datetimepicker({
            isRTL: Smartweb.isRTL(),
            autoclose: true,
            todayBtn: true,
            pickerPosition: (Smartweb.isRTL() ? "bottom-right" : "bottom-left"),
            minuteStep: 10
        });
    	
        //init maxlength handler
        $('.maxlength-handler').maxlength({
            limitReachedClass: "label label-danger",
            alwaysShow: true,
            threshold: 5
        });
        
        
	  		    
        formInit();
        

    });
    
    
    function formInit() {
    	$('#user_form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
            	name: {
                    required: true,
                    maxlength: 20
                },
                nickname: {
                    required: true,
                    maxlength: 25
                },
                email: {
                    required: false,
                    email: true
                },
            },
            messages: {
            	name: {
                    required: "必须输入用户名称",
                    maxlength: $.validator.format('不能超过{0}个字符')
                },
            	nickname: {
                    required: "必须输入用户昵称",
                    maxlength: $.validator.format('不能超过{0}个字符')
                },
                email: {
                	email: '请输入合法的邮箱地址'
                }
            },
            invalidHandler: function(event, validator) { //display error alert on form submit   
                $('.alert-danger', $('#user_form')).show();
            },
            highlight: function(element) { // hightlight error inputs
                $(element).closest('.form-group').addClass('has-error');
            },
            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },
            errorPlacement: function(error, element) {
                error.insertAfter(element.closest('.input-icon '));
            }
        });
    	
        $('#user_form input').keypress(function (e) {
        	if (e.which == 13) {
            	if ($('#user_form').validate().form()) {
               		$('#user_form').submit();
             	}
             	return false;
           	}
        });

    }
    
    function fillData() {
    	
    }
 
    function saveUser() {
        
        if ($('#user_form').validate().form()) {
       		var hf_userid = $('#hf_userid').val();
        	$.ajax({
                type: 'POST',
                url: '${BASEPATH}user/save',
                data: {
                    id: hf_userid,
                    name: $('#name').val(),
                    nickname: $('#nickname').val(),
                },
                beforeSend:function() {
                },
                complete:function(){
                },
                success: function(data) {
                	var dataObj = eval("(" + data + ")");
                	//alert(dataObj['user']['nickname']);
                	
                    if (dataObj['status'] == 0) {
                        //alert("数据保存成功！");
                        window.location.href = '${BASEPATH}user/list';
                    } else {
                    	Smartweb.alert({
                            type: 'danger',
                            icon: 'warning',
                            message: dataObj['errmsg'],
                            place: 'prepend'
                        });
                    }
                },
                error: function(data) {
                  alert(JSON.stringify(data));
                  if (data.status == 401) {
                    //window.location.href = '';
                  } else if(data.status == 500) {
                    alert('服务器无法响应，可能是会话失效，请尝试重新登录');
                    //window.location.href = '';
                  } else {
                    alert(JSON.stringify(data));
                  }
                }
              });  		
       		
       		
       		
     	}
        
    }
</script>

</#macro>