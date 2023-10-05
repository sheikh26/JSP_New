<%@page import="java.util.*" %>
      <%
	String username, password;
	if(request.getParameter("txtUserName") == null)
		username = "";
	else
		username = request.getParameter("txtUserName");
		request.setAttribute("UName", username);
		
	if(request.getParameter("txtPassword") == null)
		password = "";
	else
		password = request.getParameter("txtPassword");
			
%>
<%
	out.println("<b>Welcome " + request.getAttribute("UName") + "!</b>");
%>