<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts-menu.sf.net/tag-el" prefix="menu" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<menu:useMenuDisplayer name="Simple"
  bundle="ApplicationResources" permissions="rolesAdapter">
  <menu:displayMenu name="localeMenu"/>
</menu:useMenuDisplayer>
</body>
</html>