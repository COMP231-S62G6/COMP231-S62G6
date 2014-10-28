
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateexclient extends HttpServlet
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
 
  try
  {
	  HttpSession ses=req.getSession(true); 
	   String cid=req.getParameter("cid");
	  
	  String cid2=req.getParameter("cid2");
   String cadd=req.getParameter("cadd");
   String city=req.getParameter("city");
   String state=req.getParameter("state");
      String nation=req.getParameter("nation");
String nofb=req.getParameter("nofb");
      String ctype=req.getParameter("ctype");

   String cph=req.getParameter("cph");
   String ext=req.getParameter("ext");
   String cdesc=req.getParameter("cdesc");
   String contper=req.getParameter("contper");
   
   String wwwt=req.getParameter("wwwt");
   String pass=req.getParameter("pass");
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
         rs=stmt.executeQuery("SELECT * FROM CLIENT WHERE CLIENTID='"+cid+"'");

 
	   if(rs.next())
	  {// updations
	
	   System.out.println("before update command");
		  stmt.executeUpdate("UPDATE CLIENT SET CLIENTID='"+cid+"',CLNAME='"+cid2+"',ADDRESS='"+cadd+"',CITY='"+city+"',STATE='"+state+"',NATION='"+nation+"',NOOFBRANCH='"+nofb+"',CLTYPE='"+ctype+"',CONTPHNO='"+cph+"',EXT='"+ext+"',COMDESC='"+cdesc+"',CTPERSON='"+contper+"',WEBSITE='"+wwwt+"',PASS='"+pass+"' WHERE CLIENTID='"+cid+"'");
		  
	    res.sendRedirect("./sucessclientdetails.htm");
	  }
	  else
	  {
		   res.sendRedirect("./notsucessclientdetails.htm");
	  }
		

	   
   
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

 	
   







