<html>
<body><center>
<%@ page import="java.sql.*"%>
<% 
    String hqul=request.getParameter("hqul");
	String pg=request.getParameter("pg");
	String grad=request.getParameter("grad");
	String inter=request.getParameter("inter");
    String ssc=request.getParameter("ssc");
	String interctno=request.getParameter("interctno");
    String sscctno=request.getParameter("sscctno");
	String other1=request.getParameter("other1");
   String othercert=request.getParameter("othercert");
   String uid=request.getParameter("uid");

String pun=request.getParameter("pun");
   String gun=request.getParameter("gun");
   String gper=request.getParameter("gper");
      String pgper=request.getParameter("pgper");
   


   try{
				
				Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
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
	response.sendRedirect("./sucesseducationaldetails1.jsp");
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
	response.sendRedirect("./sucesseducationaldetails1.jsp");
	}
	  }
  }
  catch(Exception e)
  {
   e.printStackTrace();
  }
 
	  %>
	  
	  </center>
	  </body>
	  </html>