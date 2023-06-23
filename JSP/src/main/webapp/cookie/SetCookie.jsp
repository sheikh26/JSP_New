<HTML>
	<!-- 

A program to set a cookie. Use URL 
http://localhost:8080/JSP/cookie/SetCookie.jsp?name=city&value=Indore 
to call this page and set a cookie



 -->
	<BODY>
		<H1>Set Cookie</H1>
		<%
			String n = request.getParameter("name");
			String v = request.getParameter("value");
			Cookie c = new Cookie(n, v);
			response.addCookie(c);
		%>

		Cookie is successfuly set. Check http://localhost:8080/JSP/cookie/GetCookie.jsp to see cookies
	</BODY>
</HTML>
