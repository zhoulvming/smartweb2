<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<!-- DOC: when page-boxed,need to add container after page-header-inner -->
	<!-- <div class="page-header-inner container"> -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="${BASEPATH}">
				<img src="${BASEPATH}assets/admin/layout/img/logo-default.png" alt="logo" class="logo-default"/>
			</a>
			<div class="menu-toggler sidebar-toggler"></div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
		<!-- END RESPONSIVE MENU TOGGLER -->

		<!-- BEGIN PAGE TOP -->
		<div class="page-top">
			<!-- BEGIN HEADER SEARCH BOX -->
			<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
			<form class="search-form search-form-expanded" action="#" method="GET">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="搜索..." name="query">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
				</div>
			</form>
			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					
					<!-- BEGIN INBOX DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-inbox dropdown-dark" id="header_inbox_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
							<i class="icon-envelope-open"></i>
							<span class="badge badge-default"> 4 </span>
						</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>你有 <span class="bold">2 件</span> 未审核记录</h3>
								<a href="javascript:;">查看</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height:100%;max-height:210px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
											<span class="photo">
											<img src="${BASEPATH}assets/admin/layout/img/avatar2.jpg" class="img-circle" alt="">
											</span>
											<span class="subject">
											<span class="from">甄文娟</span>
											<span class="time">2015-04-02</span>
											</span>
											<span class="message">这里显示报告摘要... </span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
											<span class="photo">
											<img src="${BASEPATH}assets/admin/layout/img/avatar3.jpg" class="img-circle" alt="">
											</span>
											<span class="subject">
											<span class="from">张卓</span>
											<span class="time">2015-04-02</span>
											</span>
											<span class="message">这里显示报告摘要... </span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-tasks dropdown-dark" id="header_task_bar">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"  data-close-others="true">
						<i class="icon-calendar"></i>
						<span class="badge badge-default">
						3 </span>
						</a>
						<ul class="dropdown-menu extended tasks">
							<li class="external">
								<h3>你有 <span class="bold">3个 待解决</span> 任务</h3>
								<a href="javascript:;">查看</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 225px;" data-handle-color="#637283">
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">新版本 v1.2 发布</span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">系统应用部署</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
										</span>
										</a>
									</li>
									<li>
										<a href="javascript:;">
										<span class="task">
										<span class="desc">新手机APP发布</span>
										<span class="percent">98%</span>
										</span>
										<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">98% Complete</span></span>
										</span>
										</a>
									</li>
								</ul>
							</li>							
						</ul>
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"  data-close-others="true">
							<img alt="" class="img-circle" src="${BASEPATH}assets/admin/layout/img/avatar3_small.jpg"/>
							<span class="username username-hide-on-mobile">莱昂纳多 </span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="javascript:;">
								<i class="icon-user"></i> 帐户设置 </a>
							</li>
							<li>
								<a href="${BASEPATH}dashboard/start">
								<i class="icon-book-open"></i> 帮助 </a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="javascript:;">
								<i class="icon-lock"></i> 锁屏 </a>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-key"></i> 注销 </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>