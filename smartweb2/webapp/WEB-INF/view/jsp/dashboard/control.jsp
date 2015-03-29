<#include "../ftl/mnlayout.ftl">
<#macro page_style>
<link href="${BASEPATH}assets/admin/layout/css/help.css" rel="stylesheet" type="text/css"/>
</#macro>

<#macro page_content>

<div class="row">
	<div class="col-md-10">
		<div class="portlet light">
			<div class="portlet-title">
				<div class="caption font-purple-plum">
					<i class="icon-speech font-purple-plum"></i>
					<span class="caption-subject bold uppercase"> 通用控件</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">
				<!-- BEGIN ALERTS -->
				<div id="intro1" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Alerts</span>
							<span class="caption-helper">警告例子...</span>
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
						<h4 class="block">缺省</h4>
						<div class="alert alert-success">
							<strong>Success!</strong> &nbsp;我就这样告别山下的家。
						</div>
						<div class="alert alert-info">
							<strong>Info!</strong> 我实在不愿让眼泪轻易留下。
						</div>
						<div class="alert alert-warning">
							<strong>Warning!</strong> 我以为我并不差不会害怕。
						</div>
						<div class="alert alert-danger">
							<strong>Error!</strong> 我就这样自己照顾自己长大。
						</div>
						<h4 class="block">可关闭</h4>
						<div class="alert alert-warning alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
							<strong>Warning!</strong> 如果有一天我变得更复杂，还能不能唱出歌声里的那幅画。
						</div>
						<div class="doc-actions"><div class="doc-act-inner"><span>Copy</span></div></div>
						<div class="doc-code">
							<pre>
&lt;div class="alert alert-success">
    &lt;strong>Success!&lt;/strong> &nbsp;我就这样告别山下的家。
&lt;/div><br>
&lt;div class="alert alert-info">
    &lt;strong>Info!&lt;/strong> &nbsp;我实在不愿让眼泪轻易留下。
&lt;/div><br>
&lt;div class="alert alert-warning">
    &lt;strong>Warning!&lt;/strong> &nbsp;我以为我并不差不会害怕。
&lt;/div><br>
&lt;div class="alert alert-danger">
    &lt;strong>Error!&lt;/strong> &nbsp;我就这样自己照顾自己长大。
&lt;/div><br>
&lt;div class="alert alert-warning alert-dismissable">
    &lt;button type="button" class="close" data-dismiss="alert" aria-hidden="true">&lt;/button>
    &lt;strong>Warning!&lt;/strong> &nbsp;如果有一天我变得更复杂，还能不能唱出歌声里的那幅画。
&lt;/div>
							</pre>
						</div>
					</div>
				</div>
				<!-- END ALERTS -->
			
				<!-- BEGIN NOTES -->
				<div id="intro2" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Notes</span>
							<span class="caption-helper">注释例子...</span>
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
						<div class="note note-success">
							<h4 class="block">Success! Some Header Goes Here</h4>
							<p>
								 我就这样告别山下的家，我实在不愿轻易让眼泪留下。我以为我并不差不会害怕，我就这样自己照顾自己长大。我不想因为现实把头低下，我以为我并不差能学会虚假。怎样才能够看穿面具里的谎话？别让我的真心散的像沙。如果有一天我变得更复杂，还能不能唱出歌声里的那幅画？
							</p>
						</div>
						<div class="note note-info">
							<h4 class="block">Info! Some Header Goes Here</h4>
							<p>
								 我就这样告别山下的家，我实在不愿轻易让眼泪留下。我以为我并不差不会害怕，我就这样自己照顾自己长大。我不想因为现实把头低下，我以为我并不差能学会虚假。怎样才能够看穿面具里的谎话？别让我的真心散的像沙。如果有一天我变得更复杂，还能不能唱出歌声里的那幅画？
							</p>
						</div>
						<div class="note note-danger">
							<h4 class="block">Danger! Some Header Goes Here</h4>
							<p>
								 我就这样告别山下的家，我实在不愿轻易让眼泪留下。我以为我并不差不会害怕，我就这样自己照顾自己长大。我不想因为现实把头低下，我以为我并不差能学会虚假。怎样才能够看穿面具里的谎话？别让我的真心散的像沙。如果有一天我变得更复杂，还能不能唱出歌声里的那幅画？
							</p>
						</div>
						<div class="note note-warning">
							<h4 class="block">Warning! Some Header Goes Here</h4>
							<p>
								 我就这样告别山下的家，我实在不愿轻易让眼泪留下。我以为我并不差不会害怕，我就这样自己照顾自己长大。我不想因为现实把头低下，我以为我并不差能学会虚假。怎样才能够看穿面具里的谎话？别让我的真心散的像沙。如果有一天我变得更复杂，还能不能唱出歌声里的那幅画？
							</p>
						</div>
					</div>
				</div>				
				<!-- END NOTES -->
			</div>
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro1"><i class="fa fa-gear"></i>  ALERTS</a></li>
				<li><a href="#intro2"><i class="fa fa-gear"></i> NOTES</a></li>
				<li><a href="#intro3"><i class="fa fa-gear"></i> Inline Notifications</a></li>
				<li><a href="#intro4"><i class="fa fa-gear"></i> Progress Bars</a></li>
				<li><a href="#intro5"><i class="fa fa-gear"></i> Pulsate</a></li>
				<li><a href="#intro6"><i class="fa fa-gear"></i> Labels & Badges</a></li>
				<li><a href="#intro7"><i class="fa fa-gear"></i> Modal Dialogs</a></li>
				<li><a href="#intro8"><i class="fa fa-gear"></i> Tooltips</a></li>
				<li><a href="#intro9"><i class="fa fa-gear"></i> Popovers</a></li>
				<li><a href="#intro10"><i class="fa fa-gear"></i> List Groups</a></li>
				<li><a href="#intro11"><i class="fa fa-gear"></i> Pagination</a></li>
				<li><a href="#intro12"><i class="fa fa-gear"></i> Dynamic Pagination</a></li>
				<li><a href="#intro13"><i class="fa fa-gear"></i> Panels</a></li>
				<li><a href="#intro14"><i class="fa fa-gear"></i> Wells</a></li>
				<li><a href="#intro15"><i class="fa fa-gear"></i> Media Objects</a></li>
				<li><a href="#intro16"><i class="fa fa-gear"></i> Thumbnails</a></li>
			</ul>
		</div>
	</div>
	
</div>


</#macro>

<#macro page_script>
<script src="${BASEPATH}assets/global/plugins/jquery.nav.js" type="text/javascript"></script>
<script>

	/* var offset = 10; 
	var hash = globalHash; 
	if (hash) {
		scrollBodyTopTo($("div#c_"+hash).offset().top-offset); 
	}  */
	function scrollBodyTopTo(pos) {
		$("html,body").animate({scrollTop:pos}); 
	}
	
	$(document).ready(function(){
		$('.theme-panel').addClass('hide');
		$('#nav').onePageNav();
	});
	
	

</script>
</#macro>