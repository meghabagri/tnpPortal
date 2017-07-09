<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
HttpSession s=request.getSession();
String enrollnum = s.getAttribute("eno").toString();
Connection connection = null;
try {
com.exp.StudentDao dao=new com.exp.StudentDao();
connection=dao.getConnection();
} catch (Exception e) {
e.printStackTrace();
}

Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{

statement=connection.createStatement();
String sql ="select * from student where Enrollment_Number="+enrollnum;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<!--<html>
<form method="post" action="UpdateData.jsp">
<table>
<tr><td>EN:</td><td><input type="text" value="<%=resultSet.getLong("Enrollment_Number") %>" name="enrollnum"></td></tr>
<tr><td>First Name:</td><td><input type="text" value="<%=resultSet.getString("First_Name") %>" name="fname"></td></tr>
<tr><td>Last Name:</td><td><input type="text" value="<%=resultSet.getString("Last_Name") %>" name="lname"></td></tr>
<tr><td></td><td><input type="button" value="Update"></td></tr>
</table>
</form>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                @import url(https://fonts.googleapis.com/css?family=Roboto:300);

                .panels div {
                    display: none;
                    height:100%;
                }

                
                body {
                    background-color: "red";
                    margin: 0;
                    padding: 0 2em;
                }

                a {
                    color: #0cc39f;
                }

                h2,
                h4 {
                    margin-top: 0;
                }

                .form {
                    background: white;
                    box-shadow: 0 5px 10px rgba(0, 0, 0, .4);
                    margin: 4em;
                    height:100%;
                    padding: 2.8125em;
                    margin: 0 0 6.25em;
                    box-shadow: 0 0 1.25em 0 #888888, 0 0.3125em 0.3125em 0 #888888;
                }

                .panels div {
                    border-top: solid 1px #c0c0c0;
                    margin: 1em 0 0;
                    padding: 1em 0 0;
                    height:100%;
                }

                input {
                    display: block;
                    font-family: "Roboto", sans-serif;
                    width: 100%;
                    background-color: #E5E5E5;
                    border: 0;
                    margin: 0 0 0.9375em;
                    padding: 0.9375em;
                }

                button {
                    background-color:green;
                    border: 0;
                    color:red;
                    cursor: pointer;
                    font-weight: 700;
                    margin: 1em 0 0 80em;
                    padding: 0.9375em;
                }

                button:hover {
                    opacity: 0.8;
                }

                .page {
                    width: 50%;
                    margin: auto;
                    height:auto;
                }

                h1{
                    letter-spacing: 0.0625em;
                    color: black;
                    text-shadow: 0.125em 0.125em 0.125em;
                    text-align: center;
                }

                .form1 {
                    position: relative;
                    background: blue;
                    width: 80%;
                    height: auto;
                    padding: 2.8125em;
                    margin: 0 auto 6.25em;
                    box-shadow: 0 0 1.25em 0 #888888, 0 0.3125em 0.3125em 0 #888888;
                }

                .form1 input[type=text],select {
                    font-family: "Roboto", sans-serif;
                    width: 100%;
                    background-color: #E5E5E5;
                    border: 0;
                    margin: 0 0 0.9375em;
                    padding: 0.9375em;
                }

                .form1_item{
                    float:left;
                    width:100%;

                }

                .form1_col1{
                    float:left;
                    width:46%;
                    margin-right:5%;
                    clear:both;
                }
                
                .form1_col2{
                    float:left;
                    width:48%;
                    margin:0;	
                }

                .divfirst{
                    padding: 2.8125em;
                    margin: 0 auto 6.25em;
                }

                body {
                    background:#ffffff;
                    font-family: "Roboto", sans-serif;    
                }

        </style>


    </head>
    <body>
       
        <h1>Update Information</h1>
            <div class="panels">
                <!--div data-panel="one"-->
                    <h4><center>Personal Information</center></h4>
                    <form action="UpdateData.jsp" method="post">
                        <span class="form1_item">
                            <input type="text" value="<%=resultSet.getLong("Enrollment_Number") %>" name="enrollnum" />
                        </span>
                        <span class="form1_item form1_col1">
                            <input type="text" value="<%=resultSet.getString("First_Name") %>" name="fname"/>
                        </span>
                        <span class="form1_item form1_col2">
                            <input type="text" value="<%=resultSet.getString("Last_Name") %>" name="lname"/>
                        </span>
                        <span class="form1_item form1_col1">
                            <input type="text" value="<%=resultSet.getString("DOB") %>" name="dob"/>
                        </span>
                        <span class="form1_item form1_col2">
                            <input type="text" value="<%=resultSet.getString("Category") %>" name="category"/>
                        </span>
                        <span class="form1_item">
                            <input type="text" value="<%=resultSet.getLong("Aadhar_Number") %>" name="aadharnum" />
                        </span>
                        <span class="form1_item">
                            <input type="text" value="<%=resultSet.getString("Permanent_Address") %>" name="permaddr" />
                        </span>
                        <span class="form1_item">
                            <input type="text" value="<%=resultSet.getString("Temp_Address") %>" name="tempaddr" />
                        </span>
                        <span class="form1_item form1_col1">
                            <input type="text" minlength="10" maxlength="10" value="<%=resultSet.getString("Contact_Number") %>"  name="contact" pattern="[789][0-9]{9}" title="Enter valid contact number" required/>
                        </span>
                        <span class="form1_item form1_col2">
                            <input type="text"  minlength="10" maxlength="10" value="<%=resultSet.getString("Alt_Contact_Number") %>"  name="altcontact" pattern="[789][0-9]{9}" title="Enter valid contact number" />
                        </span>
                        <span class="form1_item form1_col1">
                            <input type="text" value="<%=resultSet.getString("EmailID") %>"  name="email" />
                        </span>
                        <span class="form1_item form1_col2">
                            <input type="text" value="<%=resultSet.getString("Alt_Email_ID") %>"  name="altemail" />
                            
                        </span>
                             
                </div>

                <div  data-panel="two">
                    <h4>Parent Contact Details</h4>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Father_Name") %>"  name="fathname"/>
                    </span>
                    <span class="form1_item form1_col1">
                        <input type="text" value="<%=resultSet.getString("Father_Occupation") %>"  name="fathoccptn"/>
                    </span>
                    <span class="form1_item form1_col2">
                        <input type="text" value="<%=resultSet.getString("Father_Contact_Number") %>" name="fathcntct"/>
                    </span>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Father_Office_Address") %>" name="fathoffaddr"/>
                    </span>

                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Mother_Name") %>" name="mothname"/>
                    </span>
                    <span class="form1_item form1_col1">
                        <input type="text" value="<%=resultSet.getString("Mother_Occupation") %>" name="mothoccptn"/>
                    </span>
                    <span class="form1_item form1_col2">
                        <input type="text" value="<%=resultSet.getString("Mother_Contact_Number") %>" name="mothcntct"/>
                    </span>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Mother_Office_Address") %>" name="mothoffaddr"/>
                    </span>
                </div>

                <div data-panel="three">
                    <h4>Class X</h4>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Class_X_Board") %>" name="xboard"/>
                    </span>
                    <span class="form1_item form1_col1">
                        <input type="text" value="<%=resultSet.getString("Class_X_Percentage") %>" name="xpercentage"/>
                    </span>
                    <span class="form1_item form1_col2">
                        <input type="text" value="<%=resultSet.getString("Class_X_Passing_Year") %>" name="xpassyr"/>
                    </span>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Class_X_School") %>" name="xschlname"/>
                    </span>

                    <h4>Class XII/Diploma</h4>
                    <span class="form1_item form1_col1">
                        <input type="text" value="<%=resultSet.getString("Class_XII_or_Diploma") %>" name="xiidiploma">
                    </span>
                    <span class="form1_item form1_col2">
                        <input type="text" value="<%=resultSet.getString("Class_XII_Board") %>" name="xiiboard"/>
                    </span>
                    <span class="form1_item form1_col1">
                        <input type="text" value="<%=resultSet.getString("Class_XII_or_Diploma_Percentage")%>" name="xiipercentage"/>
                    </span>
                    <span class="form1_item form1_col2">
                        <input type="text" value="<%=resultSet.getString("Class_XII_or_Diploma_Passing_Year") %>" name="xiipassyr"/>
                    </span>
                    <span class="form1_item">
                        <input type="text" value="<%=resultSet.getString("Class_XII_School") %>" name="xiischlname"/>
                    </span>
                   <input type="submit" value="Update">
                </div>
            </div>
        </div>
        </form>  
            </html>
<%
        }
        //con.close();
    } 
    catch (Exception e) {
        e.printStackTrace();
    }
%>

