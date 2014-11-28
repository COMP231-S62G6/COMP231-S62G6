<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>JobSeeker Details
<%! String exp;%>
  <%
//Statement stmt1;
  exp=request.getParameter("exp");
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from applyjob");
//ResultSet rs1=stmt1.executeQuery("select * from education");
//ResultSet rs2=stmt2.executeQuery("select * from skills");
%>
<p>&nbsp;</p>

<hr>
<table width=100%  cellpadding="5" border=1>
  <tr> 
    <td><Strong><font color=blue>User Id </td>
    <td><Strong><font color=blue>Gender</td>
    <td ><Strong><font color=blue>Skills</td>
    <td><Strong><font color=blue>Expereince</td>
	
	
	<%
	while(rs.next())
{%>

  <tr > 
    <td><Strong><%=rs.getString(1)%></td>
    <td><Strong><%=rs.getString(2)%></td>
	<td><Strong><%=rs.getString(3)%></td>
	 <td><Strong><%=rs.getString(4)%></td>
	
  </tr>
  <%}%>
</table>



</body>
</html>
