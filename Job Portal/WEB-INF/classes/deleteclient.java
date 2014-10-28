
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class deleteclient extends HttpServlet
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
	  
	  
  Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

   Statement stmt=con.createStatement();
         rs=stmt.executeQuery("SELECT * FROM CLIENT WHERE CLIENTID='"+cid+"'");

 
	   if(rs.next())
	  {// updations
	
	   System.out.println("before update command");
		  stmt.executeUpdate("DELETE FROM CLIENT WHERE CLIENTID='"+cid+"'");
		  
	    res.sendRedirect("./sucessclientdeleted.htm");
	  }
	  else
	  {
		   res.sendRedirect("./notsucessclientdeleted.htm");
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

 	
   







