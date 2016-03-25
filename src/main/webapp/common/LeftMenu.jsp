<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.lang.System"%>
<%@page import="com.onealert.common.MyProp"%>
<%
	String _currentMenu = (String) request.getAttribute("leftMenu");
	String _currentMenuOpen = (String) request.getAttribute("leftMenuOpen");
	String _console_url = MyProp.getVariable("menu.console.url");//<%=_console_url
	
%>
<script type="text/javascript">
<%-- var _LEFT_MENU="<%=_currentMenuOpen%>";

alert(_LEFT_MENU); --%>
</script>
<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
	<ul class="nav nav-list">
		<li  <%if ("index".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="index.jsp"> <i
				class="icon-dashboard"></i> <span class="menu-text"> 测试结果统计 </span>
		</a></li>
		<li <%if ("typography".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="typography.jsp"> <i class="icon-text-width"></i>
				<span class="menu-text"> 告警接口测试 </span>
		</a></li>

		<li <%if ("dropdown-toggle-ui".equalsIgnoreCase(_currentMenuOpen)) {%> class="active open"
			<%}%>><a href="#" class="dropdown-toggle"> <i
				class="icon-desktop"></i> <span class="menu-text"> 分派策略测试 </span> <b
				class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li <%if ("elements".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="elements.jsp"> <i
						class="icon-double-angle-right"></i> 组件
				</a></li>

				<li <%if ("buttons".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="buttons.jsp"> <i
						class="icon-double-angle-right"></i> 按钮 &amp; 图表
				</a></li>

				<li <%if ("treeview".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="treeview.jsp"> <i
						class="icon-double-angle-right"></i> 树菜单
				</a></li>

				<li <%if ("jQueryui".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="jquery-ui.jsp"> <i
						class="icon-double-angle-right"></i> jQuery UI
				</a></li>

				<li <%if ("nestable".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="nestable-list.jsp"> <i
						class="icon-double-angle-right"></i> 可拖拽列表
				</a></li>

				<li><a href="#" class="dropdown-toggle"> <i
						class="icon-double-angle-right"></i> 三级菜单 <b
						class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">
						<li><a href="#"> <i class="icon-leaf"></i> 第一级
						</a></li>

						<li><a href="#" class="dropdown-toggle"> <i
								class="icon-pencil"></i> 第四级 <b class="arrow icon-angle-down"></b>
						</a>

							<ul class="submenu">
								<li><a href="#"> <i class="icon-plus"></i> 添加产品
								</a></li>

								<li><a href="#"> <i class="icon-eye-open"></i> 查看商品
								</a></li>
							</ul></li>
					</ul></li>
			</ul></li>

		<li   <%if ("dropdown-toggle-table".equalsIgnoreCase(_currentMenuOpen)) {%> class="active open"
			<%}%>><a href="#" class="dropdown-toggle"> <i class="icon-list"></i>
				<span class="menu-text"> 告警策略测试 </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<!-- <li><a href="tables.jsp"> <i
						class="icon-double-angle-right"></i> 简单 &amp; 动态
				</a></li> -->

				<%-- <li <%if ("jqgrid".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="jqgrid.jsp"> <i
						class="icon-double-angle-right"></i> jqGrid plugin
				</a></li> --%>
				
				<li <%if ("user".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="queryUserByEmail.jsp"> <i
						class="icon-double-angle-right"></i> 查询单个用户
				</a></li>
				<li <%if ("queryOwnerByEmail".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="queryOwnerByEmail.jsp"> <i
						class="icon-double-angle-right"></i> 查询租户
				</a></li>
				<li <%if ("queryUserByOwner".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="queryUserByOwner.jsp"> <i
						class="icon-double-angle-right"></i> 查询租户下用户	
				</a></li>
			</ul></li>
			
			
		<li   <%if ("dropdown-toggle-quotas".equalsIgnoreCase(_currentMenuOpen)) {%> class="active open"
			<%}%>><a href="#" class="dropdown-toggle"> <i class="icon-list"></i>
				<span class="menu-text"> 配置管理测试 </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">

				
				<li <%if ("QuotasByOwner".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="QuotasByOwner.jsp"> <i
						class="icon-double-angle-right"></i> 查询租户下配额
				</a></li>
				<li <%if ("LicenseByOwner".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="LicenseByOwner.jsp"> <i
						class="icon-double-angle-right"></i> License
				</a></li>
				<li <%if ("QuotasByOwner2".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="queryUserByOwner.jsp"> <i
						class="icon-double-angle-right"></i> 查询租户下用户	
				</a></li>
			</ul></li>

		<li <%if ("dropdown-toggle-form".equalsIgnoreCase(_currentMenuOpen)) {%> class="active open"
			<%}%>><a href="#" class="dropdown-toggle"> <i class="icon-edit"></i>
				<span class="menu-text"> 团队管理测试 </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li <%if ("formelements".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="form-elements.jsp"> <i
						class="icon-double-angle-right"></i> 表单组件
				</a></li>

				<li <%if ("formwizard".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="form-wizard.jsp"> <i
						class="icon-double-angle-right"></i> 向导提示 &amp; 验证
				</a></li>

				<li <%if ("wysiwyg".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="wysiwyg.jsp"> <i
						class="icon-double-angle-right"></i> 编辑器
				</a></li>

				<li <%if ("dropzone".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="dropzone.jsp"> <i
						class="icon-double-angle-right"></i> 文件上传
				</a></li>
			</ul></li>

		<li <%if ("widgets".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="widgets.jsp"> <i class="icon-list-alt"></i> <span
				class="menu-text"> 用户中心测试 </span>
		</a></li>

		<li <%if ("calendar".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="calendar.jsp"> <i class="icon-calendar"></i> <span
				class="menu-text"> 统计分析测试 <span
					class="badge badge-transparent tooltip-error"
					title="2&nbsp;Important&nbsp;Events"> <i
						class="icon-warning-sign red bigger-130"></i>
				</span>
			</span>
		</a></li>
<%-- 
		<li <%if ("gallery".equalsIgnoreCase(_currentMenu)) {%> class='active'
			<%}%>><a href="gallery.jsp"> <i class="icon-picture"></i> <span
				class="menu-text"> 相册 </span>
		</a></li>

		<li><a href="#" class="dropdown-toggle">
				<i class="icon-tag"></i> <span class="menu-text"> 更多页面 </span> <b
				class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="profile.jsp"> <i
						class="icon-double-angle-right"></i> 用户信息
				</a></li>

				<li><a href="inbox.jsp"> <i class="icon-double-angle-right"></i>
						收件箱
				</a></li>

				<li><a href="pricing.jsp"> <i
						class="icon-double-angle-right"></i> 售价单
				</a></li>

				<li><a href="invoice.jsp"> <i
						class="icon-double-angle-right"></i> 购物车
				</a></li>

				<li><a href="timeline.jsp"> <i
						class="icon-double-angle-right"></i> 时间轴
				</a></li>

				<li><a href="login.jsp"> <i class="icon-double-angle-right"></i>
						登录 &amp; 注册
				</a></li>
			</ul></li>

		<li><a href="#" class="dropdown-toggle"> <i
				class="icon-file-alt"></i> <span class="menu-text"> 其他页面 <span
					class="badge badge-primary ">5</span>
			</span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li><a href="faq.jsp"> <i class="icon-double-angle-right"></i>
						帮助
				</a></li>

				<li><a href="error-404.jsp"> <i
						class="icon-double-angle-right"></i> 404错误页面
				</a></li>

				<li><a href="error-500.jsp"> <i
						class="icon-double-angle-right"></i> 500错误页面
				</a></li>

				<li><a href="grid.jsp"> <i class="icon-double-angle-right"></i>
						网格
				</a></li>

				<li><a href="blank.jsp"> <i class="icon-double-angle-right"></i>
						空白页面
				</a></li>
			</ul></li> --%>
	</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>