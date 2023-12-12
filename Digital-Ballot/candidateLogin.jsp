<%@page import="java.sql.DriverManager"%>
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
 <!--  <title><Table> Responsive</title> -->
<title>CandidateLoginPage</title>  
  
  
      <link rel="stylesheet" href="css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



</head>
<body>
<!-- <form action="welcome.html" method="post"> -->
<table class="container">
<%
Connection con;
//PreparedStatement pst;
ResultSet rs;
Statement st;

				PrintWriter oout=response.getWriter();
				String userid=request.getParameter("candidateUsrName");
				String userpwd=request.getParameter("candidatePwd");
				System.out.println(userid+" "+userpwd);
			//	session2=request.getSession();
				//session2.setAttribute("uu", uname);
			//	oout.println("*********Session Created ..."+session2.getAttribute("uu"));
			Class.forName("oracle.jdbc.driver.OracleDriver");
 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
 st=con.createStatement();
 rs=st.executeQuery("select * from candidate where srno='"+userid+"'");
//PreparedStatement pr=con.prepareStatement("select * from user1 where userid="+userid+"");
//ResultSet rs=st.executeQuery("select * from user1"+userid+"");
if(rs.next())
{
	if(rs.getString(7).equals(userpwd))
	{
		%>
		 <h1><span class="yellow">WELCOME ...</span></h1>
			<meta charset="UTF-8">
		  <title><Table> Responsive</title>
			<link rel="stylesheet" href="css/style.css">
		<table class="container">
			<thead>
				<tr>					
					<th><h1> YOUR NAME </h1></th>
					<th><h1>YOUR PARTY</h1></th>
					<th><h1> YOUR VOTE</h1></th>
				</tr>
			</thead><% 
		  
		 session.setAttribute("userid", userid);
		 out.println(" matched");
		 String name=rs.getString(2);
		 String party=rs.getString(3);
		 int votes=rs.getInt(6); %>
		 <tr>   
<td><%=name %></td>
<td> <%=party%></td>
<td> <%=votes%></td>
 </tr>
 
</table>

<!-- <tr>
<center><input type="submit" value="submit" Name="vote"></center>	
</tr> -->
 	 
		 
<%
	}
	else
	{ %>
		<h1><span class="yellow">WRONG PASSWORD</span></h1><br><center>
	<%	out.println("SRY YOUR ENTERED PASSWORD IS NOT CORRECT PLEASE TRY AGAIL");
	
		
	}%></center>
	<tr><td><a href="candidateLogin.html"><font color="blue">LOGIN AGAIN</form><br></td></tr>

<tr><td><a href="image1.html"><font color="blue"> HOME</form><br></td></tr>
<% }%>

</form>
</body>
</html>