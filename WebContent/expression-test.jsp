<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>This is an example to test the JSP tags</h3>
	<h4>This will be the expression tag</h4>
	Converting string to uppercase : <%= new String("Hello World").toUpperCase() %>
	<br/>
	Evaluate mathematical expression : <%= 25 * 4 %>
	<br/>
	Is 75 less than 65 : <%= 75 < 65 %>
	<br/>
	<h4>This will be scriplet tag</h4>
	<%
		for(int i = 0; i < 5; i++){
			out.println("<br/> I love to code : " +i);
		}
	%>
	<br/>
	<h4>This will be declaration tag</h4>
	<%!
		String sayHello(String name){
		return "Hello " + name;
	}
	%>
	<%= sayHello("Sushma") %>
	<br/>
	<h3>This will be the include tag</h3>
	Including the class and calling the method to give the lower case for <%= FunUtil.makeItLower("<strong><em> FUN FUN FUN </em></strong>") %>
</body>
</html>









