<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String thisPageleftMenuOpen = "dropdown-toggle-ui";
	String thisPageleftMenu = "jQueryui";
%> 
<%@ include file="common/PageLeftMenu.jsp"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>jQuery UI </title>

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
							<li class="active">jQuery UI</li>
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
								jQuery UI
								<small>
									<i class="icon-double-angle-right"></i>
									Restyling jQuery UI Widgets and Elements
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-calendar-empty smaller-90"></i>
											Datepicker
										</h3>

										<div class="row">
											<div class="col-xs-6">
												<div class="input-group input-group-sm">
													<input type="text" id="datepicker" class="form-control" />
													<span class="input-group-addon">
														<i class="icon-calendar"></i>
													</span>
												</div>
											</div>
										</div>
									</div><!-- ./span -->

									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-list-alt smaller-90"></i>
											Dialogs
										</h3>
										<a href="#" id="id-btn-dialog2" class="btn btn-info btn-sm">Confirm Dialog</a>
										<a href="#" id="id-btn-dialog1" class="btn btn-purple btn-sm">Modal Dialog</a>

										<div id="dialog-message" class="hide">
											<p>
												This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.
											</p>

											<div class="hr hr-12 hr-double"></div>

											<p>
												Currently using
												<b>36% of your storage space</b>
												.
											</p>
										</div><!-- #dialog-message -->

										<div id="dialog-confirm" class="hide">
											<div class="alert alert-info bigger-110">
												These items will be permanently deleted and cannot be recovered.
											</div>

											<div class="space-6"></div>

											<p class="bigger-110 bolder center grey">
												<i class="icon-hand-right blue bigger-120"></i>
												Are you sure?
											</p>
										</div><!-- #dialog-confirm -->
									</div><!-- ./span -->
								</div><!-- ./row-fluid -->

								<div class="space-12"></div>

								<div class="row">
									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-terminal smaller-90"></i>
											Autocomplete
										</h3>

										<div class="row">
											<div class="col-sm-8 col-md-7">
												<input id="tags" type="text" class="form-control" />
												<div class="space-4"></div>

												<input id="search" type="text" class="form-control" placeholder="Type 'a' or 'h'" />
											</div>
										</div>

										<div class="row">
											<div class="col-xs-12">
												<h3 class="header blue lighter smaller">
													<i class="icon-info smaller-90"></i>
													Tooltip
												</h3>

												<div class="bigger-110">
													<p>
														<a class="grey" id="show-option" href="#" title="slide down on show">
															<i class="icon-hand-right"></i>
															slide down on show
														</a>
													</p>

													<p>
														<a class="blue" id="hide-option" href="#" title="explode on hide">
															<i class="icon-hand-right"></i>
															explode on hide
														</a>
													</p>

													<p>
														<a class="pink" id="open-event" href="#" title="move down on show">
															<i class="icon-hand-right"></i>
															move down on show
														</a>
													</p>
												</div>
											</div>
										</div><!-- ./row-fluid -->
									</div><!-- ./span -->

									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-reorder smaller-90"></i>
											Menu
										</h3>

										<ul id="menu">
											<li class="ui-state-disabled">
												<a href="#">Aberdeen</a>
											</li>

											<li>
												<a href="#">Ada</a>
											</li>

											<li>
												<a href="#">Adamsville</a>
											</li>

											<li>
												<a href="#">Addyston</a>
											</li>

											<li>
												<a href="#">Delphi</a>

												<ul>
													<li class="ui-state-disabled">
														<a href="#">Ada</a>
													</li>

													<li>
														<a href="#">Saarland</a>
													</li>

													<li>
														<a href="#">Salzburg</a>
													</li>
												</ul>
											</li>

											<li>
												<a href="#">Saarland</a>
											</li>

											<li>
												<a href="#">Salzburg</a>

												<ul>
													<li>
														<a href="#">Delphi</a>

														<ul>
															<li>
																<a href="#">Ada</a>
															</li>

															<li>
																<a href="#">Saarland</a>
															</li>

															<li>
																<a href="#">Salzburg</a>
															</li>
														</ul>
													</li>

													<li>
														<a href="#">Delphi</a>

														<ul>
															<li>
																<a href="#">Ada</a>
															</li>

															<li>
																<a href="#">Saarland</a>
															</li>

															<li>
																<a href="#">Salzburg</a>
															</li>
														</ul>
													</li>

													<li>
														<a href="#">Perch</a>
													</li>
												</ul>
											</li>

											<li class="ui-state-disabled">
												<a href="#">Amesville</a>
											</li>
										</ul>
									</div><!-- ./span -->
								</div><!-- ./row-fluid -->

								<div class="space-12"></div>

								<div class="row">
									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-retweet smaller-90"></i>
											Spinner
										</h3>

										<input id="spinner" name="value" type="text" />
									</div><!-- ./span -->

									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-resize-horizontal smaller-90"></i>
											Slider
										</h3>

										<p>
											Please see
											<a href="form-elements.html">form elements page</a>
											for more slider examples.
										</p>

										<div class="space-4"></div>

										<div id="slider"></div>
									</div><!-- ./span -->
								</div><!-- ./row-fluid -->

								<div class="space-12"></div>

								<div class="row">
									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-list smaller-90"></i>
											Sortable Accordion
										</h3>

										<div id="accordion" class="accordion-style2">
											<div class="group">
												<h3 class="accordion-header">Section 1</h3>

												<div>
													<p>
														Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
			ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
			amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
			odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
													</p>
												</div>
											</div>

											<div class="group">
												<h3 class="accordion-header">Section 2</h3>

												<div>
													<p>
														Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
			purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
			velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
			suscipit faucibus urna.
													</p>
												</div>
											</div>

											<div class="group">
												<h3 class="accordion-header">Section 3</h3>

												<div>
													<p>
														Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
			Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
			ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
			lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
													</p>

													<ul>
														<li>List item one</li>
														<li>List item two</li>
														<li>List item three</li>
													</ul>
												</div>
											</div>
										</div><!-- #accordion -->
									</div><!-- ./span -->

									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-folder-close-alt smaller-90"></i>
											Tabs
										</h3>

										<div id="tabs">
											<ul>
												<li>
													<a href="#tabs-1">Nunc tincidunt</a>
												</li>

												<li>
													<a href="#tabs-2">Proin dolor</a>
												</li>

												<li>
													<a href="#tabs-3">Aenean lacinia</a>
												</li>
											</ul>

											<div id="tabs-1">
												<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Duis orci. Aliquam sodales tortor vitae ipsum. Ut et mauris vel pede varius sollicitudin.</p>
											</div>

											<div id="tabs-2">
												<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla..</p>
											</div>

											<div id="tabs-3">
												<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Praesent eu risus hendrerit ligula tempus pretium.</p>
											</div>
										</div>
									</div><!-- ./span -->
								</div><!-- ./row-fluid -->

								<div class="space-12"></div>

								<div class="row">
									<div class="col-sm-6">
										<h3 class="header blue lighter smaller">
											<i class="icon-spinner"></i>
											Progressbar
										</h3>

										<div id="progressbar"></div>
									</div><!-- ./span -->
								</div><!-- ./row-fluid -->

								<!-- PAGE CONTENT ENDS -->
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

		<script src="assets/js/jquery-ui-1.10.3.full.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
			
				$( "#datepicker" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					//isRTL:true,
			
					
					/*
					changeMonth: true,
					changeYear: true,
					
					showButtonPanel: true,
					beforeShow: function() {
						//change button colors
						var datepicker = $(this).datepicker( "widget" );
						setTimeout(function(){
							var buttons = datepicker.find('.ui-datepicker-buttonpane')
							.find('button');
							buttons.eq(0).addClass('btn btn-xs');
							buttons.eq(1).addClass('btn btn-xs btn-success');
							buttons.wrapInner('<span class="bigger-110" />');
						}, 0);
					}
			*/
				});
			
			
				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
			
				$( "#id-btn-dialog1" ).on('click', function(e) {
					e.preventDefault();
			
					var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
						modal: true,
						title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='icon-ok'></i> jQuery UI Dialog</h4></div>",
						title_html: true,
						buttons: [ 
							{
								text: "Cancel",
								"class" : "btn btn-xs",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							},
							{
								text: "OK",
								"class" : "btn btn-primary btn-xs",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							}
						]
					});
			
					/**
					dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
					**/
				});
			
			
				$( "#id-btn-dialog2" ).on('click', function(e) {
					e.preventDefault();
				
					$( "#dialog-confirm" ).removeClass('hide').dialog({
						resizable: false,
						modal: true,
						title: "<div class='widget-header'><h4 class='smaller'><i class='icon-warning-sign red'></i> Empty the recycle bin?</h4></div>",
						title_html: true,
						buttons: [
							{
								html: "<i class='icon-trash bigger-110'></i>&nbsp; Delete all items",
								"class" : "btn btn-danger btn-xs",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
							,
							{
								html: "<i class='icon-remove bigger-110'></i>&nbsp; Cancel",
								"class" : "btn btn-xs",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
						]
					});
				});
			
			
				
				//autocomplete
				 var availableTags = [
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"
				];
				$( "#tags" ).autocomplete({
					source: availableTags
				});
			
				//custom autocomplete (category selection)
				$.widget( "custom.catcomplete", $.ui.autocomplete, {
					_renderMenu: function( ul, items ) {
						var that = this,
						currentCategory = "";
						$.each( items, function( index, item ) {
							if ( item.category != currentCategory ) {
								ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
								currentCategory = item.category;
							}
							that._renderItemData( ul, item );
						});
					}
				});
				
				 var data = [
					{ label: "anders", category: "" },
					{ label: "andreas", category: "" },
					{ label: "antal", category: "" },
					{ label: "annhhx10", category: "Products" },
					{ label: "annk K12", category: "Products" },
					{ label: "annttop C13", category: "Products" },
					{ label: "anders andersson", category: "People" },
					{ label: "andreas andersson", category: "People" },
					{ label: "andreas johnson", category: "People" }
				];
				$( "#search" ).catcomplete({
					delay: 0,
					source: data
				});
				
				
				//tooltips
				$( "#show-option" ).tooltip({
					show: {
						effect: "slideDown",
						delay: 250
					}
				});
			
				$( "#hide-option" ).tooltip({
					hide: {
						effect: "explode",
						delay: 250
					}
				});
			
				$( "#open-event" ).tooltip({
					show: null,
					position: {
						my: "left top",
						at: "left bottom"
					},
					open: function( event, ui ) {
						ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
					}
				});
			
			
				//Menu
				$( "#menu" ).menu();
			
			
				//spinner
				var spinner = $( "#spinner" ).spinner({
					create: function( event, ui ) {
						//add custom classes and icons
						$(this)
						.next().addClass('btn btn-success').html('<i class="icon-plus"></i>')
						.next().addClass('btn btn-danger').html('<i class="icon-minus"></i>')
						
						//larger buttons on touch devices
						if(ace.click_event == "tap") $(this).closest('.ui-spinner').addClass('ui-spinner-touch');
					}
				});
			
				//slider example
				$( "#slider" ).slider({
					range: true,
					min: 0,
					max: 500,
					values: [ 75, 300 ]
				});
			
			
			
				//jquery accordion
				$( "#accordion" ).accordion({
					collapsible: true ,
					heightStyle: "content",
					animate: 250,
					header: ".accordion-header"
				}).sortable({
					axis: "y",
					handle: ".accordion-header",
					stop: function( event, ui ) {
						// IE doesn't register the blur when sorting
						// so trigger focusout handlers to remove .ui-state-focus
						ui.item.children( ".accordion-header" ).triggerHandler( "focusout" );
					}
				});
				//jquery tabs
				$( "#tabs" ).tabs();
				
				
				//progressbar
				$( "#progressbar" ).progressbar({
					value: 37,
					create: function( event, ui ) {
						$(this).addClass('progress progress-striped active')
							   .children(0).addClass('progress-bar progress-bar-success');
					}
				});
					
			});
		</script>
	
</body>
</html>
