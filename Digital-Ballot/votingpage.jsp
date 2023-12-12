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
  <title><Table> Responsive</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

   	<script type="text/javascript">
	window.history.forward();
	function noBack() {window.history.forward()}
	</script>

    <h1></span> <span class="yellow">Candidate</pan></h1>


<table class="container">
	<thead>
		<tr>
			<th><h1>Sr.No</h1></th>
			<th><h1>NAME OF CANDIDATE</h1></th>
			<th><h1>PARTY</h1></th>
			<th><h1>VOTE</h1></th>
		</tr>
	</thead>
	   
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload="" >
<form action="voteCount.jsp" method="post">


                
    <%!int no,newno;
    String kname,myparty;
    %>
    <%!String newname,newCanName; %>
    <%
    try{
    	
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	System.out.println("Connected..!!! welcome page");
	Statement sts=co.createStatement();
	ResultSet rss=sts.executeQuery("select * from candidate"); 
	
	//String newname=(String)request.getAttribute("name");
	//String yasir=request.getParameter("name");
	
	
	//out.println(yasir);
	while(rss.next()){
	
	%>
<% no=rss.getInt(1);

 kname=(String)rss.getString(2);
	
 myparty=rss.getString(3);
%>


      <tr>   
         <td><%=no %></td>
       <td> <%=kname%></td>
         <td> <%=myparty%></td>
         
    
   		<td><input type="radio" name="party" value="<%=myparty%>"><br></td>
 
	    
  </tr>
    
    
 <%


	
	
	}





	
	/*rss.close();
	sts.close();
	co.close();*/
    }
    catch(Exception e){
    }
    
    
	%></table>

	
	<tr>
    <td><center><input type="submit" value="submit" Name="vote"></center><td>	
	</tr>


</form>
</body>
</html>