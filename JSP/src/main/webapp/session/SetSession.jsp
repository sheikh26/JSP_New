<HTML>
	<BODY>
	
	<!-- 

A program to set a session attributes. Use URL http://localhost:8080/JSP/session/SetSession.jsp?key=id&value=Arif 
to call this page and set a session attribute


 -->
 	
		<H1>Set Session</H1>

		<%
			String k = request.getParameter("key");
			String v = request.getParameter("value");

			session.setAttribute(k, v);
		%>

		Congartulation !! Session Attribute is set sucessfully!! 
		
	</BODY>
</HTML>
