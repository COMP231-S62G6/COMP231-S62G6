
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newclientreg extends HttpServlet
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
	  String cid=req.getParameter("cid");
	  ses.putValue("cid1",cid);
   String cname=req.getParameter("cname");
   String cadd=req.getParameter("cadd");
   String ccity=req.getParameter("ccity");
      String cstate=req.getParameter("cstate");

   String cnation=req.getParameter("cnation");
   String cnb=req.getParameter("cnb");
   String ctype=req.getParameter("ctype");
//***************************************
String ctphno=req.getParameter("ctphno");
   String ext=req.getParameter("ext");
   String cdesc=req.getParameter("cdesc");
   String ctper=req.getParameter("ctper");
      String www1=req.getParameter("www1");

   String pass=req.getParameter("pass");
   ses.putValue("pass1",pass);
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
   PreparedStatement ps=con.prepareStatement("INSERT INTO CLIENT VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

   System.out.println("after insert into client details ");
   ps.setString(1,cid);
   ps.setString(2,cname);
   ps.setString(3,cadd);
   ps.setString(4,ccity);
   ps.setString(5,cstate);
   ps.setString(6,cnation);
   ps.setString(7,cnb);
   ps.setString(8,ctype);
   ps.setString(9,ctphno);
   ps.setString(10,ext);
   ps.setString(11,cdesc);
   ps.setString(12,ctper);
   ps.setString(13,www1);
   ps.setString(14,pass);
   int i=ps.executeUpdate();

   PreparedStatement ps1=con.prepareStatement("insert into consultant values(?,?)");
   ps1.setString(1,cid);
   ps1.setString(2,pass);
   int j=ps1.executeUpdate();

   if(i==1&&j==1)
	  {
	   res.sendRedirect("./sucessnewclient.jsp");
	  }
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