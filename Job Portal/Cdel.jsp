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
PreparedStatement ps=con.prepareStatement("delete from client where clientid=?");
ps.setString(1,cid);
int i=ps.executeUpdate();
if(i==1)
{
	%>
	<center><h2>Client has deleted </center>
<%
}
	else
	{
		%>
		<center><h2>There is some problem in your system
<%
	}%>