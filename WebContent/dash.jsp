<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%  HttpSession s=request.getSession(false);  
    String eno=(String)s.getAttribute("eno"); 
/*    if(eno==null){
    	out.print("<script>");
    	out.print("please login first.");
    	out.print("</script>");
    	response.sendRedirect("index.jsp");
    }*/
    %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>IGDTUW</title>
    <link href="index.css" rel="stylesheet">
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <style type="text/css">
  <%@include file="css/bootstrap.min.css" %>
  <%@include file="css/index.css" %>
  <%@include file="css/bootstrap.css" %>
       .navbar-default{ background-color: white; border-width: 0px;}
      .navbar-inverse{ border-width: 0px;height: 53px;}
      li{padding-left: 80px; font-size:18px;}
      .login{ margin-left: 30px;  width:40%; margin-top:50px; background-color: #F5F5F5; padding: 30px; border-radius: 30px;}
    </style>
  </head>

  <body>
    <div class="container">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a href="#" class="navbar-left"><img src="logo.jpg" class="img-responsive" alt="logo" width="120"></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav" style="margin-left:150px;">
		          <center><h3>Indira Gandhi Delhi Technical University for Women</h3>
              <h4>(Established by Govt. of Delhi vide Act 9 of 2012) <br>(Formerly Indira Gandhi Institute of Technology)
              </h4></center>	
            </ul>
            
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
          </div> <!-- /container -->
<nav class="navbar navbar-inverse" >
  <div class="container-fluid">    
    <ul class="nav navbar-nav navbar">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">MailBox</a></li>
      <li><a href="UpdateProfileStudent.jsp">Update Profile</a></li>
      <li><a href="personalInfo.jsp">Personal Information</a></li>
      <li><a href="#">Placement Policy</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
</body>
</html>