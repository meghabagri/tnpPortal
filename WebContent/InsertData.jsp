
<%@page import="java.text.SimpleDateFormat, java.util.Date"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="com.exp.StudentDao" %>
<%
String enrollnum=request.getParameter("enrollnum");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String dob = request.getParameter("dob");

//Date dob=new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dob"));
//String date1=request.getParameter("dob");

String category=request.getParameter("category");
String an=request.getParameter("aadharnum");
String t=request.getParameter("tempaddr");
String permaddr=request.getParameter("permaddr");

Long contact=Long.parseLong(request.getParameter("contact")); 
 Long altcontact=Long.parseLong(request.getParameter("altcontact"));
String email=request.getParameter("email");
String altemail=request.getParameter("altemail");

String father_name=request.getParameter("fathname");
String father_occ=request.getParameter("fathoccptn");
Long fathcntct =Long.parseLong(request.getParameter("fathcntct"));
String fathoffaddr=request.getParameter("fathoffaddr");
String mothname=request.getParameter("mothname");
String mothoccptn=request.getParameter("mothoccptn");
Long mothcntct=Long.parseLong(request.getParameter("mothcntct"));
String mothoffaddr=request.getParameter("mothoffaddr");

String xboard=request.getParameter("xboard");
float xpercentage=Float.parseFloat(request.getParameter("xpercentage"));
int xpassyr=Integer.parseInt(request.getParameter("xpassyr"));
String xschlname =request.getParameter("xschlname");

String xiiboard = request.getParameter("xiiboard");
String xiiboarddiploma = request.getParameter("xiidiploma");
float xiipercentage = Float.parseFloat(request.getParameter("xiipercentage"));
int xiipassyr = Integer.parseInt(request.getParameter("xiipassyr"));
String xiischlname = request.getParameter("xiischlname");



        try{
        	StudentDao dao=new StudentDao();
        	Connection con=dao.getConnection();

        	Statement st=con.createStatement();
           //int i=st.executeUpdate("insert into studentmasterdatabase(Enrollment_Number, First_Name, Last_Name) values('"+enrollnum+"','"+fname+"','"+lname+"')");
  int i=st.executeUpdate("insert into student(Enrollment_Number, First_Name,Last_Name,DOB,Aadhar_Number	,Category,Temp_Address,Permanent_Address,Contact_Number,Alt_Contact_Number,EmailID,Alt_Email_ID,Father_Name,Father_Occupation,Father_Office_Address,Father_Contact_Number,Mother_Name,Mother_Occupation,Mother_Office_Address,Mother_Contact_Number,Class_X_Board,Class_X_School,Class_X_Percentage,Class_X_Passing_Year,Class_XII_or_Diploma,Class_XII_Board,Class_XII_School,Class_XII_or_Diploma_Percentage,Class_XII_or_Diploma_Passing_Year) values('"+enrollnum+"','"+fname+"','"+lname+"','"+dob+"','"+an+"','"+category+"','"+t+"','"+permaddr+"','"+contact+"','"+altcontact+"','"+email+"','"+altemail+"','"+father_name+"','"+father_occ+"','"+fathoffaddr+"','"+fathcntct+"','"+mothname+"','"+mothoccptn+"','"+mothoffaddr+"','"+mothcntct+"','"+xboard+"','"+xschlname+"','"+xpercentage+"','"+xpassyr+"','"+xiiboarddiploma+"','"+xiiboard+"','"+xiischlname+"','"+xiipercentage+"','"+xiipassyr+"')");
           
           System.out.println("Data is successfully inserted!");
           RequestDispatcher rd=request.getRequestDispatcher("dash.jsp");
           rd.forward(request,response);
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
