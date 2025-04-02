<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.io.InputStream"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String date=request.getParameter("date");
String time=request.getParameter("time");
String members=request.getParameter("members");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
//out.write(Area+Address+Date1+Date2+link);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yamifoods","root","");
	PreparedStatement ps=conn.prepareStatement("insert into booking value(?,?,?,?,?,?)");
	ps.setString(1, date);
	ps.setString(2, time);
	ps.setString(3, members);
	ps.setString(4, name);
	ps.setString(5, email);
	ps.setString(6, phone);
	int x=ps.executeUpdate();
	response.sendRedirect("Thankyou.html");
}
catch(Exception e)
{
	out.write("Sorry...");
}
%>
</body>
</html> 