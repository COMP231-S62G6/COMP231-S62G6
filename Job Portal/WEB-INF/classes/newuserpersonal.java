
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import java.sql.*;
public class newuserpersonal extends HttpServlet
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
	  String nid=req.getParameter("userid");
	  ses.setAttribute("uid1",nid);
   String pass=req.getParameter("pass");
   String fname=req.getParameter("fname");
   String mname=req.getParameter("mname");
      String lname=req.getParameter("lname");

   String gend=req.getParameter("gend");
   String pmadd=req.getParameter("pmadd");
   String psadd=req.getParameter("psadd");
//***************************************
String city=req.getParameter("city");
   String state=req.getParameter("state");
   String country=req.getParameter("country");
   String cphoff=req.getParameter("cphoff");
      String offex=req.getParameter("offex");

   String cphres=req.getParameter("cphres");
   String mph=req.getParameter("mph");
   String passno=req.getParameter("passno");
	String cobj=req.getParameter("cobj");
	String pin=req.getParameter("pin");
   
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
   ResultSet rs=stmt.executeQuery("select * from empreg where userid='"+nid+"'");
   if(rs.next())
	{
		out.println("<body color=#9999CC><center><br><br>Your UserId is existing .so Please try again");
		out.println("<br><br><a href='./newempreg.htm'>ClickHere</a>");
	}
	else
	  {

   PreparedStatement ps=con.prepareStatement("INSERT INTO EMPREG VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("after html form reading values");
	ps.setString(1,nid);
    ps.setString(2,pass);
    ps.setString(3,fname);
    ps.setString(4,mname);
    ps.setString(5,lname);
	
    ps.setString(6,psadd);
    ps.setString(7,pmadd);
    ps.setString(8,pin);
	 ps.setString(9,city);
    ps.setString(10,state);
	ps.setString(11,country);
    ps.setString(12,cphoff);
    ps.setString(13,offex);
    ps.setString(14,cphres);
    ps.setString(15,passno);
	ps.setString(16,cobj);
	ps.setString(17,mph);
	ps.setString(18,gend);


   
    int i=ps.executeUpdate();
	if(i==1)
    res.sendRedirect("./sucesspersonaldetails.jsp");
	else
	res.sendRedirect("./newempreg.htm");
	
	ps.close();
	stmt.close();
	con.close(); 
	  }
  }
  catch(Exception e)
  {
   e.printStackTrace();
  }
 
  out.close();
 }
}

 	
   







