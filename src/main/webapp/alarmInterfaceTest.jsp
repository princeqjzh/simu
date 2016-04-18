<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String thisPageleftMenuOpen = "";
	String thisPageleftMenu = "alarmInterfaceTest";
%> 
<%@ include file="common/PageLeftMenu.jsp"%>
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%
//配置DB信息
String driverName="com.mysql.jdbc.Driver"; 
String userName="root"; 
String userPasswd="tester"; 
String dbName="simulator"; 
String tableName="execution";
String url="jdbc:mysql://ci1.test.110monitor.com:3306/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
String sql="SELECT * FROM " + tableName +  " order by execution_id desc"; 
ResultSet rs = statement.executeQuery(sql); 
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>告警接口测试</title>
		<meta name="keywords" content="typography" />
		<meta name="description" content="typography" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

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
								<a href="#">首页</a>
							</li>
							<li class="active">告警接口测试</li>
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
								测试执行
								<small>
									<i class="icon-double-angle-right"></i>
									告警接口测试
								</small>
							</h1>
						</div><!-- /.page-header -->
						<!-- 告警接口测试记录列在下面 -->
						<h4>告警接口测试执行记录</h4>
						<table>
						<tr>
							<td>测试用例名称</td>
							<td>&nbsp;&nbsp;</td>
							<td>执行结果</td>
						</tr>
						<%
							while(rs.next()){ 	
								String testcase_name = rs.getString("TESTCASE_NAME");
								String result = rs.getString("status");
								String color = "black";
								if(result.equalsIgnoreCase("Fail")){
									color = "red";
								}
						%>
								<tr>
									<td><font color="<%=color%>"><%=testcase_name%></font></td>
									<td>&nbsp;&nbsp;</td>
									<td><font color="<%=color%>"><%=result %></font></td>
								</tr>
						<%
							} 
						%>
						</table>

						
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
	</body>
</html>
<%
rs.close(); 
statement.close(); 
connection.close(); 
%>
