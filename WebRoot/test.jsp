<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
out.println("<p>app context path is: " + path+ "</p>");
out.println("<p>begin to print 10 random numbers: </p>");
for(int i=0;i<10;i++){
	out.println("<p>" + Math.random()+ "</p>");
}
out.println("<p>jsp page ends</p>");
%>