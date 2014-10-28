import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class newuserresume extends HttpServlet
{
    PrintWriter out;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	public void service(HttpServletRequest hreq,HttpServletResponse hres) throws ServletException,IOException
    {
	   hres.setContentType("text/html");
	   out=hres.getWriter();
	   try{
		    Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
	Statement stmt=con.createStatement();
			PreparedStatement pstmt=con.prepareStatement("insert into resume values(?,?)");
		    String userid=hreq.getParameter("uid");
			pstmt.setString(1,userid);
		    File f=new File(hreq.getParameter("file"));
			System.out.println("shd:"+f.length());
		    FileInputStream fis=new FileInputStream(f);
		    pstmt.setBinaryStream(2,fis,(int)f.length());
			System.out.println("userid is:"+userid);
			System.out.println("file is:"+fis);
            System.out.println("Before Inserting into database:");
			int i=pstmt.executeUpdate();
			if(i==1)
		   {
            System.out.println("after Inserting into database:");
			hres.sendRedirect("./success.jsp");
		   }
		  else
		   {
			  out.println("fail");
		   }
			pstmt.close();
			stmt.close();
			con.close();
	   }
	   catch(Exception e)
		{
		   e.printStackTrace();
		}
		
	}
}


 




