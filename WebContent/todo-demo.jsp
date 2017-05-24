<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<jsp:include page="header.html"></jsp:include>

<form action="todo-demo.jsp">
	<input type="text" name="newItem">
	<input type="submit" value="Submit">
</form>

<br/>

The todos so far are :

<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	String newItem = request.getParameter("newItem");
	if(newItem != null && newItem != ""){
		items.add(newItem);
	}
%>
<br/>

<ol>
<% 
	for(String item : items){
		out.println("<li> " + item + " </li>");
	}
%>
</ol>

<a href="todo-view.jsp">Click here to view your todos</a>


<jsp:include page="footer.jsp"></jsp:include>
