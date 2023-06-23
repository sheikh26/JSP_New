<%@page import="java.util.Enumeration"%>
<HTML>
	<BODY>
	
<!-- 

A program to get all session attributes. Use URL 
http://localhost:8080/JSP/session/GetSession.jsp 
to test it 



 -->	
		<H1>
			Get Session
		</H1>

		<%
			Enumeration e = session.getAttributeNames();
			while (e.hasMoreElements()) {
				String name = (String) e.nextElement();
				String value = (String) session.getAttribute(name);
		%>
		<%=name%> : <%=value%> 	<BR>
<%=session.getId()%>
		<%
			}
		%>
	</BODY>
</HTML>
