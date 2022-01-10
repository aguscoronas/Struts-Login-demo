<!-- MainMenu.jsp -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts-menu.sf.net/tag-el" prefix="menu" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<jsp:useBean id="LoginBean" scope="request" class="ar.dcc.agus.LoginBean" />

<HTML>
<HEAD><TITLE><bean:message key="title.mainmenu" /></TITLE></HEAD>
<BODY>
<bean:message key="heading.mainmenu"/>
<p>
<bean:message key="label.userType"/>

<b><bean:message key="${LoginBean.userType}"></bean:message></b><br>

<menu:useMenuDisplayer name="TabbedMenu"
  bundle="ApplicationResources" permissions="rolesAdapter">
  <menu:displayMenu name="mainMenu"/>
</menu:useMenuDisplayer>
</BODY>
</HTML>