<!-- LoginView.jsp -->
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts-menu.sf.net/tag-el" prefix="menu" %>

<HTML>
<HEAD><TITLE><bean:message key="title.login" /></TITLE></HEAD>
<BODY>
<bean:message key="heading.login" />
<html:errors />
<html:form action="/login">
	<p>
	<bean:message key="label.userId" />:
	<html:text property="userId" size="10" />
	<br>
	<bean:message key="label.passWord" />:
	<html:password property="passWord" size="10" />
	<br><br>
	<html:submit>
		<bean:message key="button.submit" />
	</html:submit>
	<html:cancel><bean:message key="button.cancel" /></html:cancel>
</html:form>

</BODY>
</HTML>