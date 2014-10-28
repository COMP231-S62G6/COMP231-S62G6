
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateusereduudet extends HttpServlet
{
 PrintWriter out;
 Connection con;
 Statement stmt;
 ResultSet rs;

 public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
  res.setContentType("text/html");
  out=res.getWriter();
HttpSession ses=req.getSession(true); 
  try
  {
	
	  String hqul=req.getParameter("hqul");
   String pg=req.getParameter("pg");
   String grad=req.getParameter("grad");
   String inter=req.getParameter("inter");
      String ssc=req.getParameter("ssc");
String interctno=req.getParameter("interctno");
      String sscctno=req.getParameter("sscctno");

   String other1=req.getParameter("other1");
   String othercert=req.getParameter("othercert");
   String uid=req.getParameter("uid");
 ses.putValue("uid1",uid);

String pun=req.getParameter("pun");
   String gun=req.getParameter("gun");
   String gper=req.getParameter("gper");
      String pgper=req.getParameter("pgper");
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
        rs=stmt.executeQuery("SELECT * FROM EDUCATION WHERE USERID='"+uid+"'");
	   System.out.println("after select query in modieducation details");
System.out.println("this is session id"+uid);
System.out.println(" this is reuest from html"+uid);
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
		  stmt.executeUpdate("UPDATE EDUCATION SET QUL='"+hqul+"',POSTG='"+pg+"',PUN='"+pun+"',PPER='"+pgper+"',GRADU='"+grad+"',GUN='"+gun+"',GPER='"+gper+"',INTER='"+inter+"',INTERCERTNO='"+interctno+"',SSC='"+ssc+"',SSCCERTNO='"+sscctno+"',OTHERQUL='"+other1+"',OTHERCERT='"+othercert+"' WHERE USERID='"+uid+"'"); 
		  
	    res.sendRedirect("./updateexuseredudet.jsp");
	  }
	  else
	  {
		   res.sendRedirect("./notupdateexuseredudet.jsp");
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

 	
   







