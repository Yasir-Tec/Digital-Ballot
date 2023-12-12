<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
  <title><Table> Responsive</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>
<body>
 <table>
<%

int no=Integer.parseInt(request.getParameter("dvoterID"));
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

Statement stmt=con.createStatement();
ResultSet rs = stmt.executeQuery("select * from candidate where srno="+no+"");
if(rs.next()){ 
	
	
	int candidateid=rs.getInt(1);
	String name=rs.getString(2);
	String party=rs.getString(3);
	String email=rs.getString(4);
    %>
   
<h1></span> <span class="yellow">SEARCHED RESULT</pan></h1>
<table class="container">
	<thead>
		<tr>
			<th><h1><font color="yellow">CANDIDATE-ID</h1></th>
			<th><h1><font color="yellow">CANDIDATE NAME</h1></th>
			<th><h1><font color="yellow">PARTY</h1></th>
			<th><h1><font color="yellow">EMAIL</h1></th>
		</tr>
	</thead>
	
	<tr>

    <td><%=candidateid %></td>
    <td><%=name%></td>
    <td><%=party%></td>
    <td><%=email%></td>
    

   		
	
 <td> <form Action="candidateList.jsp" Method=post><Button><-Back</Button></form></td>
    
    
</tr> 
	
      <%
}

%>

</table>
</body>
</html>