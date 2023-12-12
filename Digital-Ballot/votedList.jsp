<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta charset="UTF-8">
  <title><Table> Responsive</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <h1></span> <span class="yellow">VOTED VOTER`S LIST</pan></h1>
   <table class="container">
	<thead>
		<tr>
			<th><h1><font color="yellow">ENROLLMENT NO</h1></th>
			<th><h1><font color="yellow">FIRST NAME</h1></th>
			<th><h1><font color="yellow">LAST NAME</h1></th>
			<th><h1><font color="yellow">EMAIL</h1></th>
			<th><h1><font color="yellow">GENDER</h1></th>
		</tr>
	</thead>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
System.out.println("Connected..!!! welcome page");
Statement st2=co.createStatement();
String query2="select * from user1 where voting=1";
ResultSet rs2=st2.executeQuery(query2);

while(rs2.next())
{
		String a=rs2.getString(1);
		String a1=rs2.getString(3);
		String a2=rs2.getString(4);
		String a3=rs2.getString(5);
		String a4=rs2.getString(7);
		


%>
 <tr>

    <td><%=a %></td>
    <td><%=a1%></td>
    <td><%=a2%></td>
    <td><%=a3%></td>
    <td><%=a4%></td>
    

   		
<% } %>	
 <%
 Statement st1=co.createStatement();
 String query1="select count(voting)from user1 where voting=1";
 ResultSet rs1=st1.executeQuery(query1);
 String countrow1="";
 while(rs1.next())
 {
 	countrow1=rs1.getString(1);
 	System.out.println("voted list count"+countrow1);
 	
 }
 
 
 
 %>
 <h2></span> <span class="#F08080">Total Voted Voters = <%=	countrow1 %></pan></h2> 
    
</tr> 
</body>
</html>