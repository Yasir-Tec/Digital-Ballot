<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	Part file=request.getPart("img");
	
	InputStream inp=null;
	
	if(inp!=null)
	{
		long filesize=file.getSize();
		String filecontent=file.getContentType();
		inp=file.getInputStream();
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		System.out.println("Connected..!!! welcome page");
		PreparedStatement prst=con.prepareStatement("insert into emp2 values(?)");
		//FileInputStream fin=new FileInputStream("C:/Users/Admin/Pictures/yasir.png");  
		prst.setBlob(1, inp,inp.available());
		
		int returcode=prst.executeUpdate();
		if(returcode==0)
		{
			System.out.println("inserted");
		}
		else
		{
			System.out.println("failed");
		}
	}


%>

</body>
</html>