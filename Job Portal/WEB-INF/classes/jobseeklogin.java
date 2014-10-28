import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class jobseeklogin extends HttpServlet
 {    Connection con;
      Statement stmt;
      ResultSet rs;
  public void service(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
    {
      resp.setContentType("text/html");
      PrintWriter out=resp.getWriter();
HttpSession ses=req.getSession(true);
        try{

               Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","root");
            System.out.println("Connection established");

     System.out.println("this is jobseek login after connection");          
               stmt=con.createStatement();
               String user=req.getParameter("user").trim();
               String pass=req.getParameter("password").trim();
            
                 rs=stmt.executeQuery("SELECT USERID,PASS FROM EMPREG WHERE USERID='"+user+"' and PASS=+'"+pass+"'");
    

     if(rs.next())
                  {
		 
					System.out.println("befor if"+user);
           	    String uid=req.getParameter("user");
	  				ses.putValue("uid1",uid);      
					resp.sendRedirect("./exeuser1all.htm");
           
				 }
                else{					System.out.println("faile"+user);
                     resp.sendRedirect("./lfail.htm");
                    }
                
             }catch(Exception e){}
      }//service
 }//class
                
            
               
