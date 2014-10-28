<html>
<body><center>
<%@ page import="java.sql.*"%>
<% 
    String userid=request.getParameter("userid");
	  session.setAttribute("uid1",userid);
   String pass=request.getParameter("pass");
   String fname=request.getParameter("fname");
   String mname=request.getParameter("mname");
      String lname=request.getParameter("lname");

   String gend=request.getParameter("gend");
   String pmadd=request.getParameter("pmadd");
   String psadd=request.getParameter("psadd");
//***************************************
String city=request.getParameter("city");
   String state=request.getParameter("state");
   String country=request.getParameter("country");
   String cphoff=request.getParameter("cphoff");
      String offex=request.getParameter("offex");

   String cphres=request.getParameter("cphres");
   String mph=request.getParameter("mph");
   //String passno=request.getParameter("passno");
	String cobj=request.getParameter("cobj");
	String pin=request.getParameter("pin");


   try{
				
				Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
   Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from empreg where userid='"+userid+"'");
   if(rs.next())
	{
		out.println("<body color=#9999CC><center><br><br>Your UserId is existing .so Please try again");
		out.println("<br><br><a href='./newempreg.htm'>ClickHere</a>");
	}
	else
	  {	
System.out.println("hi vijay");
  String Query="INSERT INTO empreg (`USERID` ,`PASS` ,`FNAME` ,`MNAME` ,`LNAME` ,`PRSTADD` ,`PARTADD` ,`PIN` ,`CITY` ,`STATE` ,`COUNTRY` ,`CTNTNOOFICE` ,`EXTNO` ,`CTNTNORESNO`,`CARRABJ` ,`MOBILENO` ,`GENDER`)VALUES ('" + userid + "','" + pass + "','" + fname + "','" + mname + "','" + lname + "','" + psadd + "','"+ pmadd + "','" + pin + "','" + city + "','" + state + "','" + country + "','" + cphoff + "','"+ offex + "','" + cphres + "','" + cobj + "','" + mph + "','" + gend + "')";
System.out.println("[QUERY]"+Query);
                int result = stmt.executeUpdate(Query);

System.out.println("[QUERY]"+result);
System.out.println("after html form reading values");
	/*ps.setString(1,userid);
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
    //ps.setString(15,passno);
	ps.setString(15,cobj);
	ps.setString(16,mph);
	ps.setString(17,gend);


   
    int i=ps.executeUpdate();*/
	if(result==1)
    response.sendRedirect("./sucesspersonaldetails.jsp");
	else
	response.sendRedirect("./newempreg.htm");

	
	stmt.close();
	con.close(); 
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