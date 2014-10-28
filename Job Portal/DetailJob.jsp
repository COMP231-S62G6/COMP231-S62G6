<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>
<%! String exp;%>
  <%
String cid=request.getParameter("clientid");
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
PreparedStatement ps=con.prepareStatement("delete from empreg where userid=?");
ps.setString(1,cid);
int i=ps.executeUpdate();
System.out.println("1"+i);

PreparedStatement ps1=con.prepareStatement("delete from education where userid=?");
ps1.setString(1,cid);
int j=ps1.executeUpdate();
System.out.println("2"+j);

PreparedStatement ps2=con.prepareStatement("delete from experience where userid=?");
ps2.setString(1,cid);
int k=ps2.executeUpdate();
System.out.println("3"+k);
PreparedStatement ps3=con.prepareStatement("delete from projects where userid=?");
ps3.setString(1,cid);
int l=ps3.executeUpdate();
System.out.println("4"+l);
PreparedStatement ps4=con.prepareStatement("delete from skills where userid=?");
ps4.setString(1,cid);
int m=ps4.executeUpdate();
System.out.println("5"+m);
PreparedStatement ps5=con.prepareStatement("delete from resume where userid=?");
ps5.setString(1,cid);
int n=ps5.executeUpdate();
System.out.println("6"+n);
if(i>=1&&j>=1&&k>=1&&l>=1&&m>=1&&n>=1)
{System.out.println("7");
	
	con.commit();
	%>
	<center><h2>User Details  has deleted </center>
<%
}
	else if(i>=1&&j>=1&&k>=1&&n>=1)
	{
		
	%>
<center><h2>User Details  has deleted </center>
	<%}

		%>
		