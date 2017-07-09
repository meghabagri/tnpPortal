
<%@page import="com.exp.StudentDao"%>
<%@page import="java.text.SimpleDateFormat, java.util.Date"%>
<%@page import="java.sql.*,java.util.*"%>
<%
//int enrollnum=Integer.parseInt(request.getParameter("enrollnum"));
int enrollnum = 7;
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
/*String date1 = request.getParameter("dob");
Date utilDate = new SimpleDateFormat("dd/MM/yyyy").parse(date1);
java.sql.Date dob = new java.sql.Date(utilDate.getTime()); 
//Date dob=new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dob"));
//String date1=request.getParameter("dob");

String category=request.getParameter("category");
int an=Integer.parseInt(request.getParameter("aadharnum"));
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
int xpercentage=Integer.parseInt(request.getParameter("xpercentage"));
int xpassyr=Integer.parseInt(request.getParameter("xpassyr"));
String xschlname =request.getParameter("xschlname");

String xiiboard = request.getParameter("xiiboard");
String xiiboarddiploma = request.getParameter("xiiboard/diploma");
int xiipercentage = Integer.parseInt(request.getParameter("xiipercentage"));
int xiipassyr = Integer.parseInt(request.getParameter("xiipassyr"));
String xiischlname = request.getParameter("xiischlname");
*/


        try{
         	com.exp.StudentDao dao=new com.exp.StudentDao();
         	Connection con=dao.getConnection();
        	String sql="Update student set First_Name=?,Last_Name=? where Enrollment_Number="+enrollnum;
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,fname);
            ps.setString(2,lname);
            //ps.setString(3, last_name);
            //ps.setString(4, city_name);
            //ps.setString(5, email);
            int i = ps.executeUpdate();
           System.out.println("Data is successfully updated!");
           RequestDispatcher rd=request.getRequestDispatcher("dash.jsp");
           rd.forward(request, response);
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>

