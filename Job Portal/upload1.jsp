
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
</head>
<body>
<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
        
		String dirName =context.getRealPath("\\");
		String paramname=null;
		
		String fid=null,uid1=null,partition=null,amount=null,datafile=null;
		  File file1 = null;
		  
	    //java.util.Date now = new java.util.Date();
	    //String date=now.toString();
	    //String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	   // SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
        //String strDateNew = sdf.format(now) ;		
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("uid1"))
				{
					uid1=multi.getParameter(paramname);
				}
				
				if(paramname.equalsIgnoreCase("datafile"))
				{
					datafile=multi.getParameter(paramname);
				}
									
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			datafile = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\"+datafile);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
          //fname=dirName+"\\"+datafile;
			session.setAttribute("id",fid);	
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO upload VALUES(?,?)");
			
       	
       			
       			ps.setString(1,uid1);
					
       			ps.setString(2,datafile);
				
				
				
				
				
       if(f == 0)
			ps.setObject(2,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(2,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("success.jsp?message=success");
			}
			else
			{
				response.sendRedirect("key_manager2.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>

