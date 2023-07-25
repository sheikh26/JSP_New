<%@ page errorPage="ExceptionHandler.jsp"%>

<html>
<!-- 

A program to check the error in JSP. Use URL 
 http://localhost:8080/JSP/errorHandling/FormHandler.jsp?age=12
to test it 

copyright (c) WebDev Technologies Indore
@author: Arif Sheikh
@url : www.WebDev.co.in

 -->
	<body>

		<%
			int age;
			age = Integer.parseInt(request.getParameter("age"));
		%>
		<p>
			Your age is : <%=age%> years.

		</p>
	</body>
</html>
