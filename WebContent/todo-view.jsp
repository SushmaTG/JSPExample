<%@page import="java.util.List"%>
<jsp:include page="header.html"></jsp:include>
<ol>
	<%
	List<String> todo_list = (List<String>) session.getAttribute("myToDoList"); 
	for(String item : todo_list){
		out.println("<li> " + item + " </li>");
	}
	%>
</ol>
</body>
</html>