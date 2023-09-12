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

String strFName = request.getParameter("fName");
String strLName = request.getParameter("lName");

%>

<H1> Hello - <%= strFName %> <%= strLName %></H1> 



</BODY>

</HTML>