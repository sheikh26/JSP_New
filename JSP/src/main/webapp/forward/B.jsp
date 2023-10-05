<!-- 
A program uses Forward Tag.

copyright (c) Java Factory Indore Indore
@author: Arif Sheikh
@url : webdev

 -->
 <%
 String strFName = request.getParameter("param");
request.setAttribute("B",strFName);
%>
<jsp:forward page="C.jsp"></jsp:forward>