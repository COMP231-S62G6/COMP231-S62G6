<%@ page import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>

</head>

<body bgcolor="#aaddee"><center><Strong><font color=blue><h2>Client Details
<%! String exp;%>
  <%
  exp=request.getParameter("exp");
Class.forName("com.mysql.jdbc.Driver");
			System.out.println("hi1");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","");
            System.out.println("Connection established");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from client");
%>
<p>&nbsp;</p>

<hr>
<table width=100%  cellpadding="5" border=1>
  <tr> 
    <td><Strong><font color=blue>Client Id </td>
    <td><Strong><font color=blue>Client Name</td>
    <td><Strong><font color=blue>Address</td>
    <td><Strong><font color=blue>City</td>
    <td ><Strong><font color=blue>State</td>
    <td><Strong><font color=blue>Nation</td>
	<td><Strong><font color=blue>No.of Branch</td>
	<td><Strong><font color=blue>Contact Phno</td>
	<td><Strong><font color=blue>Website</td>
	<%
	while(rs.next())
{%>

  <tr > 
    <td><Strong><%=rs.getString(1)%></td>
    <td><Strong><%=rs.getString(2)%></td>
    <td><Strong><%=rs.getString(3)%></td>
	<td><Strong><%=rs.getString(4)%></td>
	<td><Strong><%=rs.getString(5)%></td>
	 <td><Strong><%=rs.getString(6)%></td>
	 <td><Strong><%=rs.getString(7)%></td>
	<td><Strong><%=rs.getString(9)%></td>
	<td><Strong><%=rs.getString(13)%></td>

    
  </tr>
  <%}%>
</table>


</body>
</html>
