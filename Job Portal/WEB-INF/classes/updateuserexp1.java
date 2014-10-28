
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateuserexp1 extends HttpServlet
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
   String uid=req.getParameter("uid");
   ses.putValue("uid1",uid);
   String expfield=req.getParameter("expfield");
   String onsit=req.getParameter("onsit");
   String pfrom=req.getParameter("pfrom");
   String prsal=req.getParameter("prsal");
   String totexp=req.getParameter("totexp");
   String pwcomp=req.getParameter("pwcomp");
   String urle=req.getParameter("urle");
   String expsal=req.getParameter("expsal");
   String pto=req.getParameter("pto");   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
   rs=stmt.executeQuery("SELECT * FROM EXPERIENCE WHERE USERID='"+uid+"'");
   System.out.println("after select query in modiEXPERIENCE details");
   System.out.println("this is session id"+uid);
   System.out.println(" this is reuest from html"+uid);
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
		  stmt.executeUpdate("UPDATE EXPERIENCE SET EXPE='"+totexp+"',FIELD='"+expfield+"',PRESENTWORKING='"+pwcomp+"',OFFORONSITE='"+onsit+"',EXPFROM='"+pfrom+"',EXPTO='"+pto+"',PRESENTSAL='"+prsal+"',EXPTSAL='"+expsal+"',WWW='"+urle+"' where USERID='"+uid+"'");
		  
	    res.sendRedirect("./updateexuserexperience.jsp");
	  }
	  else
	  {
		   res.sendRedirect("./notupdateexuserexperience.jsp");
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

 	
   







