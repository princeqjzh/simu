<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.lang.System"%>
<%
request.setAttribute("currentMenu", thisPageleftMenu);
String leftMenu = request.getParameter("leftMenu");
if (leftMenu == null)
	leftMenu = thisPageleftMenu;
request.setAttribute("leftMenu", leftMenu);

request.setAttribute("currentMenuOpen", thisPageleftMenuOpen);
String leftMenuOpen = request.getParameter("leftMenuOpen");
if (leftMenuOpen == null)
	leftMenuOpen = thisPageleftMenuOpen;
request.setAttribute("leftMenuOpen", leftMenuOpen);
%>
