
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newuserqul extends HttpServlet
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

String pun=req.getParameter("pun");
   String gun=req.getParameter("gun");
   String gper=req.getParameter("gper");
      String pgper=req.getParameter("pgper");
   

   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
   if(hqul.equals("PG"))
	  {
   PreparedStatement ps=con.prepareStatement("INSERT INTO EDUCATION VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("after html form reading values");
	ps.setString(1,hqul);
    ps.setString(2,pg);
    ps.setString(3,pun);
    ps.setString(4,pgper);
    ps.setString(5,grad);
	ps.setString(6,gun);
    ps.setString(7,gper);
    ps.setString(8,inter);
	 ps.setString(9,interctno);
    ps.setString(10,ssc);
	ps.setString(11,sscctno);
    ps.setString(12,other1);
    ps.setString(13,othercert);
    ps.setString(14,uid);
	int i=ps.executeUpdate();
	if(i==1)
	{
	res.sendRedirect("./sucesseducationaldetails1.jsp");
	}
	  }
	  else
	  {
	PreparedStatement ps=con.prepareStatement("INSERT INTO EDUCATION VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("after html form reading values");
	ps.setString(1,hqul);
    ps.setString(2,"Nill");
    ps.setString(3,pun);
    ps.setString(4,"Nill");
    ps.setString(5,grad);
	ps.setString(6,gun);
    ps.setString(7,gper);
    ps.setString(8,inter);
	 ps.setString(9,interctno);
    ps.setString(10,ssc);
	ps.setString(11,sscctno);
    ps.setString(12,other1);
    ps.setString(13,othercert);
    ps.setString(14,uid);
	int i=ps.executeUpdate();
	if(i==1)
	{
	res.sendRedirect("./sucesseducationaldetails1.jsp");
	}
	  }
  }
  catch(Exception e)
  {
   e.printStackTrace();
  }
 
  out.close();
 }
}

 	
   







