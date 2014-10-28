<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,databaseconnection1.*,databaseconnection2.*,databaseconnection3.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>



<%

	String uid1 = request.getQueryString();
	//String a = request.getQueryString();
	//String a3=(a2.replace("%20"," "));

	Blob file1= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		

	
	try
	{
		 con=databasecon.getconnection();

		ps = con.prepareStatement("select * from upload where uid1 ='"+uid1+"'");
		rs = ps.executeQuery();
		while(rs.next())
		{
		file1=rs.getBlob(2);
		
		}
		int len1=(int)file1.length();
		
		
		//session.setAttribute("resumeBlob1",file1);
		byte[] ba = file1.getBytes(1, (int)file1.length());
		String filename="File";
			   
			response.setContentType("application/mswords");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			
			
			os.write(ba);
			ps = con.prepareStatement("delete from upload where uid1 ='"+uid1+"'");
		int a = ps.executeUpdate();

			os.close();
	
	}
		catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}
	
	
	%>