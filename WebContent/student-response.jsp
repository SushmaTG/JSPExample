<jsp:include page="header.html"></jsp:include>

The student full name is : ${param.firstName} ${param.lastName}
<br />
<br />
The student belongs to the country :
<%=request.getParameter("country")%>
<br />
The favorite language is :
<%=request.getParameter("favoriteLanguage1")%>
<br />
<ul>
	<%
		String[] interests = request.getParameterValues("favoriteLanguage");
		if (interests != null) {
			for (String interest : interests) {
				out.println("<li> " + interest + " </li>");
			}
		}else{
			out.println("Choices should be made");
		}
	%>
</ul>
<br />
<br />

<jsp:include page="footer.jsp"></jsp:include>