<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<HEAD>
		<TITLE>Welcome to Hello JSP</TITLE>
	</HEAD>
<BODY>
<%
//Context env = (Context) new InitialContext().lookup("java:comp/env");
//String docBase = (String) env.lookup("organization");
//URL= http://localhost:8080/JSP/HelloName.jsp?fName=Arif&lName=Sheikh
%>


<%

String strName = request.getParameter("fName");
response.sendRedirect("URLRewriting.jsp?fName="+strName);

%>

<H1>  Hello JSP - <%= strName %></H1> 


</BODY>

</HTML>