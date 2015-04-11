<#include "../ftl/main_layout.ftl">
<#macro page_style>
</#macro>

<#macro page_content>
<h4>系统发生异常，可能由以下原因引起，请联系系统管理员：</h4>
<div class="portlet solid grey-steel">
	<div class="portlet-body">
		<div class="margin-top-20"></div>
		<div class="scroller" style="height:400px;padding-top:10px">
			<pre class="font-red">${errMsg}</pre>
		</div>
	</div>
</div>

</#macro> <#macro page_script>
<script>
	$(document).ready(function() {
    	$('#page_icon').attr('class', 'icon-cup bold font-red');
    	$('#page_name').text('出错啦');
    	$('#page_name').attr('class', 'caption-subject bold uppercase font-red');
       	$('#page_caption').text('');	
	});
</script>
</#macro>