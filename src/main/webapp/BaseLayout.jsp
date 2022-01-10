<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" ignore="true" /></title>
</head>
<body>
    <table border="1">
        <tr>
            <td height="20%" colspan="2">
            	<tiles:insert attribute="header" ignore="true" />
            </td>
        </tr>
        <tr>
            <td width="20%" height="250">
            	<tiles:insert attribute="menu" />
            </td>
            <td>
            	<tiles:insert attribute="body" />
            </td>
        </tr>
        <tr>
            <td height="20%" colspan="2">
            	<tiles:insert attribute="footer" />
            </td>
        </tr>
    </table>
</body>
</html>