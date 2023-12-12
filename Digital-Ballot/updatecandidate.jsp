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
  <title>Login Form</title>
  
  
  
      <link rel="stylesheet" href="css1/style.css">

  
</head>
<body><table class="container">
<%

int no=Integer.parseInt(request.getParameter("userid"));
String pwd1=request.getParameter("pwd" );
String uname1=(String)request.getParameter("fname");
String uname2=(String)request.getParameter("lname");
String party=request.getParameter("Party");
String email=request.getParameter("email");


Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

Statement stmt=con.createStatement();

//stmt.executeUpdate("update user1 set pwd= "+pwd1+"set");
PreparedStatement pst=con.prepareStatement("update candidate set password=?,fname=?,lname=?,email=?,party=? where srno=?");
pst.setInt(6, no);
pst.setString(1, pwd1);
pst.setString(2, uname1);
pst.setString(3, uname2);
pst.setString(4, email);
pst.setString(5, party);

pst.executeUpdate();




%>
<script type="text/javascript">
            alert('<%="Your Data succesfully updated..."%>');
            </script>
<center><a href="candidateList.jsp"><button><font color="blue"><=Back </font></button><br></a></center>
</body>
</html>