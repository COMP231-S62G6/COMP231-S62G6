
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateuserpersonaldet extends HttpServlet
{
	// global declaration for connections
 PrintWriter out;
 Connection con;
 Statement stmt;
 ResultSet rs;
 
// this is servlet life cycle service method
 public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
  res.setContentType("text/html");
  out=res.getWriter();
 
 HttpSession ses=req.getSession(true);
  try
  {
	  // getting values from html form
	  String nid=req.getParameter("userid");
	  ses.putValue("nid1",nid);
  
   String fname=req.getParameter("fname");
   String mname=req.getParameter("mname");
      String lname=req.getParameter("lname");

   String gend=req.getParameter("gend");
   String pmadd=req.getParameter("pmadd");
   String psadd=req.getParameter("psadd");
//***************************************
String city=req.getParameter("city");
   String state=req.getParameter("state");
   String country=req.getParameter("country");
   String cphoff=req.getParameter("cphoff");
      String offex=req.getParameter("offex");

   String cphres=req.getParameter("cphres");
   String mph=req.getParameter("mph");
   String passno=req.getParameter("passno");
String cobj=req.getParameter("cobj");
String pin=req.getParameter("pin");
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
         rs=stmt.executeQuery("SELECT * FROM EMPREG WHERE USERID='"+nid+"'");
	   if(rs.next())
	  {// updations
		  stmt.executeUpdate("UPDATE EMPREG SET FNAME='"+fname+"',MNAME='"+mname+"',LNAME='"+lname+"',PRSTADD='"+psadd+"',PARTADD='"+pmadd+"',PIN='"+pin+"',CITY='"+city+"',STATE='"+state+"',COUNTRY='"+country+"',CTNTNOOFICE='"+cphoff+"',EXTNO='"+offex+"',CTNTNORESNO='"+cphres+"',PASSPORTNO='"+passno+"',CARRABJ='"+cobj+"',MOBILENO='"+mph+"',GENDER='"+gend+"' where USERID='"+nid+"'");
	   
 res.sendRedirect("./updateexuserpersonaldet.jsp");
	System.out.println("after modified personal details");
	  }
	  else
	  {
    res.sendRedirect("./notupdateexuserpersonaldet.jsp");
	  }

   
   stmt.close();
   con.close(); 
  }//try
  catch(Exception e)
  {
   e.printStackTrace();
  }
 
  out.close();
 }//service()
}//class

 	
   







