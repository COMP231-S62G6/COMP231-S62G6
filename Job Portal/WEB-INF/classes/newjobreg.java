
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newjobreg extends HttpServlet
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
	  String jobtit=req.getParameter("jobtit");
	   String jobcode=req.getParameter("jobcode");
   String skill=req.getParameter("skill1").trim()+","+req.getParameter("skill2").trim()+","+
      req.getParameter("skill3").trim()+","+req.getParameter("skill4").trim()+
   ","+req.getParameter("skill5").trim()+","+req.getParameter("skill6").trim();
 
//***************************************
String exp=req.getParameter("exp");
   String odate=req.getParameter("odate");
   String closdate=req.getParameter("closdate");
   String cid=req.getParameter("cid");

	
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
/*       PreparedStatement ps=con.prepareStatement("INSERT INTO joborder VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");*/
PreparedStatement ps=con.prepareStatement("INSERT INTO jobs VALUES(?,?,?,?,?,?,?)");


	System.out.println("after html form reading values");
	ps.setString(1,jobtit);
    ps.setString(2,jobcode);
    ps.setString(3,skill);
    /*ps.setString(4,skill2);
    ps.setString(5,skill3);
	ps.setString(6,skill4);
    ps.setString(7,skill5);
    ps.setString(8,skill6);*/
	ps.setString(4,exp);
  	ps.setString(5,odate);
    ps.setString(6,closdate);
    ps.setString(7,cid);
       
    int i=ps.executeUpdate();
System.out.println("after inserting into the table");
	
    res.sendRedirect("./sucessnewjobdet.htm");
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

 	
   







