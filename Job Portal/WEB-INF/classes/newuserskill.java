
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newuserskill extends HttpServlet
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
	int totexp=Integer.parseInt(req.getParameter("totexp"));
	String skill1=req.getParameter("skill1");
	String skill2=req.getParameter("skill2");
	String skill3=req.getParameter("skill3");
     String skill4=req.getParameter("skill4");
	String skill5=req.getParameter("skill5");
     String skill6=req.getParameter("skill6");
	 String othskill=req.getParameter("othskill");
	String descskill=req.getParameter("descskill");
   
   HttpSession se=req.getSession();
   se.setAttribute("total",req.getParameter("totexp"));

Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
	if(totexp==0)
	  {
   PreparedStatement ps=con.prepareStatement("INSERT INTO SKILLS VALUES(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,uid);
	ps.setString(2,skill1);
	ps.setString(3,skill2);
	ps.setString(4,skill3);
	ps.setString(5,skill4);
	ps.setString(6,skill5);
	ps.setString(7,skill6);
	ps.setString(8,othskill);
    ps.setString(9,descskill);
    ps.setInt(10,totexp);

	int i=ps.executeUpdate();
	if(i==1)res.sendRedirect("./neweresume.jsp");
	  }
	  else
	  {
		  PreparedStatement ps=con.prepareStatement("INSERT INTO SKILLS VALUES(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,uid);
	ps.setString(2,skill1);
	ps.setString(3,skill2);
	ps.setString(4,skill3);
	ps.setString(5,skill4);
	ps.setString(6,skill5);
	ps.setString(7,skill6);
	ps.setString(8,othskill);
    ps.setString(9,descskill);
    ps.setInt(10,totexp);

	int i=ps.executeUpdate();
	if(i==1)res.sendRedirect("./sucesseskills1.jsp");
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

 	
   







