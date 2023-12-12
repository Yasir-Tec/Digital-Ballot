<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload="" >
<form action="verifyVoterOTP.jsp" method="post">
  <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Enter OTP for registering your details</h2>

  <form class="login-container">
    <p><input type="text" name="otp" placeholder="OTP"  required  pattern="[0-9]{4}" title="contains only four digit otp numbers"></p>
	
    <p><input type="submit" value="Verify"></p>
        <p><a href="reg.html"><b><i><font color="#F08080"><=Back</font></i></b></a></p>
  </form>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript">
	window.history.forward();
	function noBack() {window.history.forward()}
	</script>
  

</body>

</html>
