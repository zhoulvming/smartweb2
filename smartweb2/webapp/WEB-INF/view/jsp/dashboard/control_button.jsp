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
					<span class="caption-subject bold uppercase"> 按钮</span>
					<span class="caption-helper"></span>
				</div>
				<div class="actions">
					<a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;"></a>
				</div>
			</div>
			<div class="portlet-body">
				<!-- BEGIN Default Buttons  -->
				<div id="intro1" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Buttons</span>
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
						<div class="clearfix">
							<h4 class="block">Default Bootstrap Buttons</h4>
							<!-- Standard gray button with gradient -->
							<button type="button" class="btn btn-default">Default</button>
							<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							<button type="button" class="btn btn-primary">Primary</button>
							<!-- Indicates a successful or positive action -->
							<button type="button" class="btn btn-success">Success</button>
							<!-- Contextual button for informational alert messages -->
							<button type="button" class="btn btn-info">Info</button>
							<!-- Indicates caution should be taken with this action -->
							<button type="button" class="btn btn-warning">Warning</button>
							<!-- Indicates a dangerous or potentially negative action -->
							<button type="button" class="btn btn-danger">Danger</button>
							<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
							<button type="button" class="btn btn-link">Link</button>
						</div>
						<div class="clearfix">
							<h4 class="block">Smartweb Style Buttons</h4>
							<button type="button" class="btn default">Default</button>
							<button type="button" class="btn red">Red</button>
							<button type="button" class="btn blue">Blue</button>
							<button type="button" class="btn green">Green</button>
							<button type="button" class="btn yellow">Yellow</button>
							<button type="button" class="btn purple">Purple</button>
							<button type="button" class="btn dark">Dark</button>
						</div>
						<div class="clearfix">
							<h4 class="block">More Button Colors(go to <a href="javascript:;">
							Flat UI Colors </a>
							for more colors) </h4>
							<button type="button" class="btn blue-hoki">Blue Hoki</button>
							<button type="button" class="btn blue-madison">Blue Madison</button>
							<button type="button" class="btn green-meadow">Green Meadow</button>
							<button type="button" class="btn red-sunglo">Red Sunglo</button>
							<button type="button" class="btn yellow-crusta">Yellow Crusta</button>
							<button type="button" class="btn purple-plum">Purple Plum</button>
							<button type="button" class="btn grey-cascade">Grey Cascade</button>
						</div>
						<div class="clearfix">
							<h4 class="block">Button Stripe</h4>
							<a href="javascript:;" class="btn default red-stripe">
							Red </a>
							<a href="javascript:;" class="btn default blue-stripe">
							Blue </a>
							<a href="javascript:;" class="btn default green-stripe">
							Green </a>
							<a href="javascript:;" class="btn default yellow-stripe">
							Yellow </a>
							<a href="javascript:;" class="btn default purple-stripe">
							Purple </a>
							<a href="javascript:;" class="btn default green-stripe">
							Green </a>
							<a href="javascript:;" class="btn default dark-stripe">
							Dark </a>
						</div>
						<div class="clearfix">
							<h4 class="block">Disabled</h4>
							<a href="javascript:;" class="btn default disabled">
							Default </a>
							<a href="javascript:;" class="btn red disabled">
							Red </a>
							<a href="javascript:;" class="btn blue disabled">
							Blue </a>
							<a href="javascript:;" class="btn green disabled">
							Green </a>
							<a href="javascript:;" class="btn yellow disabled">
							Yellow </a>
							<a href="javascript:;" class="btn purple disabled">
							Purple </a>
							<a href="javascript:;" class="btn dark disabled">
							Dark </a>
						</div>
						<div class="clearfix">
							<h4 class="block">Button Sizes</h4>
							<button type="button" class="btn default btn-lg">Large button</button>
							<button type="button" class="btn red">Default button</button>
							<button type="button" class="btn blue btn-sm">Small button</button>
							<button type="button" class="btn green btn-xs">Extra small button</button>
						</div>
						<div class="clearfix">
							<h4 class="block">Button Tags</h4>
							<a href="javascript:;" class="btn default">
							Link </a>
							<button class="btn default">Button</button>
							<input type="button" class="btn default" value="Input">
							<input type="submit" class="btn default" value="Submit">
						</div>
						<div class="clearfix">
							<h4 class="block">Block Buttons</h4>
							<a href="javascript:;" class="btn default btn-block">
							Link </a>
							<button class="btn blue btn-block">Button</button>
							<input type="button" class="btn red btn-block" value="Input">
							<input type="submit" class="btn purple btn-block" value="Submit">
						</div>
					</div>
				</div>
				<!-- END Default Buttons -->
			
				<!-- BEGIN Button Groups  -->
				<div id="intro2" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Button Groups</span>
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
						<div class="clearfix">
							<h4 class="block">Basic Example</h4>
							<div class="btn-group">
								<button type="button" class="btn btn-default">Left</button>
								<button type="button" class="btn btn-default">Middle</button>
								<button type="button" class="btn btn-default">Right</button>
							</div>
							<div class="btn-group btn-group-solid">
								<button type="button" class="btn red">Left</button>
								<button type="button" class="btn yellow">Middle</button>
								<button type="button" class="btn green">Right</button>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Button Toolbar</h4>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group">
									<button type="button" class="btn btn-default">1</button>
									<button type="button" class="btn btn-default">2</button>
									<button type="button" class="btn btn-default">3</button>
									<button type="button" class="btn btn-default">4</button>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-default">5</button>
									<button type="button" class="btn btn-default">6</button>
									<button type="button" class="btn btn-default">7</button>
								</div>
								<div class="btn-group">
									<button type="button" class="btn btn-default">8</button>
								</div>
							</div>
							<div class="btn-toolbar">
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">1</button>
									<button type="button" class="btn green">2</button>
									<button type="button" class="btn blue">3</button>
									<button type="button" class="btn yellow">4</button>
								</div>
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn purple">5</button>
									<button type="button" class="btn dark">6</button>
									<button type="button" class="btn default">7</button>
								</div>
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">8</button>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Button Group Sizing</h4>
							<div class="btn-toolbar">
								<div class="btn-group btn-group-lg btn-group-solid margin-bottom-10">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-sm btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group btn-group-xs btn-group-solid">
									<button type="button" class="btn red">Left</button>
									<button type="button" class="btn green">Middle</button>
									<button type="button" class="btn blue">Right</button>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Nesting Button Group</h4>
							<div class="btn-group">
								<button type="button" class="btn btn-default"><i class="fa fa-user"></i> Profile</button>
								<button type="button" class="btn btn-default"><i class="fa fa-cogs"></i> Settings</button>
								<button type="button" class="btn btn-default"><i class="fa fa-bullhorn"></i> Feeds</button>
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-ellipsis-horizontal"></i> More <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
							</div>
							<div class="clearfix margin-bottom-10">
							</div>
							<div class="btn-group btn-group-solid">
								<button type="button" class="btn red"><i class="fa fa-user"></i> Profile</button>
								<button type="button" class="btn green"><i class="fa fa-cogs"></i> Settings</button>
								<button type="button" class="btn purple"><i class="fa fa-bullhorn"></i> Feeds</button>
								<div class="btn-group btn-group-solid">
									<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-ellipsis-horizontal"></i> More <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Vertical variation</h4>
							<div class="btn-group-vertical margin-right-10">
								<button type="button" class="btn btn-default">Button</button>
								<button type="button" class="btn btn-default">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop1" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop1">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<button type="button" class="btn btn-default">Button</button>
								<button type="button" class="btn btn-default">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop2" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop2">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop3" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop3">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop4" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop4">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
							</div>
							<div class="btn-group-vertical btn-group-solid">
								<button type="button" class="btn blue">Button</button>
								<button type="button" class="btn green">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop5" type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop5">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<button type="button" class="btn red">Button</button>
								<button type="button" class="btn dark">Button</button>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop6" type="button" class="btn default dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop6">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop7" type="button" class="btn purple dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop7">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
								<div class="btn-group">
									<button id="btnGroupVerticalDrop8" type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop8">
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
										<li>
											<a href="javascript:;">
											Dropdown link </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Justified Link Variation</h4>
							<div class="btn-group btn-group-justified">
								<a href="javascript:;" class="btn btn-default">
								Left </a>
								<a href="javascript:;" class="btn btn-default">
								Middle </a>
								<a href="javascript:;" class="btn btn-default">
								Right </a>
							</div>
							<div class="clearfix margin-bottom-10">
							</div>
							<div class="btn-group btn-group btn-group-justified">
								<a href="javascript:;" class="btn red">
								Left </a>
								<a href="javascript:;" class="btn blue">
								Middle </a>
								<a href="javascript:;" class="btn green">
								Right </a>
							</div>
						</div>


					</div>
				</div>
				<!-- END Button Groups  -->
			
				<!-- BEGIN Button Dropdowns  -->
				<div id="intro3" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Button Dropdowns</span>
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
						<div class="clearfix">
							<h4 class="block">Default Bootstrap Style</h4>
							<div class="btn-group">
								<button type="button" class="btn btn-default">Default</button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn btn-primary">Primary</button>
								<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn btn-success">Success</button>
								<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn btn-info">Info</button>
								<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn btn-warning">Warning</button>
								<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn btn-danger">Danger</button>
								<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
						</div>
						<div class="clearfix">
							<h4 class="block">Metronic Style</h4>
							<div class="btn-group">
								<button type="button" class="btn default">Default</button>
								<button type="button" class="btn default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn blue">Blue</button>
								<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn green">Green</button>
								<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn red">Red</button>
								<button type="button" class="btn red dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn yellow">Yellow</button>
								<button type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn dark">Dark</button>
								<button type="button" class="btn dark dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
							<div class="btn-group">
								<button type="button" class="btn purple">Purple</button>
								<button type="button" class="btn purple dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- /btn-group -->
						</div>
						<div class="clearfix">
							<h4 class="block">Dropdowns with Multilevel Submenu</h4>
							<!-- Large button group -->
							<div class="btn-group">
								<button class="btn blue dropdown-toggle" type="button" data-toggle="dropdown">
								Dropdown <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li class="dropdown-submenu">
										<a href="javascript:;">
										More options </a>
										<ul class="dropdown-menu" style="">
											<li>
												<a href="javascript:;">
												Second level link </a>
											</li>
											<li class="dropdown-submenu">
												<a href="javascript:;">
												More options </a>
												<ul class="dropdown-menu">
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
												</ul>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="btn-group dropup">
								<button class="btn green dropdown-toggle" type="button" data-toggle="dropdown">
								Dropup <i class="fa fa-angle-up"></i>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li class="dropdown-submenu">
										<a href="javascript:;">
										More options </a>
										<ul class="dropdown-menu" style="">
											<li>
												<a href="javascript:;">
												Second level link </a>
											</li>
											<li class="dropdown-submenu">
												<a href="javascript:;">
												More options </a>
												<ul class="dropdown-menu pull-right">
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
													<li>
														<a href="index.html">
														Third level link </a>
													</li>
												</ul>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
											<li>
												<a href="index.html">
												Second level link </a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Sizing</h4>
							<!-- Large button group -->
							<div class="btn-group">
								<button class="btn btn-default btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
								Large button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- Small button group -->
							<div class="btn-group">
								<button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
								Small button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- Extra small button group -->
							<div class="btn-group">
								<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
								Extra small button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<div class="clearfix margin-bottom-10">
							</div>
							<!-- Large button group -->
							<div class="btn-group">
								<button class="btn red btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
								Large button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- Small button group -->
							<div class="btn-group">
								<button class="btn blue btn-sm dropdown-toggle" type="button" data-toggle="dropdown">
								Small button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
							<!-- Extra small button group -->
							<div class="btn-group">
								<button class="btn green btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
								Extra small button <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li>
										<a href="javascript:;">
										Action </a>
									</li>
									<li>
										<a href="javascript:;">
										Another action </a>
									</li>
									<li>
										<a href="javascript:;">
										Something else here </a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="javascript:;">
										Separated link </a>
									</li>
								</ul>
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Dropup</h4>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group dropup">
									<button type="button" class="btn btn-default">Dropup</button>
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group dropup">
									<button type="button" class="btn btn-primary">Right dropup</button>
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
							</div>
							<div class="btn-toolbar">
								<div class="btn-group dropup">
									<button type="button" class="btn blue">Dropup</button>
									<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group dropup">
									<button type="button" class="btn green">Right dropup</button>
									<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu pull-right" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Hoveralbe Dropdowns</h4>
							<div class="btn-toolbar margin-bottom-10">
								<div class="btn-group">
									<button type="button" class="btn btn-default">Dropdown</button>
									<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"><i class="fa fa-angle-down"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group dropup">
									<button type="button" class="btn btn-primary">Dropup</button>
									<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"><i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group">
									<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
									Dropup <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
							</div>
							<div class="btn-toolbar">
								<div class="btn-group">
									<button type="button" class="btn blue">Dropdown</button>
									<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true"><i class="fa fa-angle-down"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group dropup">
									<button type="button" class="btn green">Dropup</button>
									<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
									<i class="fa fa-angle-up"></i></button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
								<div class="btn-group">
									<button type="button" class="btn yellow dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
									Dropdown <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="javascript:;">
											Action </a>
										</li>
										<li>
											<a href="javascript:;">
											Another action </a>
										</li>
										<li>
											<a href="javascript:;">
											Something else here </a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="javascript:;">
											Separated link </a>
										</li>
									</ul>
								</div>
								<!-- /btn-group -->
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Dropdown with Checkboxes & Search Form</h4>
							<div class="btn-group">
								<button class="btn green dropdown-toggle" type="button" data-toggle="dropdown">
								Search Dropdown <i class="fa fa-angle-down"></i>
								</button>
								<div class="dropdown-menu dropdown-content input-large hold-on-click" role="menu">
									<form action="#">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="search...">
											<span class="input-group-btn">
											<button class="btn blue" type="submit">Go!</button>
											</span>
										</div>
									</form>
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn blue">Dropdown</button>
								<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-checkboxes" role="menu">
									<label><input type="checkbox">Option 1</label>
									<label><input type="checkbox" checked>Option 2</label>
									<label><input type="checkbox">Option 3</label>
									<label><input type="checkbox" checked>Option 4</label>
									<label><input type="checkbox">Option 5</label>
								</div>
							</div>
							<!-- /btn-group -->
							<div class="btn-group dropup">
								<button type="button" class="btn green">Dropup</button>
								<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-checkboxes" role="menu">
									<label><input type="checkbox">Option 1</label>
									<label><input type="checkbox" checked>Option 2</label>
									<label><input type="checkbox">Option 3</label>
									<label><input type="checkbox" checked>Option 4</label>
									<label><input type="checkbox">Option 5</label>
								</div>
							</div>
							<!-- /btn-group -->
							<div class="clearfix margin-top-10">
								<span class="label label-success">
								NOTE: </span>
								&nbsp; By adding <code>hold-on-click</code> class you can avoid closing the dropdown on click
							</div>
						</div>
						<div class="clearfix">
							<h4 class="block">Dropdown with Radio Buttons</h4>
							<div class="btn-group">
								<button type="button" class="btn blue">Dropdown</button>
								<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-radiobuttons" role="menu">
									<label><input type="radio" name="radio_button_1">Option 1</label>
									<label><input type="radio" name="radio_button_1">Option 2</label>
									<label><input type="radio" name="radio_button_1">Option 3</label>
									<label><input type="radio" name="radio_button_1">Option 4</label>
									<label><input type="radio" name="radio_button_1">Option 5</label>
								</div>
							</div>
							<!-- /btn-group -->
							<div class="btn-group dropup">
								<button type="button" class="btn green">Dropup</button>
								<button type="button" class="btn green dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-up"></i></button>
								<div class="dropdown-menu hold-on-click dropdown-radiobuttons" role="menu">
									<label><input type="radio" name="radio_button_2">Option 1</label>
									<label><input type="radio" name="radio_button_2">Option 2</label>
									<label><input type="radio" name="radio_button_2">Option 3</label>
									<label><input type="radio" name="radio_button_2">Option 4</label>
									<label><input type="radio" name="radio_button_2">Option 5</label>
								</div>
							</div>
							<!-- /btn-group -->
							<div class="clearfix margin-top-10">
								<span class="label label-success">
								NOTE: </span>
								&nbsp; By adding <code>hold-on-click</code> class you can avoid closing the dropdown on click
							</div>
						</div>
					</div>
				</div>
				<!-- END Button Dropdowns -->
				
				<!-- BEGIN Font Awesome Styled Buttons  -->
				<div id="intro4" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Font Awesome Styled Buttons</span>
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
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-group"></i>
						<div>
							 Users
						</div>
						<span class="badge badge-danger">
						2 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-barcode"></i>
						<div>
							 Products
						</div>
						<span class="badge badge-success">
						4 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-bar-chart-o"></i>
						<div>
							 Reports
						</div>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-sitemap"></i>
						<div>
							 Categories
						</div>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-calendar"></i>
						<div>
							 Calendar
						</div>
						<span class="badge badge-success">
						4 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-envelope"></i>
						<div>
							 Inbox
						</div>
						<span class="badge badge-info">
						12 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-bullhorn"></i>
						<div>
							 Notification
						</div>
						<span class="badge badge-danger">
						3 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-map-marker"></i>
						<div>
							 Locations
						</div>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-money"><i></i></i>
						<div>
							 Finance
						</div>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-plane"></i>
						<div>
							 Projects
						</div>
						<span class="badge badge-info">
						21 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-thumbs-up"></i>
						<div>
							 Feedback
						</div>
						<span class="badge badge-info">
						2 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-cloud"></i>
						<div>
							 Servers
						</div>
						<span class="badge badge-danger">
						2 </span>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-globe"></i>
						<div>
							 Regions
						</div>
						</a>
						<a href="javascript:;" class="icon-btn">
						<i class="fa fa-heart-o"></i>
						<div>
							 Popularity
						</div>
						<span class="badge badge-info">
						221 </span>
						</a>
					</div>
				</div>
				<!-- END Font Awesome Styled Buttons  -->

				<!-- BEGIN Social Icons  -->
				<div id="intro5" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Social Icons</span>
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
					<div class="portlet-body util-btn-margin-bottom-5">
						<a href="javascript:;" data-original-title="klout" class="social-icon social-icon-circle klout">
						</a>
						<a href="javascript:;" data-original-title="myspace" class="social-icon social-icon-circle myspace">
						</a>
						<a href="javascript:;" data-original-title="quora" class="social-icon social-icon-circle quora">
						</a>
					</div>
				</div>
				<!-- END Social Icons  -->
				
				<!-- BEGIN Button States  -->
				<div id="intro6" class="portlet light">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-cogs font-red-sunglo"></i>
							<span class="caption-subject font-red-sunglo bold uppercase">Button States</span>
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
					<div class="portlet-body util-btn-margin-bottom-5">
						<h4>Loading State</h4>
						<div class="clearfix">
							<button type="button" data-loading-text="Loading..." class="demo-loading-btn btn-circle btn btn-primary">
							Loading state </button>
							<button type="button" data-loading-text="Loading..." class="demo-loading-btn btn-circle btn btn-default">
							Loading state </button>
							<button type="button" data-loading-text="Loading..." class="demo-loading-btn btn-circle btn red">
							Loading state </button>
							<button type="button" data-loading-text="Loading..." class="demo-loading-btn btn-circle btn blue">
							Loading state </button>
						</div>
						<h4>Single Toggle</h4>
						<div class="clearfix">
							<button type="button" class="btn btn-circle btn-primary" data-toggle="button">
							Single toggle </button>
							<button type="button" class="btn btn-circle btn-default" data-toggle="button">
							Single toggle </button>
							<button type="button" class="btn btn-circle red" data-toggle="button">
							Single toggle </button>
							<button type="button" class="btn btn-circle blue" data-toggle="button">
							Single toggle </button>
						</div>
						<h4>Checkbox</h4>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn default active">
								<input type="checkbox" class="toggle"> Option 1 </label>
								<label class="btn default">
								<input type="checkbox" class="toggle"> Option 2 </label>
								<label class="btn default">
								<input type="checkbox" class="toggle"> Option 3 </label>
							</div>
						</div>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn btn-default">
								<input type="checkbox" class="toggle"> Option 1 </label>
								<label class="btn btn-default active">
								<input type="checkbox" class="toggle"> Option 2 </label>
								<label class="btn btn-default">
								<input type="checkbox" class="toggle"> Option 3 </label>
							</div>
						</div>
						<h4>Radio</h4>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn blue active">
								<input type="radio" class="toggle"> Option 1 </label>
								<label class="btn blue">
								<input type="radio" class="toggle"> Option 2 </label>
								<label class="btn blue">
								<input type="radio" class="toggle"> Option 3 </label>
							</div>
						</div>
						<div class="clearfix">
							<div class="btn-group btn-group-circle" data-toggle="buttons">
								<label class="btn btn-default active">
								<input type="radio" class="toggle"> Option 1 </label>
								<label class="btn btn-default">
								<input type="radio" class="toggle"> Option 2 </label>
								<label class="btn btn-default">
								<input type="radio" class="toggle"> Option 3 </label>
							</div>
						</div>
					</div>
				</div>
				<!-- END Button States  -->
				
			</div>
		</div>
	</div>
	
	<div class="col-md-2">
		<div class="page-nav">
			<ul id="nav">
				<li class="current"><a href="#intro1" ><i class="fa fa-tree"></i>  Default Buttons</a></li>
				<li><a href="#intro2"><i class="fa fa-gear"></i> Button Groups</a></li>
				<li><a href="#intro3"><i class="fa fa-gear"></i> Button Dropdowns</a></li>
				<li><a href="#intro4"><i class="fa fa-gear"></i> Font Awesome Buttons</a></li>
				<li><a href="#intro5"><i class="fa fa-gear"></i> Social Icons</a></li>
				<li><a href="#intro6"><i class="fa fa-gear"></i> Button States</a></li>
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

    
	$(document).ready(function(){
		$('.theme-panel').addClass('hide');
		$('#nav').onePageNav();
		
	});
	
	

</script>
</#macro>