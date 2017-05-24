<jsp:include page="header.html"></jsp:include>
<br/>
<%
	// get the param to be saved as a cookie
	
	String reqParam = request.getParameter("favoriteLanguage");
	
	// create the cookie with reqParam as value
	
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", reqParam);
	
	theCookie.setMaxAge(60*60*24*365);
	
	response.addCookie(theCookie);
	
	out.println("You have changed your preference to : " + reqParam);
%>
<br/>
<br/>

<a href="cookies-homepage.jsp">View the suggestions based on your selected preference on home page</a>
<br/>
<br/>
<jsp:include page="footer.jsp"></jsp:include>