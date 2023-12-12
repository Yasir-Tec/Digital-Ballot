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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CandidateRegister</title>
</head>
<body>

<table class="container">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate register</title>
</head>
<body>
<form action="votingpage.jsp" method="post">
<%
int srNo=Integer.parseInt(request.getParameter("id"));
//String sname=request.getParameter("name");
String fname=(String)request.getParameter("fname");
String lname=(String)request.getParameter("lname");
session.setAttribute("name", fname);//////////////////////////////passing parameter to voting.jsp page and then insert.jsp page

String cnparty=request.getParameter("party");

String canpwd=request.getParameter("canpwd");
String cnmail=request.getParameter("email");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
System.out.println("Connected..!!! candidate registeration page");
Statement stss=c.createStatement();

int a=0;
stss.executeUpdate("insert into candidate values('"+srNo+"','"+fname+"','"+lname+"','"+cnmail+"','"+cnparty+"','"+a+"','"+canpwd+"')");
System.out.println("candidate added");
%>
<h1></span> <span class="yellow"> Candidate Registered</span></h1><%
}catch(Exception e)
{
	
}



%>
<tr><td><a href="finish.jsp"><b> <i><font color="#F08080">Home</form><br></td></tr>

<tr><td><a href="canreg.html"> <b> <i><font color="#F08080">Back</form><br></td></tr>
 
 </form>
</body>
</html>