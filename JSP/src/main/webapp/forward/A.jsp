<!-- 

A program to use Forward Tag.Use URL http://localhost:8080/JSP/forward/A.jsp?param=Arif  to test it 

copyright (c) Java Factory Indore Indore
@author: Arif Sheikh
@url : webdev

 -->
<%
String strFName = request.getParameter("param");
 request.setAttribute("A",strFName);
 %>

<%-- Test forward through JSP --%>

<jsp:forward page="B.jsp"/>

<%-- Test forward through servlet --%>

<%-- jsp:forward page="/servlet/TestForward"/ --%>
