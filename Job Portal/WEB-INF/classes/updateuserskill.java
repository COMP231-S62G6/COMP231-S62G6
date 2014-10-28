
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateuserskill extends HttpServlet
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
	  String totexp=req.getParameter("totexp");
   String skill1=req.getParameter("skill1");
   String skill2=req.getParameter("skill2");
   String skill3=req.getParameter("skill3");
      String skill4=req.getParameter("skill4");
String skill5=req.getParameter("skill5");
      String skill6=req.getParameter("skill6");

   String othskill=req.getParameter("othskill");
   String descskill=req.getParameter("descskill");
   
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
      

 rs=stmt.executeQuery("SELECT * FROM SKILLS WHERE USERID='"+uid+"'");
	   System.out.println("after select query in modiSKILLS details");
System.out.println("this is session id"+uid);
System.out.println(" this is reuest from html"+uid);
	   if(rs.next())
	  {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
		  stmt.executeUpdate("UPDATE SKILLS SET SKILL1='"+skill1+"',SKILL2='"+skill2+"',SKILL3='"+skill3+"',SKILL4='"+skill4+"',SKILL5='"+skill5+"',SKILL6='"+skill6+"',OTHERS='"+othskill+"',DESCOFSKILLS='"+descskill+"',TOTEXP='"+totexp+"' WHERE USERID='"+uid+"'");
		  
	    res.sendRedirect("./updateexuserskills.jsp");
	  }
	  else
	  {
		   res.sendRedirect("./notupdateexuserskills.jsp");
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

 	
   







