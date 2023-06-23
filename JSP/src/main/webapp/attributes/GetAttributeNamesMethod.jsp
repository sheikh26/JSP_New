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
%>

<%
	String strViewPage="GetAttributeNamesMethod1.jsp";
	RequestDispatcher dispatcher = request.getRequestDispatcher(strViewPage);
	if (dispatcher != null){
		dispatcher.forward(request, response);
	} 
%>