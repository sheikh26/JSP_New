<%
	request.setAttribute("UName", "chandan");
	request.setAttribute("Password", "chand");
	String pageName = "RemoveAttributeMethod1.jsp";
	RequestDispatcher requestDispatcher = request.getRequestDispatcher
(pageName);
	if(requestDispatcher != null){
		requestDispatcher.forward(request, response);
	}
%>