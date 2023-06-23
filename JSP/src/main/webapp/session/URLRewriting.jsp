<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String strName1 = request.getParameter("strName");

%>

<H1>  Welcome - <%= strName1 %></H1> 
<%=session.getId()%>
</body>
</html>