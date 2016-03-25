<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String thisPageleftMenuOpen = "dropdown-toggle-ui";
	String thisPageleftMenu = "nestable";
%> 
<%@ include file="common/PageLeftMenu.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>nestable-list</title>

		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<%@ include file="common/CommonStyle.jsp"%>
		
	</head>

	<body>
	<%@ include file="common/HeaderMenu.jsp"%>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<%@ include file="common/LeftMenu.jsp"%>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">UI Elements</a>
							</li>
							<li class="active">Nestable Lists</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								Nestable lists
								<small>
									<i class="icon-double-angle-right"></i>
									Drag &amp; drop hierarchical list
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-sm-6">
										<div class="dd" id="nestable">
											<ol class="dd-list">
												<li class="dd-item" data-id="1">
													<div class="dd-handle">
														Item 1
														<i class="pull-right bigger-130 icon-warning-sign orange2"></i>
													</div>
												</li>

												<li class="dd-item" data-id="2">
													<div class="dd-handle">Item 2</div>

													<ol class="dd-list">
														<li class="dd-item" data-id="3">
															<div class="dd-handle">
																Item 3
																<a data-rel="tooltip" data-placement="left" title="Change Event Date" href="#" class="badge badge-primary radius-5 tooltip-info pull-right white no-hover-underline">
																	<i class="bigger-120 icon-calendar"></i>
																</a>
															</div>
														</li>

														<li class="dd-item" data-id="4">
															<div class="dd-handle">
																<span class="orange">Item 4</span>
																<span class="lighter grey">
																	&nbsp; with some description
																</span>
															</div>
														</li>

														<li class="dd-item" data-id="5">
															<div class="dd-handle">
																Item 5
																<div class="pull-right action-buttons">
																	<a class="blue" href="#">
																		<i class="icon-pencil bigger-130"></i>
																	</a>

																	<a class="red" href="#">
																		<i class="icon-trash bigger-130"></i>
																	</a>
																</div>
															</div>

															<ol class="dd-list">
																<li class="dd-item item-orange" data-id="6">
																	<div class="dd-handle"> Item 6 </div>
																</li>

																<li class="dd-item item-red" data-id="7">
																	<div class="dd-handle">Item 7</div>
																</li>

																<li class="dd-item item-blue2" data-id="8">
																	<div class="dd-handle">Item 8</div>
																</li>
															</ol>
														</li>

														<li class="dd-item" data-id="9">
															<div class="dd-handle btn-yellow no-hover">Item 9</div>
														</li>

														<li class="dd-item" data-id="10">
															<div class="dd-handle">Item 10</div>
														</li>
													</ol>
												</li>

												<li class="dd-item" data-id="11">
													<div class="dd-handle">
														Item 11
														<span class="sticker">
															<span class="label label-success arrowed-in">
																<i class="icon-ok bigger-110"></i>
															</span>
														</span>
													</div>
												</li>

												<li class="dd-item" data-id="12">
													<div class="dd-handle">Item 12</div>
												</li>
											</ol>
										</div>
									</div>

									<div class="vspace-sm-16"></div>

									<div class="col-sm-6">
										<div class="dd dd-draghandle">
											<ol class="dd-list">
												<li class="dd-item dd2-item" data-id="13">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon icon-comments blue bigger-130"></i>

														<i class="drag-icon icon-move bigger-125"></i>
													</div>
													<div class="dd2-content">Click on an icon to start dragging</div>
												</li>

												<li class="dd-item dd2-item" data-id="14">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon icon-time pink bigger-130"></i>

														<i class="drag-icon icon-move bigger-125"></i>
													</div>
													<div class="dd2-content">Recent Posts</div>
												</li>

												<li class="dd-item dd2-item" data-id="15">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon icon-signal orange bigger-130"></i>

														<i class="drag-icon icon-move bigger-125"></i>
													</div>
													<div class="dd2-content">Statistics</div>

													<ol class="dd-list">
														<li class="dd-item dd2-item" data-id="16">
															<div class="dd-handle dd2-handle">
																<i class="normal-icon icon-user red bigger-130"></i>

																<i class="drag-icon icon-move bigger-125"></i>
															</div>
															<div class="dd2-content">Active Users</div>
														</li>

														<li class="dd-item dd2-item dd-colored" data-id="17">
															<div class="dd-handle dd2-handle btn-info">
																<i class="normal-icon icon-edit bigger-130"></i>

																<i class="drag-icon icon-move bigger-125"></i>
															</div>
															<div class="dd2-content btn-info no-hover">Published Articles</div>
														</li>

														<li class="dd-item dd2-item" data-id="18">
															<div class="dd-handle dd2-handle">
																<i class="normal-icon icon-eye-open green bigger-130"></i>

																<i class="drag-icon icon-move bigger-125"></i>
															</div>
															<div class="dd2-content">Visitors</div>
														</li>
													</ol>
												</li>

												<li class="dd-item dd2-item" data-id="19">
													<div class="dd-handle dd2-handle">
														<i class="normal-icon icon-reorder blue bigger-130"></i>

														<i class="drag-icon icon-move bigger-125"></i>
													</div>
													<div class="dd2-content">Menu</div>
												</li>
											</ol>
										</div>
									</div>
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="assets/jquery-2.0.3.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/jquery-1.10.2.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="assets/js/jquery.nestable.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($){
			
				$('.dd').nestable();
			
				$('.dd-handle a').on('mousedown', function(e){
					e.stopPropagation();
				});
				
				$('[data-rel="tooltip"]').tooltip();
			
			});
		</script>
	
</body>
</html>
