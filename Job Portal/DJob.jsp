<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>Delete Jobseeker Details
<%! String exp;%>
<form action="DetailJob.jsp">
<Select name=clientid>
<%String id=(String)session.getValue("uid1");%>
  <%
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from empreg where USERID='"+id+"'");
while(rs.next())
{
String cid=rs.getString(1);
%>
<option value=<%=cid%>><%=cid%></option>
<%}%>
</tr></table>
<center><br><br><input type="submit" value="Submit">&nbsp;&nbsp;<input type="Reset" value="Reset">
</form>
