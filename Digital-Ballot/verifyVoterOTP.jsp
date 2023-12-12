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
String newotp=request.getParameter("otp");
String oldotp=(String)session.getAttribute("os");
System.out.println(newotp);
System.out.println(oldotp);

if(oldotp.equals(newotp))
{
	%>
		<script type="text/javascript">
            alert('<%="You are able to voting!!!"%>');
        </script>
        <h1></span> <span class="yellow">Registered</span></h1><br><br>
        <tr><td><a href="reg.html"><b> <i><font color="#F08080"> BACK</form><br></td></tr>
<tr><td><a href="image1.html"><b> <i><font color="#F08080">HOME PAGE</form><br></td></tr>
        
	<%
}
else
{
	%>
		<script type="text/javascript">
            alert('<%="sry ....Your entered otp is not valid ...Please try once again!!!"%>');
        </script>
              <h1></span> <span class="yellow">TRY AGAIN</span></h1><br><br>
        <tr><td><a href="reg.html"><b> <i><font color="#F08080"> BACK</form><br></td></tr>
        <%
}



%>
</body>
</html>