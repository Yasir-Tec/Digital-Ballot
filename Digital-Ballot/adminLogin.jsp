<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<title>Insert title here</title>
</head>
<body>

<table class="container">

<% 
Connection con;
//PreparedStatement pst;
ResultSet rs;
Statement st;

				PrintWriter oout=response.getWriter();
				String uname=request.getParameter("adminUsrName");
			//	session2=request.getSession();
				//session2.setAttribute("uu", uname);
			//	oout.println("*********Session Created ..."+session2.getAttribute("uu"));
				String psw=request.getParameter("adminPwd");
				
				if(uname.equals("admin")&&psw.equals("admin"))
				{
					
	%>					<h1></span> <span class="yellow">Welcome admin</pan></h1>
					
				<tr> <td><a href="reg.html"><b><i><font color="#F08080"> Voter Registeration</font></i></b></form><br></td></tr>
				<tr>	<td><a href="canreg.html"><b><i><font color="#F08080"> Candidate Registeration</font></i></b></form><br></td></tr>
					<tr><td><a href="voterList.jsp"><b><i><font color="#F08080"> Registered Voter List</font></i></b></form><br></td></tr>
					<tr><td><a href="candidateList.jsp"><b><i><font color="#F08080">Registered Candidate List</font></i></b></form><br></td></tr>
					<tr><td><a href="display.jsp"><b><i><font color="#F08080"> Result</font></i></b></form><br></td></tr>
					
				<%	
					
 				}
				else
				{%><h1></span> <span class="yellow">Try Again</pan></h1>
					<center>Invalid Usename or Password</center><br><br>
				
					<center> <form Action=image1.html Method=post><Button>GO Back</Button>				<% 
				}

%>
<a href="image1.html"><b><i><font color="#F08080"><=Back </font></i></b> </a>
</body>
</html>