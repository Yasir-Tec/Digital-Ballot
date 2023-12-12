<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>Delete Form</title>
  
  
  
      <link rel="stylesheet" href="css1/style.css">

  
</head>
<body>
<% 



int no=Integer.parseInt(request.getParameter("dvoterID"));


Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

Statement stmt=con.createStatement();

stmt.executeUpdate("delete from candidate where srno="+no);
//PreparedStatement ps=con.prepareStatement("delete from user1 where userid=?");
//ps.setInt(3,no);

//ps.executeUpdate();





%>

<script type="text/javascript">
            alert('<%="Your Data Successfully deleted..."%>');
        </script>
<center> <form Action=finish.jsp Method=post><Button>HOME</Button>

</body>
</html>