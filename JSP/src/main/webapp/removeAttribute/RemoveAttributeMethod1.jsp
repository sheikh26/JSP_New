<b>
<%
	out.println("User Name: " + request.getAttribute("UName") + "<br/>");
	out.println("Password: " + request.getAttribute("Password") + "<br/>");
	request.removeAttribute("Password");
	out.println("Your name: " + request.getAttribute("UName") + "<br/>");
	out.println("Your password: ");
	if(request.getAttribute("Password") == null)
		out.println("\'Password\' attribute is removed.");
	else
		out.println(request.getAttribute("Password"));
%></b>