<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%



try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yamifoods","root","");
	Statement stmt =conn.createStatement();
	
	ResultSet rs=stmt.executeQuery("select * from booking	");
	%>
	<table border=10>
	<tr>
	<th>Date</th>
	<th>Time</th>
	<th>Members</th>
	<th>Name</th>
	<th>Phone</th>
	</tr>
	<%
	while(rs.next())
	{
		%>
		<tr>
<td><% out.write(rs.getString(1));%></td>
		<td><% out.write(rs.getString(2));%></td>
		<td><%  out.write(rs.getString(3));%></td>
		<td><%  out.write(rs.getString(4));%></td>
		<td><% out.write(rs.getString(5));%></td>
	</tr>
		
		<%
	}
	
	
	
	%>
	</table>
	<%


}
catch(Exception e)
{
	out.write("Sorry...");
}
%>
</body>
</html>