<%@page import="java.util.*" %>
      <%
	for(Enumeration e = request.getAttributeNames(); e.hasMoreElements(); ){
		String attName = (String)e.nextElement();
		out.println("<br/>" + attName);
	}
%>