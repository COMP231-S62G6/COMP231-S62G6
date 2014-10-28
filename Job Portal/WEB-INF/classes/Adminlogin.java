import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class Adminlogin extends HttpServlet
 
{
	  Connection con;
      Statement stmt;
      ResultSet rs;
  public void service(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
      resp.setContentType("text/html");
      PrintWriter out=resp.getWriter();
		HttpSession ses=req.getSession(true);
        try{

               new com.mysql.jdbc.Driver;
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");

        
               stmt=con.createStatement();
               String user=req.getParameter("name").trim();
               String pass=req.getParameter("pass").trim();
			   rs=stmt.executeQuery("SELECT * FROM adminlogin WHERE USERNAME='"+user+"' and PASSWORD=+'"+pass+"'");
       	   if(rs.next())
		   {
			   resp.sendRedirect("./adminframetop.htm");

			}
			else{
				resp.sendRedirect("./AdminLogin.jsp");
			}
	   }//try
	   catch(Exception e){
		   e.printStackTrace();
	   }
	   
	}//service
}
