
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class updateuserproj extends HttpServlet
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
   String uid=req.getParameter("uid");
   String projtit=req.getParameter("projtit");
   String teamsize=req.getParameter("teamsize");
   String projenv=req.getParameter("projenv");
   String projdesc=req.getParameter("projdesc");
   String projroll=req.getParameter("projroll");
   String usedsill=req.getParameter("usedsill");
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
      	   
   rs=stmt.executeQuery("SELECT * FROM PROJECTS WHERE USERID='"+uid+"'");
   System.out.println("after select query in modi PROJECTS details");
   System.out.println("this is session id"+uid);
   System.out.println(" this is reuest from html"+uid);
   if(rs.next())
   {// updations
	   System.out.println(uid);
	   System.out.println("before update command");
	   stmt.executeUpdate("UPDATE PROJECTS SET PROJTITLE='"+projtit+"',PROJDESC='"+projdesc+"',USEDSKILLS='"+usedsill+"',TEAMSIZE='"+teamsize+"',ENVRN='"+projenv+"',ROLLS='"+projroll+"' where USERID='"+uid+"'");
		  
	    res.sendRedirect("./updateexuserproject.jsp");
	  }
	  else
	  {
		   res.sendRedirect("./notupdateexuserproject.jsp");
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

 	
   







