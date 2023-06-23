<%@page import="java.util.*" %>
      <%
	String username, password;
	if(request.getParameter("txtUserName") == null)
		username = "";
	else
		username = request.getParameter("txtUserName");
		if(request.getParameter("txtPassword") == null)
		password = "";
	else
		password = request.getParameter("txtPassword");
			request.setAttribute("UName", username);
%>
<%
	out.println("<b>Welcome " + request.getAttribute("UName") + "!</b>");
%>