
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newuserproj extends HttpServlet
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
       PreparedStatement ps=con.prepareStatement("INSERT INTO PROJECTS VALUES(?,?,?,?,?,?,?)");

	System.out.println("after inserting into the database");
ps.setString(1,uid);
ps.setString(2,projtit);
ps.setString(3,projdesc);
ps.setString(4,usedsill);
ps.setString(5,teamsize);
ps.setString(6,projenv);
ps.setString(7,projroll);

     
   System.out.println(uid);
    int i=ps.executeUpdate();

	
    res.sendRedirect("./sucessproj.jsp");
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

 	
   







