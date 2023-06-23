<html>
<!-- 

A program uses Forward Tag. 

copyright (c) Java Factory Indore Indore
@author: Arif Sheikh
@url : webdev

 -->
 	<body>
		This is Page C
		<br>
		<h2>
			Parameter Values
		</h2>
		param :
		<%=request.getParameter("param")%>
		<h2>
			Attribute Values
		</h2>
		Set By A:
		<%=request.getAttribute("A")%>
		<br>
		Set By B:
		<%=request.getAttribute("B")%>

	</body>
</html>
