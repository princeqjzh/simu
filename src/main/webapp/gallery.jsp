<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String thisPageleftMenuOpen = "";
	String thisPageleftMenu = "gallery";
%> 
<%@ include file="common/PageLeftMenu.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>gallery</title>

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
							<li class="active">Gallery</li>
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
								Gallery
								<small>
									<i class="icon-double-angle-right"></i>
									responsive photo gallery using colorbox
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row-fluid">
									<ul class="ace-thumbnails">
										<li>
											<a href="assets/images/gallery/image-1.jpg" title="Photo Title" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-1.jpg" />
												<div class="tags">
													<span class="label-holder">
														<span class="label label-info">breakfast</span>
													</span>

													<span class="label-holder">
														<span class="label label-danger">fruits</span>
													</span>

													<span class="label-holder">
														<span class="label label-success">toast</span>
													</span>

													<span class="label-holder">
														<span class="label label-warning arrowed-in">diet</span>
													</span>
												</div>
											</a>

											<div class="tools">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-2.jpg" />
												<div class="text">
													<div class="inner">Sample Caption on Hover</div>
												</div>
											</a>
										</li>

										<li>
											<a href="assets/images/gallery/image-3.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-3.jpg" />
												<div class="text">
													<div class="inner">Sample Caption on Hover</div>
												</div>
											</a>

											<div class="tools tools-bottom">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-4.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-4.jpg" />
												<div class="tags">
													<span class="label-holder">
														<span class="label label-info arrowed">fountain</span>
													</span>

													<span class="label-holder">
														<span class="label label-danger">recreation</span>
													</span>
												</div>
											</a>

											<div class="tools tools-top">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<div>
												<img alt="150x150" src="assets/images/gallery/thumb-5.jpg" />
												<div class="text">
													<div class="inner">
														<span>Some Title!</span>

														<br />
														<a href="assets/images/gallery/image-5.jpg" data-rel="colorbox">
															<i class="icon-zoom-in"></i>
														</a>

														<a href="#">
															<i class="icon-user"></i>
														</a>

														<a href="#">
															<i class="icon-share-alt"></i>
														</a>
													</div>
												</div>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-6.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-6.jpg" />
											</a>

											<div class="tools tools-right">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-1.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-1.jpg" />
											</a>

											<div class="tools">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>

										<li>
											<a href="assets/images/gallery/image-2.jpg" data-rel="colorbox">
												<img alt="150x150" src="assets/images/gallery/thumb-2.jpg" />
											</a>

											<div class="tools tools-top">
												<a href="#">
													<i class="icon-link"></i>
												</a>

												<a href="#">
													<i class="icon-paper-clip"></i>
												</a>

												<a href="#">
													<i class="icon-pencil"></i>
												</a>

												<a href="#">
													<i class="icon-remove red"></i>
												</a>
											</div>
										</li>
									</ul>
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

		<script src="assets/js/jquery.colorbox-min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
	var colorbox_params = {
		reposition:true,
		scalePhotos:true,
		scrolling:false,
		previous:'<i class="icon-arrow-left"></i>',
		next:'<i class="icon-arrow-right"></i>',
		close:'&times;',
		current:'{current} of {total}',
		maxWidth:'100%',
		maxHeight:'100%',
		onOpen:function(){
			document.body.style.overflow = 'hidden';
		},
		onClosed:function(){
			document.body.style.overflow = 'auto';
		},
		onComplete:function(){
			$.colorbox.resize();
		}
	};

	$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
	$("#cboxLoadingGraphic").append("<i class='icon-spinner orange'></i>");//let's add a custom loading icon

	/**$(window).on('resize.colorbox', function() {
		try {
			//this function has been changed in recent versions of colorbox, so it won't work
			$.fn.colorbox.load();//to redraw the current frame
		} catch(e){}
	});*/
})
		</script>
	
</body>
</html>
