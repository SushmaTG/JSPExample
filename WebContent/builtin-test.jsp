<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>This is the test for JSP built in objects</h2>
	Give me the details of the HTTP request header <%= request.getHeader("User-Agent") %>
	<br/>
	Give me the language of the HTTP request made <%= request.getLocale() %> 
</body>
</html>