<html>
<body>
<form action="" method="get">
<table border="2" bgcolor="pink">
<tr>
<td>
UserName
</td>
<td>
<%

String strName = request.getParameter("jsessionid");

%>
<%= strName %>
</td>
</tr>
</table>
</form>
</body>
</html>