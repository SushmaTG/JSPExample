<jsp:include page="header.html"></jsp:include>
<br />

<h1>Training Portal</h1>

<%
	String favLang = "Java";

	Cookie[] theCookies = request.getCookies();
	if (theCookies != null) {
		for (Cookie tempCookie : theCookies) {
			if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<br />
<h3>
	New Books for
	<%= favLang %></h3>

<ul>
	<li><%= favLang %> blah blah blah</li>
</ul>

<h3>Latest News Reports for <%= favLang %></h3>
<ul>
	<li><%= favLang %> blah blah blah</li>
</ul>

<h3>Hot Jobs for <%= favLang %></h3>
<ul>
	<li><%= favLang %> blah blah blah</li>
</ul>
<br />

<a href="cookies-form.html">Personalize this page</a>

<br/>
<br />
<jsp:include page="footer.jsp"></jsp:include>