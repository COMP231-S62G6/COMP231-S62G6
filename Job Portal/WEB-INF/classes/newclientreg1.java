
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newclientreg1 extends HttpServlet
{
 PrintWriter out;
 Connection con;
 Statement stmt;
 ResultSet rs;
 
 int agg;
 public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
  res.setContentType("text/html");
  out=res.getWriter();
 
 HttpSession ses=req.getSession(true);
  try
  {
	  String conid=req.getParameter("conid");
	
   String pass=req.getParameter("pass");
   String conname=req.getParameter("conname");
   String conper1=req.getParameter("conper1");
      String conper2=req.getParameter("conper2");

   String conper3=req.getParameter("conper3");
   String phno=req.getParameter("phno");
   String address=req.getParameter("address");
//***************************************
String desc=req.getParameter("desc");
   String city=req.getParameter("city");
   String state=req.getParameter("state");
   String nation=req.getParameter("nation");
      String field1=req.getParameter("field1");

   String field2=req.getParameter("field2");
   String field3=req.getParameter("field3");
  
String stad=req.getParameter("stad");


   Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
       PreparedStatement ps=con.prepareStatement("INSERT INTO CONSULTANT VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

	System.out.println("after html form reading values");
	ps.setString(1,conid);
    ps.setString(2,conname);
    ps.setString(3,conper1);
    ps.setString(4,conper2);
    ps.setString(5,conper3);
	
    ps.setString(6,phno);
    ps.setString(7,address);
    ps.setString(8,city);
	 ps.setString(9,state);
  
	ps.setString(10,nation);
    ps.setString(11,field1);
    ps.setString(12,field2);
    ps.setString(13,field3);
    ps.setString(14,stad);
	ps.setString(15,desc);
	ps.setString(16,pass);
   
    int i=ps.executeUpdate();
System.out.println("after inserting into the table");
	
    res.sendRedirect("./sucessnewclientdetails.htm");
	ps.close();
   
   stmt.close();
   con.close(); 
  }
  catch(Exception e)
  {
   e.printStackTrace();
  }
 
  out.close();
 }
}

 	
   







