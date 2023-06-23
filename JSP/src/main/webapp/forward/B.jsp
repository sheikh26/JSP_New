<!-- 
A program uses Forward Tag.

copyright (c) Java Factory Indore Indore
@author: Arif Sheikh
@url : webdev

 -->
 <%
System.out.println("This is B JSP " + request.getParameter("param"));
request.setAttribute("B","Value Set By B");
%>
<jsp:forward page="C.jsp"></jsp:forward>